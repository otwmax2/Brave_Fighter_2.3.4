package com.google.android.gms.tagmanager;

/* JADX INFO: loaded from: classes.dex */
class zzbl implements zzck {
    private final long U;
    private final int V;
    private double W;
    private long X;
    private final Object Y = new Object();
    private final long awM;
    private final com.google.android.gms.common.util.zze zzaoa;
    private final String zzcvf;

    public zzbl(int i, long j, long j2, String str, com.google.android.gms.common.util.zze zzeVar) {
        this.V = i;
        this.W = this.V;
        this.U = j;
        this.awM = j2;
        this.zzcvf = str;
        this.zzaoa = zzeVar;
    }

    @Override // com.google.android.gms.tagmanager.zzck
    public boolean zzade() {
        boolean z = false;
        synchronized (this.Y) {
            long jCurrentTimeMillis = this.zzaoa.currentTimeMillis();
            if (jCurrentTimeMillis - this.X < this.awM) {
                String str = this.zzcvf;
                zzbn.zzcy(new StringBuilder(String.valueOf(str).length() + 34).append("Excessive ").append(str).append(" detected; call ignored.").toString());
            } else {
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
                    String str2 = this.zzcvf;
                    zzbn.zzcy(new StringBuilder(String.valueOf(str2).length() + 34).append("Excessive ").append(str2).append(" detected; call ignored.").toString());
                }
            }
        }
        return z;
    }
}
