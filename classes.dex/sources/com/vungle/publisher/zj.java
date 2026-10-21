package com.vungle.publisher;

import android.content.Context;
import android.os.Build;
import com.vungle.publisher.log.Logger;
import java.util.ArrayList;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class zj {
    public static boolean a(Context context) {
        return Build.VERSION.SDK_INT >= 19 || context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public static boolean b(Context context) {
        return d(context).length == 0;
    }

    public static boolean c(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || context.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    public static String[] d(Context context) {
        ArrayList arrayList = new ArrayList();
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") != 0) {
            arrayList.add("android.permission.INTERNET");
        }
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            arrayList.add("android.permission.ACCESS_NETWORK_STATE");
        }
        if (!a(context)) {
            arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        }
        if (arrayList.size() > 0) {
            Logger.e(Logger.VUNGLE_TAG, "Make sure to add <uses-permission> for \"" + zk.a(", ", arrayList) + "\" in your AndroidManifest.xml? AND request if revoked in the runtime, which might be possible on Android Marshmallow (API 23) and above.");
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
