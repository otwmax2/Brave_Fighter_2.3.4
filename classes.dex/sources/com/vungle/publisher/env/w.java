package com.vungle.publisher.env;

import android.os.Build;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public interface w {
    public static final boolean a = "Amazon".equals(Build.MANUFACTURER);
    public static final String b;
    public static final String c;

    static {
        b = a ? "amazon" : "android";
        c = a ? "VungleAmazon/" : "VungleDroid/";
    }
}
