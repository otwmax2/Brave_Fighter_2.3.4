package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.internal.zzvz;

/* JADX INFO: loaded from: classes.dex */
public final class zzak {
    private static Boolean zzcsb;
    private final zza ar;
    private final Context mContext;
    private final Handler mHandler;

    public interface zza {
        boolean callServiceStopSelfResult(int i);

        Context getContext();
    }

    public zzak(zza zzaVar) {
        this.mContext = zzaVar.getContext();
        com.google.android.gms.common.internal.zzab.zzaa(this.mContext);
        this.ar = zzaVar;
        this.mHandler = new Handler();
    }

    public static boolean zzaw(Context context) {
        com.google.android.gms.common.internal.zzab.zzaa(context);
        if (zzcsb != null) {
            return zzcsb.booleanValue();
        }
        boolean zZzk = zzao.zzk(context, "com.google.android.gms.analytics.AnalyticsService");
        zzcsb = Boolean.valueOf(zZzk);
        return zZzk;
    }

    private void zzvw() {
        try {
            synchronized (zzaj.zzamp) {
                zzvz zzvzVar = zzaj.zzcrz;
                if (zzvzVar != null && zzvzVar.isHeld()) {
                    zzvzVar.release();
                }
            }
        } catch (SecurityException e) {
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public void onCreate() {
        zzf zzfVarZzay = zzf.zzay(this.mContext);
        zzaf zzafVarZzyx = zzfVarZzay.zzyx();
        if (zzfVarZzay.zzyy().zzabc()) {
            zzafVarZzyx.zzei("Device AnalyticsService is starting up");
        } else {
            zzafVarZzyx.zzei("Local AnalyticsService is starting up");
        }
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public void onDestroy() {
        zzf zzfVarZzay = zzf.zzay(this.mContext);
        zzaf zzafVarZzyx = zzfVarZzay.zzyx();
        if (zzfVarZzay.zzyy().zzabc()) {
            zzafVarZzyx.zzei("Device AnalyticsService is shutting down");
        } else {
            zzafVarZzyx.zzei("Local AnalyticsService is shutting down");
        }
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public int onStartCommand(Intent intent, int i, final int i2) {
        zzvw();
        final zzf zzfVarZzay = zzf.zzay(this.mContext);
        final zzaf zzafVarZzyx = zzfVarZzay.zzyx();
        if (intent == null) {
            zzafVarZzyx.zzel("AnalyticsService started with null intent");
        } else {
            String action = intent.getAction();
            if (zzfVarZzay.zzyy().zzabc()) {
                zzafVarZzyx.zza("Device AnalyticsService called. startId, action", Integer.valueOf(i2), action);
            } else {
                zzafVarZzyx.zza("Local AnalyticsService called. startId, action", Integer.valueOf(i2), action);
            }
            if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
                zzfVarZzay.zzwd().zza(new zzw() { // from class: com.google.android.gms.analytics.internal.zzak.1
                    @Override // com.google.android.gms.analytics.internal.zzw
                    public void zzd(Throwable th) {
                        zzak.this.mHandler.post(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzak.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (zzak.this.ar.callServiceStopSelfResult(i2)) {
                                    if (zzfVarZzay.zzyy().zzabc()) {
                                        zzafVarZzyx.zzei("Device AnalyticsService processed last dispatch request");
                                    } else {
                                        zzafVarZzyx.zzei("Local AnalyticsService processed last dispatch request");
                                    }
                                }
                            }
                        });
                    }
                });
            }
        }
        return 2;
    }
}
