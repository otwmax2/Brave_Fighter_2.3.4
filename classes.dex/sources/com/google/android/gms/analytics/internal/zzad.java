package com.google.android.gms.analytics.internal;

/* JADX INFO: loaded from: classes.dex */
public class zzad {
    private final long U;
    private final int V;
    private double W;
    private long X;
    private final Object Y;
    private final com.google.android.gms.common.util.zze zzaoa;
    private final String zzcvf;

    public zzad(int i, long j, String str, com.google.android.gms.common.util.zze zzeVar) {
        this.Y = new Object();
        this.V = i;
        this.W = this.V;
        this.U = j;
        this.zzcvf = str;
        this.zzaoa = zzeVar;
    }

    public zzad(String str, com.google.android.gms.common.util.zze zzeVar) {
        this(60, 2000L, str, zzeVar);
    }

    public boolean zzade() {
        boolean z;
        synchronized (this.Y) {
            long jCurrentTimeMillis = this.zzaoa.currentTimeMillis();
            if (this.W < this.V) {
                double d = (jCurrentTimeMillis - this.X) / this.U;
                if (d > 0.0d) {
                    this.W = Math.min(this.V, d + this.W);
                }
            }
            this.X = jCurrentTimeMillis;
            if (this.W >= 1.0d) {
                this.W -= 1.0d;
                z = true;
            } else {
                String str = this.zzcvf;
                zzae.zzcy(new StringBuilder(String.valueOf(str).length() + 34).append("Excessive ").append(str).append(" detected; call ignored.").toString());
                z = false;
            }
        }
        return z;
    }
}
