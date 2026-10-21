package com.facebook.ads.internal.q.a;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static boolean a = false;
    private static boolean b = false;

    @Nullable
    public static synchronized String a(String str) {
        return !a() ? null : System.getProperty("fb.e2e." + str);
    }

    public static synchronized boolean a() {
        if (!b) {
            a = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(System.getProperty("fb.running_e2e"));
            b = true;
        }
        return a;
    }

    public static synchronized boolean b(String str) {
        return !TextUtils.isEmpty(a(str));
    }
}
