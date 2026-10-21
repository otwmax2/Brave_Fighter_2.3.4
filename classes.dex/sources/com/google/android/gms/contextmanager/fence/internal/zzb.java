package com.google.android.gms.contextmanager.fence.internal;

import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzbu;
import com.google.android.gms.internal.zzry;

/* JADX INFO: loaded from: classes.dex */
public class zzb {
    private final zzry.zzb BI;

    public zzb(zzry.zzb zzbVar) {
        this.BI = (zzry.zzb) zzab.zzaa(zzbVar);
    }

    private static zzry.zzb zza(int i, long j, int i2) {
        zzry.zzb zzbVar = new zzry.zzb();
        zzbVar.Da = i;
        zzbVar.Db = j;
        switch (i) {
            case 1:
            case 2:
            case 3:
                zzbVar.Dd = i2;
                return zzbVar;
            case 4:
            case 5:
            case 6:
                zzbVar.De = i2;
                return zzbVar;
            case 7:
            case 8:
            case 9:
                zzbVar.Df = i2;
                return zzbVar;
            case 10:
            case 11:
            case 12:
                zzbVar.Dg = i2;
                return zzbVar;
            case 13:
            case 14:
            case 15:
                zzbVar.Dh = i2;
                return zzbVar;
            case 16:
            case 17:
            case 18:
                zzbVar.Di = i2;
                return zzbVar;
            default:
                zzbu.zza("AudioStateFenceStub", "Unknown trigger type=%s", Integer.valueOf(i));
                return zzbVar;
        }
    }

    public static zzb zzawv() {
        return new zzb(zza(2, 3000L, 0));
    }

    public static zzb zzaww() {
        return new zzb(zza(3, 3000L, 0));
    }

    public static zzb zzhj(int i) {
        return new zzb(zza(1, 0L, i));
    }

    public zzry.zzb zzawx() {
        return this.BI;
    }
}
