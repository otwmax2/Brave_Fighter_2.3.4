package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class ar {
    public static String a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        int i = context.getResources().getConfiguration().uiMode & 15;
        int i2 = context.getResources().getConfiguration().screenLayout & 15;
        if (packageManager.hasSystemFeature("org.chromium.arc.device_management") || ((Build.BRAND != null && Build.BRAND.equals("chromium") && Build.MANUFACTURER.equals("chromium")) || (Build.DEVICE != null && Build.DEVICE.matches(".+_cheets")))) {
            return "chromebook";
        }
        if (packageManager.hasSystemFeature("android.hardware.type.watch") || i == 6) {
            return "watch";
        }
        if (packageManager.hasSystemFeature("android.hardware.type.television") || i == 4) {
            return "tv";
        }
        if ((Build.MANUFACTURER != null && Build.MANUFACTURER.equalsIgnoreCase("Amazon")) || i2 == 4) {
            return "tablet";
        }
        return "phone";
    }
}
