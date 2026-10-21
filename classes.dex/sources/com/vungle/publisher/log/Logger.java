package com.vungle.publisher.log;

import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class Logger {
    public static final String AD_TAG = "VungleAd";
    public static final String ASYNC_TAG = "VungleAsync";
    public static final String CONFIG_TAG = "VungleConfig";
    public static final String DATABASE_DUMP_TAG = "VungleDumpDatabase";
    public static final String DATABASE_TAG = "VungleDatabase";
    public static final String DATA_TAG = "VungleData";
    public static final String DEVICE_TAG = "VungleDevice";
    public static final String EVENT_TAG = "VungleEvent";
    public static final String FILE_TAG = "VungleFile";
    public static final String INJECT_TAG = "VungleInject";
    public static final String LOCATION_TAG = "VungleLocation";
    public static final String NETWORK_TAG = "VungleNetwork";
    public static final String PREPARE_TAG = "VunglePrepare";
    public static final String PROTOCOL_TAG = "VungleProtocol";
    public static final String REPORT_TAG = "VungleReport";
    public static final String VUNGLE_TAG = "Vungle";

    public static void v(String tag, String message) {
        a(2, tag, message);
    }

    public static void v(String tag, Throwable throwable) {
        a(2, tag, throwable);
    }

    public static void v(String tag, String message, Throwable throwable) {
        a(2, tag, message, throwable);
    }

    public static void d(String tag, String message) {
        a(3, tag, message);
    }

    public static void d(String tag, Throwable throwable) {
        a(3, tag, throwable);
    }

    public static void d(String tag, String message, Throwable throwable) {
        a(3, tag, message, throwable);
    }

    public static void i(String tag, String message) {
        a(4, tag, message);
    }

    public static void i(String tag, Throwable throwable) {
        a(4, tag, throwable);
    }

    public static void i(String tag, String message, Throwable throwable) {
        a(4, tag, message, throwable);
    }

    public static void w(String tag, String message) {
        a(5, tag, message);
    }

    public static void w(String tag, Throwable throwable) {
        a(5, tag, throwable);
    }

    public static void w(String tag, String message, Throwable throwable) {
        a(5, tag, message, throwable);
    }

    public static void e(String tag, String message) {
        a(6, tag, message);
    }

    public static void e(String tag, Throwable throwable) {
        a(6, tag, throwable);
    }

    public static void e(String tag, String message, Throwable throwable) {
        a(6, tag, message, throwable);
    }

    static void a(int i, String str, String str2) {
        a(i, str, str2, null);
    }

    static void a(int i, String str, Throwable th) {
        a(i, str, null, th);
    }

    static void a(int i, String str, String str2, Throwable th) {
        boolean zA = a("VungleDebug", 3);
        if ((!zA && i >= 5) || (zA && isLoggable(i))) {
            boolean z = !TextUtils.isEmpty(str2);
            boolean z2 = th != null;
            StringBuilder sb = new StringBuilder();
            if (z) {
                sb.append(str2);
            }
            if (z && z2) {
                sb.append("\n");
            }
            if (z2) {
                sb.append(Log.getStackTraceString(th));
            }
            Log.println(i, str, sb.toString());
        }
    }

    public static boolean isLoggable(int level) {
        return Log.isLoggable(VUNGLE_TAG, level);
    }

    static boolean a(String str, int i) {
        return Log.isLoggable(str, i);
    }

    private Logger() {
    }
}
