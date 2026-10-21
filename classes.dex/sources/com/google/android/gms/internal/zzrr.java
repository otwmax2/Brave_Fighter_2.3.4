package com.google.android.gms.internal;

import com.ironsource.sdk.constants.Constants;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class zzrr implements ThreadFactory {
    private final String Bf;
    private final AtomicInteger Bg;
    private final ThreadFactory Bh;
    private final int mPriority;

    public zzrr(String str) {
        this(str, 0);
    }

    public zzrr(String str, int i) {
        this.Bg = new AtomicInteger();
        this.Bh = Executors.defaultThreadFactory();
        this.Bf = (String) com.google.android.gms.common.internal.zzab.zzb(str, "Name must not be null");
        this.mPriority = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.Bh.newThread(new zzrs(runnable, this.mPriority));
        String str = this.Bf;
        threadNewThread.setName(new StringBuilder(String.valueOf(str).length() + 13).append(str).append(Constants.RequestParameters.LEFT_BRACKETS).append(this.Bg.getAndIncrement()).append(Constants.RequestParameters.RIGHT_BRACKETS).toString());
        return threadNewThread;
    }
}
