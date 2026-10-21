package com.google.android.gms.common.stats;

import android.os.SystemClock;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class zze {
    private final long Av;
    private final int Aw;
    private final SimpleArrayMap<String, Long> Ax;

    public zze() {
        this.Av = 60000L;
        this.Aw = 10;
        this.Ax = new SimpleArrayMap<>(10);
    }

    public zze(int i, long j) {
        this.Av = j;
        this.Aw = i;
        this.Ax = new SimpleArrayMap<>();
    }

    private void zze(long j, long j2) {
        for (int size = this.Ax.size() - 1; size >= 0; size--) {
            if (j2 - this.Ax.valueAt(size).longValue() > j) {
                this.Ax.removeAt(size);
            }
        }
    }

    public Long zzhy(String str) {
        Long lPut;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.Av;
        synchronized (this) {
            while (this.Ax.size() >= this.Aw) {
                zze(j, jElapsedRealtime);
                j /= 2;
                Log.w("ConnectionTracker", new StringBuilder(94).append("The max capacity ").append(this.Aw).append(" is not enough. Current durationThreshold is: ").append(j).toString());
            }
            lPut = this.Ax.put(str, Long.valueOf(jElapsedRealtime));
        }
        return lPut;
    }

    public boolean zzhz(String str) {
        boolean z;
        synchronized (this) {
            z = this.Ax.remove(str) != null;
        }
        return z;
    }
}
