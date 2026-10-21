package com.google.android.gms.contextmanager.fence.internal;

import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzry;

/* JADX INFO: loaded from: classes.dex */
public class zza {
    private final zzry.zza BH;

    public zza(zzry.zza zzaVar) {
        this.BH = (zzry.zza) zzab.zzaa(zzaVar);
    }

    public static zza zza(int i, int[] iArr) {
        zzab.zzbn(iArr != null && iArr.length > 0);
        return new zza(zza(i, iArr, 3000L));
    }

    private static zzry.zza zza(int i, int[] iArr, long j) {
        zzry.zza zzaVar = new zzry.zza();
        zzaVar.Da = i;
        zzaVar.Db = j;
        zzaVar.Dc = iArr;
        return zzaVar;
    }

    public static zza zzb(int[] iArr) {
        return zza(1, iArr);
    }

    public zzry.zza zzawu() {
        return this.BH;
    }
}
