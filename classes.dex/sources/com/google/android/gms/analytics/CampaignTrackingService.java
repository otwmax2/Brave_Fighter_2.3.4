package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.support.annotation.RequiresPermission;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.zzaf;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzvz;

/* JADX INFO: loaded from: classes.dex */
public class CampaignTrackingService extends Service {
    private static Boolean zzcsb;
    private Handler mHandler;

    private Handler getHandler() {
        Handler handler = this.mHandler;
        if (handler != null) {
            return handler;
        }
        Handler handler2 = new Handler(getMainLooper());
        this.mHandler = handler2;
        return handler2;
    }

    public static boolean zzaw(Context context) {
        zzab.zzaa(context);
        if (zzcsb != null) {
            return zzcsb.booleanValue();
        }
        boolean zZzk = zzao.zzk(context, "com.google.android.gms.analytics.CampaignTrackingService");
        zzcsb = Boolean.valueOf(zZzk);
        return zZzk;
    }

    private void zzvw() {
        try {
            synchronized (CampaignTrackingReceiver.zzamp) {
                zzvz zzvzVar = CampaignTrackingReceiver.zzcrz;
                if (zzvzVar != null && zzvzVar.isHeld()) {
                    zzvzVar.release();
                }
            }
        } catch (SecurityException e) {
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public void onCreate() {
        super.onCreate();
        com.google.android.gms.analytics.internal.zzf.zzay(this).zzyx().zzei("CampaignTrackingService is starting up");
    }

    @Override // android.app.Service
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public void onDestroy() {
        com.google.android.gms.analytics.internal.zzf.zzay(this).zzyx().zzei("CampaignTrackingService is shutting down");
        super.onDestroy();
    }

    @Override // android.app.Service
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public int onStartCommand(Intent intent, int i, final int i2) {
        zzvw();
        com.google.android.gms.analytics.internal.zzf zzfVarZzay = com.google.android.gms.analytics.internal.zzf.zzay(this);
        final zzaf zzafVarZzyx = zzfVarZzay.zzyx();
        String stringExtra = null;
        if (zzfVarZzay.zzyy().zzabc()) {
            zzafVarZzyx.zzem("Unexpected installation campaign (package side)");
        } else {
            stringExtra = intent.getStringExtra("referrer");
        }
        final Handler handler = getHandler();
        if (TextUtils.isEmpty(stringExtra)) {
            if (!zzfVarZzay.zzyy().zzabc()) {
                zzafVarZzyx.zzel("No campaign found on com.android.vending.INSTALL_REFERRER \"referrer\" extra");
            }
            zzfVarZzay.zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.CampaignTrackingService.1
                @Override // java.lang.Runnable
                public void run() {
                    CampaignTrackingService.this.zza(zzafVarZzyx, handler, i2);
                }
            });
        } else {
            int iZzabg = zzfVarZzay.zzyy().zzabg();
            if (stringExtra.length() > iZzabg) {
                zzafVarZzyx.zzc("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(stringExtra.length()), Integer.valueOf(iZzabg));
                stringExtra = stringExtra.substring(0, iZzabg);
            }
            zzafVarZzyx.zza("CampaignTrackingService called. startId, campaign", Integer.valueOf(i2), stringExtra);
            zzfVarZzay.zzwd().zza(stringExtra, new Runnable() { // from class: com.google.android.gms.analytics.CampaignTrackingService.2
                @Override // java.lang.Runnable
                public void run() {
                    CampaignTrackingService.this.zza(zzafVarZzyx, handler, i2);
                }
            });
        }
        return 2;
    }

    protected void zza(final zzaf zzafVar, Handler handler, final int i) {
        handler.post(new Runnable() { // from class: com.google.android.gms.analytics.CampaignTrackingService.3
            @Override // java.lang.Runnable
            public void run() {
                boolean zStopSelfResult = CampaignTrackingService.this.stopSelfResult(i);
                if (zStopSelfResult) {
                    zzafVar.zza("Install campaign broadcast processed", Boolean.valueOf(zStopSelfResult));
                }
            }
        });
    }
}
