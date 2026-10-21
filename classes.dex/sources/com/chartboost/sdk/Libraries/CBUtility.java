package com.chartboost.sdk.Libraries;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.impl.s;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class CBUtility {
    private CBUtility() {
    }

    public static float a(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static int a(int i, Context context) {
        return Math.round(i * a(context));
    }

    public static float a(float f, Context context) {
        return a(context) * f;
    }

    public static int a() {
        boolean z;
        Context context = com.chartboost.sdk.i.m;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int rotation = defaultDisplay.getRotation();
        if (defaultDisplay.getWidth() == defaultDisplay.getHeight()) {
            z = context.getResources().getConfiguration().orientation != 2;
        } else {
            z = defaultDisplay.getWidth() < defaultDisplay.getHeight();
        }
        if (rotation != 0 && rotation != 2) {
            z = !z;
        }
        if (z) {
            switch (rotation) {
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                default:
                    return 0;
            }
        }
        switch (rotation) {
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 0;
            default:
                return 1;
        }
    }

    public static void throwProguardError(Exception ex) {
        if (ex instanceof NoSuchMethodException) {
            CBLogging.b("CBUtility", "Chartboost library error! Have you used proguard on your application? Make sure to add the line '-keep class com.chartboost.sdk.** { *; }' to your proguard config file.");
        } else if (ex != null && ex.getMessage() != null) {
            CBLogging.b("CBUtility", ex.getMessage());
        } else {
            CBLogging.b("CBUtility", "Unknown Proguard error");
        }
    }

    public static String b() {
        Object[] objArr = new Object[3];
        objArr[0] = "Chartboost-Android-SDK";
        objArr[1] = com.chartboost.sdk.i.d == null ? "" : com.chartboost.sdk.i.d;
        objArr[2] = "7.2.0";
        return String.format("%s %s %s", objArr);
    }

    public static boolean c() {
        return e() || f() || g();
    }

    public static String d() {
        SimpleDateFormat simpleDateFormat;
        if (Build.VERSION.SDK_INT >= 18) {
            simpleDateFormat = new SimpleDateFormat("ZZZZ", Locale.US);
        } else {
            simpleDateFormat = new SimpleDateFormat("'GMT'ZZZZ", Locale.US);
        }
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        return simpleDateFormat.format(new Date());
    }

    private static boolean e() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    private static boolean f() {
        return new File("/system/app/Superuser.apk").exists();
    }

    private static boolean g() {
        for (String str : new String[]{"/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su"}) {
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    public static void a(Activity activity, int i, com.chartboost.sdk.Model.e eVar) {
        if (activity != null && !b(activity)) {
            if ((i == 1 && eVar.y && eVar.C) || (i == 0 && eVar.e && eVar.h)) {
                int iA = a();
                if (iA == 0) {
                    activity.setRequestedOrientation(1);
                    return;
                }
                if (iA == 2) {
                    activity.setRequestedOrientation(9);
                } else if (iA == 1) {
                    activity.setRequestedOrientation(0);
                } else {
                    activity.setRequestedOrientation(8);
                }
            }
        }
    }

    public static void b(Activity activity, int i, com.chartboost.sdk.Model.e eVar) {
        if (activity != null && !b(activity)) {
            if ((i == 1 && eVar.y && eVar.C) || (i == 0 && eVar.e && eVar.h)) {
                activity.setRequestedOrientation(-1);
            }
        }
    }

    @TargetApi(19)
    public static void a(Activity activity) {
        if (activity == null || !com.chartboost.sdk.i.g) {
            if ((activity.getWindow().getAttributes().flags & 1024) != 0) {
                CBLogging.d("CBUtility", "Attempting to show Status and Navigation bars on a fullscreen activity. Please change your Chartboost activity theme to: \"@android:style/Theme.Translucent\"` in your Manifest file");
                return;
            }
            return;
        }
        s sVarA = s.a();
        if (sVarA.a(11)) {
            int i = 0;
            if (sVarA.a(14)) {
                i = 2;
                if (sVarA.a(16)) {
                    i = 1798;
                    if (sVarA.a(19)) {
                        i = 5894;
                    }
                }
            }
            activity.getWindow().getDecorView().setSystemUiVisibility(i);
        }
    }

    public static boolean a(Chartboost.CBFramework cBFramework) {
        return com.chartboost.sdk.i.d != null && com.chartboost.sdk.i.d == cBFramework;
    }

    public static boolean a(int i) {
        return i == 0 || i == 2;
    }

    public static boolean b(int i) {
        return i == 1 || i == 3;
    }

    public static ArrayList<File> a(File file, boolean z) {
        if (file == null) {
            return null;
        }
        ArrayList<File> arrayList = new ArrayList<>();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile() && !file2.getName().equals(".nomedia")) {
                    arrayList.add(file2);
                } else if (file2.isDirectory() && z) {
                    arrayList.addAll(a(file2, z));
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    public static boolean b(Activity activity) {
        if (activity == null || activity.getWindow() == null || activity.getWindow().getDecorView() == null || activity.getWindow().getDecorView().getBackground() == null) {
            return true;
        }
        return Build.VERSION.SDK_INT == 26 && activity.getApplicationInfo().targetSdkVersion > 26 && activity.getWindow().getDecorView().getBackground().getAlpha() != 255;
    }
}
