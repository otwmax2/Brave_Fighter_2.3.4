package com.google.android.gms.analytics;

import com.google.android.gms.common.internal.zzab;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zze {
    private final com.google.android.gms.common.util.zze zzaoa;
    private final zzh zzcsy;
    private boolean zzcsz;
    private long zzcta;
    private long zzctb;
    private long zzctc;
    private long zzctd;
    private long zzcte;
    private boolean zzctf;
    private final Map<Class<? extends zzg>, zzg> zzctg;
    private final List<zzk> zzcth;

    zze(zze zzeVar) {
        this.zzcsy = zzeVar.zzcsy;
        this.zzaoa = zzeVar.zzaoa;
        this.zzcta = zzeVar.zzcta;
        this.zzctb = zzeVar.zzctb;
        this.zzctc = zzeVar.zzctc;
        this.zzctd = zzeVar.zzctd;
        this.zzcte = zzeVar.zzcte;
        this.zzcth = new ArrayList(zzeVar.zzcth);
        this.zzctg = new HashMap(zzeVar.zzctg.size());
        for (Map.Entry<Class<? extends zzg>, zzg> entry : zzeVar.zzctg.entrySet()) {
            zzg zzgVarZzc = zzc(entry.getKey());
            entry.getValue().zzb(zzgVarZzc);
            this.zzctg.put(entry.getKey(), zzgVarZzc);
        }
    }

    zze(zzh zzhVar, com.google.android.gms.common.util.zze zzeVar) {
        zzab.zzaa(zzhVar);
        zzab.zzaa(zzeVar);
        this.zzcsy = zzhVar;
        this.zzaoa = zzeVar;
        this.zzctd = 1800000L;
        this.zzcte = 3024000000L;
        this.zzctg = new HashMap();
        this.zzcth = new ArrayList();
    }

    private static <T extends zzg> T zzc(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("dataType default constructor is not accessible", e);
        } catch (InstantiationException e2) {
            throw new IllegalArgumentException("dataType doesn't have default constructor", e2);
        }
    }

    public <T extends zzg> T zza(Class<T> cls) {
        return (T) this.zzctg.get(cls);
    }

    public void zza(zzg zzgVar) {
        zzab.zzaa(zzgVar);
        Class<?> cls = zzgVar.getClass();
        if (cls.getSuperclass() != zzg.class) {
            throw new IllegalArgumentException();
        }
        zzgVar.zzb(zzb(cls));
    }

    public <T extends zzg> T zzb(Class<T> cls) {
        T t = (T) this.zzctg.get(cls);
        if (t != null) {
            return t;
        }
        T t2 = (T) zzc(cls);
        this.zzctg.put((Class<? extends zzg>) cls, t2);
        return t2;
    }

    public void zzn(long j) {
        this.zzctb = j;
    }

    public zze zzwf() {
        return new zze(this);
    }

    public Collection<zzg> zzwg() {
        return this.zzctg.values();
    }

    public List<zzk> zzwh() {
        return this.zzcth;
    }

    public long zzwi() {
        return this.zzcta;
    }

    public void zzwj() {
        zzwn().zze(this);
    }

    public boolean zzwk() {
        return this.zzcsz;
    }

    void zzwl() {
        this.zzctc = this.zzaoa.elapsedRealtime();
        if (this.zzctb != 0) {
            this.zzcta = this.zzctb;
        } else {
            this.zzcta = this.zzaoa.currentTimeMillis();
        }
        this.zzcsz = true;
    }

    zzh zzwm() {
        return this.zzcsy;
    }

    zzi zzwn() {
        return this.zzcsy.zzwn();
    }

    boolean zzwo() {
        return this.zzctf;
    }

    void zzwp() {
        this.zzctf = true;
    }
}
