package com.vungle.publisher;

import com.vungle.publisher.log.Logger;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class yy {
    public static String a(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, str);
        } catch (Exception e) {
            Logger.w(Logger.CONFIG_TAG, "error getting Android system property " + str, e);
            return null;
        }
    }
}
