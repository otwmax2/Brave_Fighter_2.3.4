package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.RequiresPermission;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.zzaf;
import com.google.android.gms.analytics.internal.zzao;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzvz;

/* JADX INFO: loaded from: classes.dex */
public class CampaignTrackingReceiver extends BroadcastReceiver {
    static Object zzamp = new Object();
    static zzvz zzcrz;
    static Boolean zzcsa;

    public static boolean zzav(Context context) {
        zzab.zzaa(context);
        if (zzcsa != null) {
            return zzcsa.booleanValue();
        }
        boolean zZzb = zzao.zzb(context, "com.google.android.gms.analytics.CampaignTrackingReceiver", true);
        zzcsa = Boolean.valueOf(zZzb);
        return zZzb;
    }

    @Override // android.content.BroadcastReceiver
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public void onReceive(Context context, Intent intent) {
        com.google.android.gms.analytics.internal.zzf zzfVarZzay = com.google.android.gms.analytics.internal.zzf.zzay(context);
        zzaf zzafVarZzyx = zzfVarZzay.zzyx();
        if (intent == null) {
            zzafVarZzyx.zzel("CampaignTrackingReceiver received null intent");
            return;
        }
        String stringExtra = intent.getStringExtra("referrer");
        String action = intent.getAction();
        zzafVarZzyx.zza("CampaignTrackingReceiver received", action);
        if (!"com.android.vending.INSTALL_REFERRER".equals(action) || TextUtils.isEmpty(stringExtra)) {
            zzafVarZzyx.zzel("CampaignTrackingReceiver received unexpected intent without referrer extra");
            return;
        }
        boolean zZzaw = CampaignTrackingService.zzaw(context);
        if (!zZzaw) {
            zzafVarZzyx.zzel("CampaignTrackingService not registered or disabled. Installation tracking not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
        zzi(context, stringExtra);
        if (zzfVarZzay.zzyy().zzabc()) {
            zzafVarZzyx.zzem("Received unexpected installation campaign on package side");
            return;
        }
        Class<? extends CampaignTrackingService> clsZzvv = zzvv();
        zzab.zzaa(clsZzvv);
        Intent intent2 = new Intent(context, clsZzvv);
        intent2.putExtra("referrer", stringExtra);
        synchronized (zzamp) {
            context.startService(intent2);
            if (zZzaw) {
                try {
                    if (zzcrz == null) {
                        zzcrz = new zzvz(context, 1, "Analytics campaign WakeLock");
                        zzcrz.setReferenceCounted(false);
                    }
                    zzcrz.acquire(1000L);
                } catch (SecurityException e) {
                    zzafVarZzyx.zzel("CampaignTrackingService service at risk of not starting. For more reliable installation campaign reports, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
                }
            }
        }
    }

    protected void zzi(Context context, String str) {
    }

    protected Class<? extends CampaignTrackingService> zzvv() {
        return CampaignTrackingService.class;
    }
}
