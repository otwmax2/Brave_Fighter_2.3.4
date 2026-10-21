package com.google.android.gms.gcm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.util.Base64;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class GcmReceiver extends WakefulBroadcastReceiver {
    private static String aaG = "gcm.googleapis.com/refresh";

    private void zzf(Context context, Intent intent) {
        ComponentName componentNameStartService;
        if (isOrderedBroadcast()) {
            setResultCode(500);
        }
        zzg(context, intent);
        try {
            if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                componentNameStartService = startWakefulService(context, intent);
            } else {
                componentNameStartService = context.startService(intent);
                Log.d("GcmReceiver", "Missing wake lock permission, service start may be delayed");
            }
            if (componentNameStartService != null) {
                if (isOrderedBroadcast()) {
                    setResultCode(-1);
                }
            } else {
                Log.e("GcmReceiver", "Error while delivering the message: ServiceIntent not found.");
                if (isOrderedBroadcast()) {
                    setResultCode(404);
                }
            }
        } catch (SecurityException e) {
            Log.e("GcmReceiver", "Error while delivering the message to the serviceIntent", e);
            if (isOrderedBroadcast()) {
                setResultCode(401);
            }
        }
    }

    private void zzg(Context context, Intent intent) {
        ResolveInfo resolveInfoResolveService = context.getPackageManager().resolveService(intent, 0);
        if (resolveInfoResolveService == null || resolveInfoResolveService.serviceInfo == null) {
            Log.e("GcmReceiver", "Failed to resolve target intent service, skipping classname enforcement");
            return;
        }
        ServiceInfo serviceInfo = resolveInfoResolveService.serviceInfo;
        if (!context.getPackageName().equals(serviceInfo.packageName) || serviceInfo.name == null) {
            String strValueOf = String.valueOf(serviceInfo.packageName);
            String strValueOf2 = String.valueOf(serviceInfo.name);
            Log.e("GcmReceiver", new StringBuilder(String.valueOf(strValueOf).length() + 94 + String.valueOf(strValueOf2).length()).append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ").append(strValueOf).append("/").append(strValueOf2).toString());
            return;
        }
        String strConcat = serviceInfo.name;
        if (strConcat.startsWith(".")) {
            String strValueOf3 = String.valueOf(context.getPackageName());
            String strValueOf4 = String.valueOf(strConcat);
            strConcat = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
        }
        if (Log.isLoggable("GcmReceiver", 3)) {
            String strValueOf5 = String.valueOf(strConcat);
            Log.d("GcmReceiver", strValueOf5.length() != 0 ? "Restricting intent to a specific service: ".concat(strValueOf5) : new String("Restricting intent to a specific service: "));
        }
        intent.setClassName(context.getPackageName(), strConcat);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (Build.VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        String stringExtra = intent.getStringExtra("from");
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction()) || "google.com/iid".equals(stringExtra) || aaG.equals(stringExtra)) {
            intent.setAction("com.google.android.gms.iid.InstanceID");
        }
        String stringExtra2 = intent.getStringExtra("gcm.rawData64");
        if (stringExtra2 != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra2, 0));
            intent.removeExtra("gcm.rawData64");
        }
        if ("com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            zze(context, intent);
        } else {
            zzf(context, intent);
        }
        if (isOrderedBroadcast() && getResultCode() == 0) {
            setResultCode(-1);
        }
    }

    public void zze(Context context, Intent intent) {
        zzf(context, intent);
    }
}
