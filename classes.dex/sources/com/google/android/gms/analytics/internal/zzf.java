package com.google.android.gms.analytics.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import java.lang.Thread;

/* JADX INFO: loaded from: classes.dex */
public class zzf {
    private static zzf zzcwv;
    private final Context mContext;
    private final com.google.android.gms.common.util.zze zzaoa;
    private final Context zzcww;
    private final zzr zzcwx;
    private final zzaf zzcwy;
    private final com.google.android.gms.analytics.zzi zzcwz;
    private final zzb zzcxa;
    private final zzv zzcxb;
    private final zzap zzcxc;
    private final zzai zzcxd;
    private final GoogleAnalytics zzcxe;
    private final zzn zzcxf;
    private final zza zzcxg;
    private final zzk zzcxh;
    private final zzu zzcxi;

    protected zzf(zzg zzgVar) {
        Context applicationContext = zzgVar.getApplicationContext();
        com.google.android.gms.common.internal.zzab.zzb(applicationContext, "Application context can't be null");
        Context contextZzzi = zzgVar.zzzi();
        com.google.android.gms.common.internal.zzab.zzaa(contextZzzi);
        this.mContext = applicationContext;
        this.zzcww = contextZzzi;
        this.zzaoa = zzgVar.zzh(this);
        this.zzcwx = zzgVar.zzg(this);
        zzaf zzafVarZzf = zzgVar.zzf(this);
        zzafVarZzf.initialize();
        this.zzcwy = zzafVarZzf;
        if (zzyy().zzabc()) {
            zzaf zzafVarZzyx = zzyx();
            String str = zze.VERSION;
            zzafVarZzyx.zzek(new StringBuilder(String.valueOf(str).length() + 33).append("Google Analytics ").append(str).append(" is starting up.").toString());
        } else {
            zzaf zzafVarZzyx2 = zzyx();
            String str2 = zze.VERSION;
            zzafVarZzyx2.zzek(new StringBuilder(String.valueOf(str2).length() + 134).append("Google Analytics ").append(str2).append(" is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4").toString());
        }
        zzai zzaiVarZzq = zzgVar.zzq(this);
        zzaiVarZzq.initialize();
        this.zzcxd = zzaiVarZzq;
        zzap zzapVarZze = zzgVar.zze(this);
        zzapVarZze.initialize();
        this.zzcxc = zzapVarZze;
        zzb zzbVarZzl = zzgVar.zzl(this);
        zzn zznVarZzd = zzgVar.zzd(this);
        zza zzaVarZzc = zzgVar.zzc(this);
        zzk zzkVarZzb = zzgVar.zzb(this);
        zzu zzuVarZza = zzgVar.zza(this);
        com.google.android.gms.analytics.zzi zziVarZzaz = zzgVar.zzaz(applicationContext);
        zziVarZzaz.zza(zzzh());
        this.zzcwz = zziVarZzaz;
        GoogleAnalytics googleAnalyticsZzi = zzgVar.zzi(this);
        zznVarZzd.initialize();
        this.zzcxf = zznVarZzd;
        zzaVarZzc.initialize();
        this.zzcxg = zzaVarZzc;
        zzkVarZzb.initialize();
        this.zzcxh = zzkVarZzb;
        zzuVarZza.initialize();
        this.zzcxi = zzuVarZza;
        zzv zzvVarZzp = zzgVar.zzp(this);
        zzvVarZzp.initialize();
        this.zzcxb = zzvVarZzp;
        zzbVarZzl.initialize();
        this.zzcxa = zzbVarZzl;
        if (zzyy().zzabc()) {
            zzyx().zzb("Device AnalyticsService version", zze.VERSION);
        }
        googleAnalyticsZzi.initialize();
        this.zzcxe = googleAnalyticsZzi;
        zzbVarZzl.start();
    }

    private void zza(zzd zzdVar) {
        com.google.android.gms.common.internal.zzab.zzb(zzdVar, "Analytics service not created/initialized");
        com.google.android.gms.common.internal.zzab.zzb(zzdVar.isInitialized(), "Analytics service not initialized");
    }

    public static zzf zzay(Context context) {
        com.google.android.gms.common.internal.zzab.zzaa(context);
        if (zzcwv == null) {
            synchronized (zzf.class) {
                if (zzcwv == null) {
                    com.google.android.gms.common.util.zze zzeVarZzavi = com.google.android.gms.common.util.zzh.zzavi();
                    long jElapsedRealtime = zzeVarZzavi.elapsedRealtime();
                    zzf zzfVar = new zzf(new zzg(context));
                    zzcwv = zzfVar;
                    GoogleAnalytics.zzwa();
                    long jElapsedRealtime2 = zzeVarZzavi.elapsedRealtime() - jElapsedRealtime;
                    long jLongValue = zzy.H.get().longValue();
                    if (jElapsedRealtime2 > jLongValue) {
                        zzfVar.zzyx().zzc("Slow initialization (ms)", Long.valueOf(jElapsedRealtime2), Long.valueOf(jLongValue));
                    }
                }
            }
        }
        return zzcwv;
    }

    public Context getContext() {
        return this.mContext;
    }

    public zzb zzwd() {
        zza(this.zzcxa);
        return this.zzcxa;
    }

    public zzap zzwe() {
        zza(this.zzcxc);
        return this.zzcxc;
    }

    public void zzwu() {
        com.google.android.gms.analytics.zzi.zzwu();
    }

    public com.google.android.gms.common.util.zze zzyw() {
        return this.zzaoa;
    }

    public zzaf zzyx() {
        zza(this.zzcwy);
        return this.zzcwy;
    }

    public zzr zzyy() {
        return this.zzcwx;
    }

    public com.google.android.gms.analytics.zzi zzyz() {
        com.google.android.gms.common.internal.zzab.zzaa(this.zzcwz);
        return this.zzcwz;
    }

    public zzv zzza() {
        zza(this.zzcxb);
        return this.zzcxb;
    }

    public zzai zzzb() {
        zza(this.zzcxd);
        return this.zzcxd;
    }

    public zzk zzze() {
        zza(this.zzcxh);
        return this.zzcxh;
    }

    public zzu zzzf() {
        return this.zzcxi;
    }

    protected Thread.UncaughtExceptionHandler zzzh() {
        return new Thread.UncaughtExceptionHandler() { // from class: com.google.android.gms.analytics.internal.zzf.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                zzaf zzafVarZzzj = zzf.this.zzzj();
                if (zzafVarZzzj != null) {
                    zzafVarZzzj.zze("Job execution failed", th);
                }
            }
        };
    }

    public Context zzzi() {
        return this.zzcww;
    }

    public zzaf zzzj() {
        return this.zzcwy;
    }

    public GoogleAnalytics zzzk() {
        com.google.android.gms.common.internal.zzab.zzaa(this.zzcxe);
        com.google.android.gms.common.internal.zzab.zzb(this.zzcxe.isInitialized(), "Analytics instance not initialized");
        return this.zzcxe;
    }

    public zzai zzzl() {
        if (this.zzcxd == null || !this.zzcxd.isInitialized()) {
            return null;
        }
        return this.zzcxd;
    }

    public zza zzzm() {
        zza(this.zzcxg);
        return this.zzcxg;
    }

    public zzn zzzn() {
        zza(this.zzcxf);
        return this.zzcxf;
    }
}
