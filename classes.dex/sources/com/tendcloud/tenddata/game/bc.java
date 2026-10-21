package com.tendcloud.tenddata.game;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes.dex */
public final class bc {
    static final int a = 9999;
    static final int b = 101;
    static final int c = 102;
    static final int d = 103;
    static final int e = 104;
    static final int f = 105;
    private static Handler g;
    private static final HandlerThread h = new HandlerThread("PushThreadProcess");

    static {
        g = null;
        h.start();
        g = new bd(h.getLooper());
    }

    bc() {
    }

    public static final Handler a() {
        return g;
    }
}
