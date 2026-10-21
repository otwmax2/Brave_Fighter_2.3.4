package com.facebook.ads.internal.q.a;

import android.app.ActivityManager;
import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class g {
    public static boolean a(int i, int i2) {
        return i >= 640 && i2 >= 640;
    }

    public static boolean a(Context context) {
        try {
            ActivityManager.RunningTaskInfo runningTaskInfo = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(2).get(0);
            String str = runningTaskInfo.topActivity.getPackageName() + ".UnityPlayerActivity";
            Boolean boolValueOf = Boolean.valueOf(runningTaskInfo.topActivity.getClassName() == str || a(str));
            Log.d("IS_UNITY", Boolean.toString(boolValueOf.booleanValue()));
            return boolValueOf.booleanValue();
        } catch (Throwable th) {
            return false;
        }
    }

    public static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }
}
