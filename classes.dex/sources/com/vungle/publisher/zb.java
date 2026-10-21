package com.vungle.publisher;

import android.text.TextUtils;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class zb {
    public static String a(Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(th.getClass().getName());
        String message = th.getMessage();
        if (!TextUtils.isEmpty(message)) {
            sb.append(':').append(' ').append(message);
        }
        return sb.toString();
    }
}
