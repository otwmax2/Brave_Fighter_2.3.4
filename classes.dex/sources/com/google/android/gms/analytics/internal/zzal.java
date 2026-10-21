package com.google.android.gms.analytics.internal;

/* JADX INFO: loaded from: classes.dex */
class zzal {
    private final com.google.android.gms.common.util.zze zzaoa;
    private long zzboy;

    public zzal(com.google.android.gms.common.util.zze zzeVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzeVar);
        this.zzaoa = zzeVar;
    }

    public zzal(com.google.android.gms.common.util.zze zzeVar, long j) {
        com.google.android.gms.common.internal.zzab.zzaa(zzeVar);
        this.zzaoa = zzeVar;
        this.zzboy = j;
    }

    public void clear() {
        this.zzboy = 0L;
    }

    public void start() {
        this.zzboy = this.zzaoa.elapsedRealtime();
    }

    public boolean zzx(long j) {
        return this.zzboy == 0 || this.zzaoa.elapsedRealtime() - this.zzboy > j;
    }
}
