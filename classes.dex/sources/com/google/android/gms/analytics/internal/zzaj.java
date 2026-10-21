package com.google.android.gms.analytics.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.internal.zzvz;

/* JADX INFO: loaded from: classes.dex */
public final class zzaj {
    static Object zzamp = new Object();
    static zzvz zzcrz;
    static Boolean zzcsa;

    public static boolean zzav(Context context) {
        com.google.android.gms.common.internal.zzab.zzaa(context);
        if (zzcsa != null) {
            return zzcsa.booleanValue();
        }
        boolean zZzb = zzao.zzb(context, "com.google.android.gms.analytics.AnalyticsReceiver", false);
        zzcsa = Boolean.valueOf(zZzb);
        return zZzb;
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public void onReceive(Context context, Intent intent) {
        zzf zzfVarZzay = zzf.zzay(context);
        zzaf zzafVarZzyx = zzfVarZzay.zzyx();
        if (intent == null) {
            zzafVarZzyx.zzel("AnalyticsReceiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (zzfVarZzay.zzyy().zzabc()) {
            zzafVarZzyx.zza("Device AnalyticsReceiver got", action);
        } else {
            zzafVarZzyx.zza("Local AnalyticsReceiver got", action);
        }
        if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
            boolean zZzaw = zzak.zzaw(context);
            Intent intent2 = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            intent2.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
            intent2.setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            synchronized (zzamp) {
                context.startService(intent2);
                if (zZzaw) {
                    try {
                        if (zzcrz == null) {
                            zzcrz = new zzvz(context, 1, "Analytics WakeLock");
                            zzcrz.setReferenceCounted(false);
                        }
                        zzcrz.acquire(1000L);
                    } catch (SecurityException e) {
                        zzafVarZzyx.zzel("Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
                    }
                }
            }
        }
    }
}
