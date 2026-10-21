package com.google.android.gms.contextmanager.fence.internal;

import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzry;

/* JADX INFO: loaded from: classes.dex */
public class zzn {
    private final zzry.zzf Cb;

    public zzn(zzry.zzf zzfVar) {
        this.Cb = (zzry.zzf) zzab.zzaa(zzfVar);
    }

    public static zzn zza(int i, int i2, double d) {
        zzab.zzbn(d >= 0.0d);
        return new zzn(zza(2, 1, i, i2, d, d, 3000L, 0L));
    }

    public static zzn zza(int i, int i2, double d, long j) {
        zzab.zzbn(d >= 0.0d);
        return new zzn(zza(1, 1, i, i2, d, d, 0L, j));
    }

    private static zzry.zzf zza(int i, int i2, int i3, int i4, double d, double d2, long j, long j2) {
        zzry.zzf zzfVar = new zzry.zzf();
        zzfVar.Da = i;
        zzfVar.Dz = i2;
        zzfVar.Db = j;
        zzfVar.DE = j2;
        if (i2 == 1) {
            zzfVar.DA = i3;
            zzfVar.DB = i4;
            zzfVar.DC = d;
            zzfVar.DD = d2;
        }
        return zzfVar;
    }

    public static zzn zzb(int i, int i2, double d) {
        zzab.zzbn(d >= 0.0d);
        return new zzn(zza(3, 1, i, i2, d, d, 3000L, 0L));
    }

    public zzry.zzf zzaxi() {
        return this.Cb;
    }
}
