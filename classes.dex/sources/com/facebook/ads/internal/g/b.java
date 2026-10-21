package com.facebook.ads.internal.g;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.facebook.ads.internal.q.a.e;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static final String a = Build.VERSION.RELEASE;
    private final Context b;

    public b(Context context) {
        this.b = context.getApplicationContext();
    }

    public String a() {
        return (Build.MANUFACTURER == null || Build.MANUFACTURER.length() <= 0) ? "" : Build.MANUFACTURER;
    }

    public String b() {
        return (Build.MODEL == null || Build.MODEL.length() <= 0) ? "" : Build.MODEL;
    }

    public String c() {
        String networkOperatorName;
        TelephonyManager telephonyManager = (TelephonyManager) this.b.getSystemService("phone");
        return (telephonyManager == null || (networkOperatorName = telephonyManager.getNetworkOperatorName()) == null || networkOperatorName.length() <= 0) ? "" : networkOperatorName;
    }

    public String d() {
        try {
            CharSequence applicationLabel = this.b.getPackageManager().getApplicationLabel(this.b.getPackageManager().getApplicationInfo(f(), 0));
            if (applicationLabel != null && applicationLabel.length() > 0) {
                return applicationLabel.toString();
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return "";
    }

    public String e() {
        String installerPackageName;
        try {
            String strF = f();
            if (strF != null && strF.length() >= 0 && (installerPackageName = this.b.getPackageManager().getInstallerPackageName(strF)) != null) {
                if (installerPackageName.length() > 0) {
                    return installerPackageName;
                }
            }
        } catch (Exception e) {
        }
        return "";
    }

    public String f() {
        PendingIntent activity = PendingIntent.getActivity(this.b, 0, new Intent(), 0);
        return Build.VERSION.SDK_INT >= 17 ? activity.getCreatorPackage() : activity.getTargetPackage();
    }

    public String g() {
        try {
            return this.b.getPackageManager().getPackageInfo(f(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public int h() {
        try {
            return this.b.getPackageManager().getPackageInfo(f(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public boolean i() {
        return this.b.checkCallingOrSelfPermission("android.permission.BIND_ACCESSIBILITY_SERVICE") == 0;
    }

    public int j() {
        return e.b(this.b);
    }
}
