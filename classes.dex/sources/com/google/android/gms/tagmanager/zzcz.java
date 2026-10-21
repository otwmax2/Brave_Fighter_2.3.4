package com.google.android.gms.tagmanager;

/* JADX INFO: loaded from: classes.dex */
class zzcz implements zzck {
    private final long U;
    private final int V;
    private double W;
    private final Object Y;
    private long ayg;
    private final com.google.android.gms.common.util.zze zzaoa;

    public zzcz() {
        this(60, 2000L);
    }

    public zzcz(int i, long j) {
        this.Y = new Object();
        this.V = i;
        this.W = this.V;
        this.U = j;
        this.zzaoa = com.google.android.gms.common.util.zzh.zzavi();
    }

    @Override // com.google.android.gms.tagmanager.zzck
    public boolean zzade() {
        boolean z;
        synchronized (this.Y) {
            long jCurrentTimeMillis = this.zzaoa.currentTimeMillis();
            if (this.W < this.V) {
                double d = (jCurrentTimeMillis - this.ayg) / this.U;
                if (d > 0.0d) {
                    this.W = Math.min(this.V, d + this.W);
                }
            }
            this.ayg = jCurrentTimeMillis;
            if (this.W >= 1.0d) {
                this.W -= 1.0d;
                z = true;
            } else {
                zzbn.zzcy("No more tokens available.");
                z = false;
            }
        }
        return z;
    }
}
