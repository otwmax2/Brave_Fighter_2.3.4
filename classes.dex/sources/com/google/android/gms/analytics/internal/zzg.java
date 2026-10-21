package com.google.android.gms.analytics.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;

/* JADX INFO: loaded from: classes.dex */
public class zzg {
    private final Context zzaqj;
    private final Context zzcxk;

    public zzg(Context context) {
        com.google.android.gms.common.internal.zzab.zzaa(context);
        Context applicationContext = context.getApplicationContext();
        com.google.android.gms.common.internal.zzab.zzb(applicationContext, "Application context can't be null");
        this.zzaqj = applicationContext;
        this.zzcxk = applicationContext;
    }

    public Context getApplicationContext() {
        return this.zzaqj;
    }

    protected zzu zza(zzf zzfVar) {
        return new zzu(zzfVar);
    }

    protected com.google.android.gms.analytics.zzi zzaz(Context context) {
        return com.google.android.gms.analytics.zzi.zzax(context);
    }

    protected zzk zzb(zzf zzfVar) {
        return new zzk(zzfVar);
    }

    protected zza zzc(zzf zzfVar) {
        return new zza(zzfVar);
    }

    protected zzn zzd(zzf zzfVar) {
        return new zzn(zzfVar);
    }

    protected zzap zze(zzf zzfVar) {
        return new zzap(zzfVar);
    }

    protected zzaf zzf(zzf zzfVar) {
        return new zzaf(zzfVar);
    }

    protected zzr zzg(zzf zzfVar) {
        return new zzr(zzfVar);
    }

    protected com.google.android.gms.common.util.zze zzh(zzf zzfVar) {
        return com.google.android.gms.common.util.zzh.zzavi();
    }

    protected GoogleAnalytics zzi(zzf zzfVar) {
        return new GoogleAnalytics(zzfVar);
    }

    zzl zzj(zzf zzfVar) {
        return new zzl(zzfVar, this);
    }

    zzag zzk(zzf zzfVar) {
        return new zzag(zzfVar);
    }

    protected zzb zzl(zzf zzfVar) {
        return new zzb(zzfVar, this);
    }

    public zzj zzm(zzf zzfVar) {
        return new zzj(zzfVar);
    }

    public zzah zzn(zzf zzfVar) {
        return new zzah(zzfVar);
    }

    public zzi zzo(zzf zzfVar) {
        return new zzi(zzfVar);
    }

    public zzv zzp(zzf zzfVar) {
        return new zzv(zzfVar);
    }

    public zzai zzq(zzf zzfVar) {
        return new zzai(zzfVar);
    }

    public Context zzzi() {
        return this.zzcxk;
    }
}
