package com.vungle.publisher;

import android.os.Handler;
import android.os.Looper;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class bz {
    private final Handler a = new Handler(Looper.getMainLooper());

    @Inject
    public bz() {
    }

    public void a(Runnable runnable) {
        this.a.post(runnable);
    }

    public void a(Runnable runnable, long j) {
        this.a.postDelayed(runnable, j);
    }

    public void a() {
        this.a.removeCallbacksAndMessages(null);
    }
}
