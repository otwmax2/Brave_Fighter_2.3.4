package com.google.android.gms.common.util;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public final class zzh implements zze {
    private static zzh AK;

    public static synchronized zze zzavi() {
        if (AK == null) {
            AK = new zzh();
        }
        return AK;
    }

    @Override // com.google.android.gms.common.util.zze
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.zze
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.zze
    public long nanoTime() {
        return System.nanoTime();
    }
}
