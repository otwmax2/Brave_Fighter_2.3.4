package com.google.android.gms.contextmanager.fence.internal;

import com.google.android.gms.awareness.snapshot.internal.BeaconStateImpl;
import com.google.android.gms.awareness.state.BeaconState;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzry;

/* JADX INFO: loaded from: classes.dex */
public class zzd {
    private final zzry.zzc BM;

    public zzd(zzry.zzc zzcVar) {
        this.BM = (zzry.zzc) zzab.zzaa(zzcVar);
    }

    private static zzry.zzc zza(int i, BeaconState.TypeFilter[] typeFilterArr, long j) {
        zzry.zzc zzcVar = new zzry.zzc();
        zzcVar.Da = i;
        if (typeFilterArr != null && typeFilterArr.length != 0) {
            zzcVar.Dj = new zzry.zzc.zza[typeFilterArr.length];
            int i2 = 0;
            for (BeaconState.TypeFilter typeFilter : typeFilterArr) {
                zzcVar.Dj[i2] = ((BeaconStateImpl.TypeFilterImpl) typeFilter).zzags();
                i2++;
            }
        }
        zzcVar.Db = j;
        return zzcVar;
    }

    public static zzd zzb(BeaconState.TypeFilter[] typeFilterArr) {
        return new zzd(zza(1, typeFilterArr, 3000L));
    }

    public static zzd zzc(BeaconState.TypeFilter[] typeFilterArr) {
        return new zzd(zza(2, typeFilterArr, 3000L));
    }

    public zzry.zzc zzawy() {
        return this.BM;
    }
}
