package com.google.android.gms.analytics;

import com.google.android.gms.analytics.zzh;
import com.google.android.gms.common.internal.zzab;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzh<T extends zzh> {
    private final zzi zzcti;
    protected final zze zzctj;
    private final List<zzf> zzctk;

    protected zzh(zzi zziVar, com.google.android.gms.common.util.zze zzeVar) {
        zzab.zzaa(zziVar);
        this.zzcti = zziVar;
        this.zzctk = new ArrayList();
        zze zzeVar2 = new zze(this, zzeVar);
        zzeVar2.zzwp();
        this.zzctj = zzeVar2;
    }

    protected void zza(zze zzeVar) {
    }

    protected void zzd(zze zzeVar) {
        Iterator<zzf> it = this.zzctk.iterator();
        while (it.hasNext()) {
            it.next().zza(this, zzeVar);
        }
    }

    public zze zzvr() {
        zze zzeVarZzwf = this.zzctj.zzwf();
        zzd(zzeVarZzwf);
        return zzeVarZzwf;
    }

    protected zzi zzwn() {
        return this.zzcti;
    }

    public zze zzwq() {
        return this.zzctj;
    }

    public List<zzk> zzwr() {
        return this.zzctj.zzwh();
    }
}
