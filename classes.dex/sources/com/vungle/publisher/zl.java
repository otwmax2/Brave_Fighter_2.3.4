package com.vungle.publisher;

import android.os.SystemClock;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class zl {
    @Inject
    public zl() {
    }

    public long a() {
        return System.currentTimeMillis();
    }

    public static long b() {
        return SystemClock.elapsedRealtime();
    }
}
