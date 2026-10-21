package com.google.android.gms.analytics.internal;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
abstract class zzt {
    private static volatile Handler zzczj;
    private final zzf zzcws;
    private volatile long zzczk;
    private final Runnable zzw;

    zzt(zzf zzfVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzfVar);
        this.zzcws = zzfVar;
        this.zzw = new Runnable() { // from class: com.google.android.gms.analytics.internal.zzt.1
            @Override // java.lang.Runnable
            public void run() {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    zzt.this.zzcws.zzyz().zzf(this);
                    return;
                }
                boolean zZzfc = zzt.this.zzfc();
                zzt.this.zzczk = 0L;
                if (!zZzfc || zzt.zzb(zzt.this)) {
                    return;
                }
                zzt.this.run();
            }
        };
    }

    private Handler getHandler() {
        Handler handler;
        if (zzczj != null) {
            return zzczj;
        }
        synchronized (zzt.class) {
            if (zzczj == null) {
                zzczj = new Handler(this.zzcws.getContext().getMainLooper());
            }
            handler = zzczj;
        }
        return handler;
    }

    static /* synthetic */ boolean zzb(zzt zztVar) {
        return false;
    }

    public void cancel() {
        this.zzczk = 0L;
        getHandler().removeCallbacks(this.zzw);
    }

    public abstract void run();

    public long zzacj() {
        if (this.zzczk == 0) {
            return 0L;
        }
        return Math.abs(this.zzcws.zzyw().currentTimeMillis() - this.zzczk);
    }

    public boolean zzfc() {
        return this.zzczk != 0;
    }

    public void zzv(long j) {
        cancel();
        if (j >= 0) {
            this.zzczk = this.zzcws.zzyw().currentTimeMillis();
            if (getHandler().postDelayed(this.zzw, j)) {
                return;
            }
            this.zzcws.zzyx().zze("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public void zzw(long j) {
        if (zzfc()) {
            if (j < 0) {
                cancel();
                return;
            }
            long jAbs = j - Math.abs(this.zzcws.zzyw().currentTimeMillis() - this.zzczk);
            long j2 = jAbs >= 0 ? jAbs : 0L;
            getHandler().removeCallbacks(this.zzw);
            if (getHandler().postDelayed(this.zzw, j2)) {
                return;
            }
            this.zzcws.zzyx().zze("Failed to adjust delayed post. time", Long.valueOf(j2));
        }
    }
}
