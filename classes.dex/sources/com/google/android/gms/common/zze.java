package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.R;
import com.google.android.gms.common.internal.zzz;
import com.google.android.gms.common.util.zzi;
import com.google.android.gms.common.util.zzl;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.common.util.zzy;
import com.google.android.gms.common.zzd;
import com.google.android.gms.internal.zzrt;
import com.google.android.gms.internal.zzru;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.io.InputStream;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class zze {

    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = zzank();
    public static boolean rf = false;
    public static boolean rg = false;
    static boolean rh = false;
    private static String ri = null;
    private static int rj = 0;
    private static boolean rk = false;
    static final AtomicBoolean rl = new AtomicBoolean();
    private static final AtomicBoolean rm = new AtomicBoolean();

    zze() {
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return zzc.zzand().getErrorResolutionPendingIntent(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.getStatusString(i);
    }

    @Deprecated
    public static String getOpenSourceSoftwareLicenseInfo(Context context) {
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(new Uri.Builder().scheme("android.resource").authority("com.google.android.gms").appendPath("raw").appendPath("third_party_licenses").build());
            try {
                String next = new Scanner(inputStreamOpenInputStream).useDelimiter("\\A").next();
                if (inputStreamOpenInputStream == null) {
                    return next;
                }
                inputStreamOpenInputStream.close();
                return next;
            } catch (NoSuchElementException e) {
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                return null;
            } catch (Throwable th) {
                if (inputStreamOpenInputStream != null) {
                    inputStreamOpenInputStream.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            return null;
        }
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            zzbs(context);
        }
        boolean z = !zzi.zzck(context);
        PackageInfo packageInfo = null;
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("GooglePlayServicesUtil", "Google Play Store is missing.");
                return 9;
            }
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            zzf zzfVarZzbz = zzf.zzbz(context);
            if (z) {
                zzd.zza zzaVarZza = zzfVarZzbz.zza(packageInfo, zzd.C0081zzd.re);
                if (zzaVarZza == null) {
                    Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
                    return 9;
                }
                if (zzfVarZzbz.zza(packageInfo2, zzaVarZza) == null) {
                    Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                    return 9;
                }
            } else if (zzfVarZzbz.zza(packageInfo2, zzd.C0081zzd.re) == null) {
                Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                return 9;
            }
            if (zzl.zzgw(packageInfo2.versionCode) < zzl.zzgw(GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                Log.w("GooglePlayServicesUtil", new StringBuilder(77).append("Google Play services out of date.  Requires ").append(GOOGLE_PLAY_SERVICES_VERSION_CODE).append(" but found ").append(packageInfo2.versionCode).toString());
                return 2;
            }
            ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
            if (applicationInfo == null) {
                try {
                    applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e2);
                    return 1;
                }
            }
            return !applicationInfo.enabled ? 3 : 0;
        } catch (PackageManager.NameNotFoundException e3) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 1;
        }
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 9:
                return true;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            default:
                return false;
        }
    }

    private static int zzank() {
        return com.google.android.gms.common.internal.zze.xB;
    }

    @Deprecated
    public static boolean zzanl() {
        return "user".equals(Build.TYPE);
    }

    @TargetApi(19)
    @Deprecated
    public static boolean zzb(Context context, int i, String str) {
        return zzy.zzb(context, i, str);
    }

    @Deprecated
    public static void zzbb(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int iIsGooglePlayServicesAvailable = zzc.zzand().isGooglePlayServicesAvailable(context);
        if (iIsGooglePlayServicesAvailable != 0) {
            Intent intentZza = zzc.zzand().zza(context, iIsGooglePlayServicesAvailable, "e");
            Log.e("GooglePlayServicesUtil", new StringBuilder(57).append("GooglePlayServices not available due to error ").append(iIsGooglePlayServicesAvailable).toString());
            if (intentZza != null) {
                throw new GooglePlayServicesRepairableException(iIsGooglePlayServicesAvailable, "Google Play Services not available", intentZza);
            }
            throw new GooglePlayServicesNotAvailableException(iIsGooglePlayServicesAvailable);
        }
    }

    @Deprecated
    public static int zzbn(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @Deprecated
    public static void zzbp(Context context) {
        if (rl.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null) {
                notificationManager.cancel(10436);
            }
        } catch (SecurityException e) {
        }
    }

    private static void zzbs(Context context) {
        if (rm.get()) {
            return;
        }
        zzbx(context);
        if (rj == 0) {
            throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
        }
        if (rj != GOOGLE_PLAY_SERVICES_VERSION_CODE) {
            int i = GOOGLE_PLAY_SERVICES_VERSION_CODE;
            int i2 = rj;
            String strValueOf = String.valueOf("com.google.android.gms.version");
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + IronSourceConstants.INTERSTITIAL_AD_REWARDED).append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ").append(i).append(" but found ").append(i2).append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"").append(strValueOf).append("\" android:value=\"@integer/google_play_services_version\" />").toString());
        }
    }

    public static boolean zzbt(Context context) {
        zzbx(context);
        return rh;
    }

    public static boolean zzbu(Context context) {
        return zzbt(context) || !zzanl();
    }

    public static String zzbv(Context context) {
        ApplicationInfo applicationInfo;
        String str = context.getApplicationInfo().name;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        try {
            applicationInfo = zzru.zzcq(context).getApplicationInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        return applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo).toString() : packageName;
    }

    @TargetApi(18)
    public static boolean zzbw(Context context) {
        Bundle applicationRestrictions;
        return zzs.zzavp() && (applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName())) != null && ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(applicationRestrictions.getString("restricted_profile"));
    }

    private static void zzbx(Context context) {
        if (rk) {
            return;
        }
        zzby(context);
    }

    private static void zzby(Context context) {
        try {
            ri = context.getPackageName();
            zzrt zzrtVarZzcq = zzru.zzcq(context);
            rj = zzz.zzcg(context);
            PackageInfo packageInfo = zzrtVarZzcq.getPackageInfo("com.google.android.gms", 64);
            if (packageInfo == null || zzf.zzbz(context).zza(packageInfo, zzd.C0081zzd.re[1]) == null) {
                rh = false;
            } else {
                rh = true;
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e);
        } finally {
            rk = true;
        }
    }

    @Deprecated
    public static boolean zzc(Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return zzm(context, "com.google.android.gms");
        }
        return false;
    }

    @Deprecated
    public static boolean zzd(Context context, int i) {
        if (i == 9) {
            return zzm(context, "com.android.vending");
        }
        return false;
    }

    @Deprecated
    public static boolean zze(Context context, int i) {
        return zzy.zze(context, i);
    }

    @Deprecated
    public static Intent zzfb(int i) {
        return zzc.zzand().zza(null, i, null);
    }

    static boolean zzfc(int i) {
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 18:
            case 42:
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0056  */
    @android.annotation.TargetApi(21)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean zzm(android.content.Context r4, java.lang.String r5) {
        /*
            r1 = 1
            r2 = 0
            java.lang.String r0 = "com.google.android.gms"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L11
            boolean r0 = com.google.android.gms.common.util.zzd.zzabc()
            if (r0 == 0) goto L11
        L10:
            return r2
        L11:
            boolean r0 = com.google.android.gms.common.util.zzs.zzavs()
            if (r0 == 0) goto L3f
            android.content.pm.PackageManager r0 = r4.getPackageManager()
            android.content.pm.PackageInstaller r0 = r0.getPackageInstaller()
            java.util.List r0 = r0.getAllSessions()
            java.util.Iterator r3 = r0.iterator()
        L27:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L3f
            java.lang.Object r0 = r3.next()
            android.content.pm.PackageInstaller$SessionInfo r0 = (android.content.pm.PackageInstaller.SessionInfo) r0
            java.lang.String r0 = r0.getAppPackageName()
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L27
            r2 = r1
            goto L10
        L3f:
            android.content.pm.PackageManager r0 = r4.getPackageManager()
            r3 = 8192(0x2000, float:1.148E-41)
            android.content.pm.ApplicationInfo r0 = r0.getApplicationInfo(r5, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L58
            boolean r0 = r0.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L58
            if (r0 == 0) goto L56
            boolean r0 = zzbw(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L58
            if (r0 != 0) goto L56
            r0 = r1
        L54:
            r2 = r0
            goto L10
        L56:
            r0 = r2
            goto L54
        L58:
            r0 = move-exception
            goto L10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.zze.zzm(android.content.Context, java.lang.String):boolean");
    }
}
