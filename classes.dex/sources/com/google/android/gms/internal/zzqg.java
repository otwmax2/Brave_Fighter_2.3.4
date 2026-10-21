package com.google.android.gms.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzqg {
    private static final ExecutorService uu = Executors.newFixedThreadPool(2, new zzrr("GAC_Executor"));

    public static ExecutorService zzapz() {
        return uu;
    }
}
