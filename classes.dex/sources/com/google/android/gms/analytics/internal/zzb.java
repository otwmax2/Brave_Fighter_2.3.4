package com.google.android.gms.analytics.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class zzb extends zzd {
    private final zzl zzcwk;

    public zzb(zzf zzfVar, zzg zzgVar) {
        super(zzfVar);
        com.google.android.gms.common.internal.zzab.zzaa(zzgVar);
        this.zzcwk = zzgVar.zzj(zzfVar);
    }

    void onServiceConnected() {
        zzwu();
        this.zzcwk.onServiceConnected();
    }

    public void setLocalDispatchPeriod(final int i) {
        zzzg();
        zzb("setLocalDispatchPeriod (sec)", Integer.valueOf(i));
        zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.1
            @Override // java.lang.Runnable
            public void run() {
                zzb.this.zzcwk.zzu(((long) i) * 1000);
            }
        });
    }

    public void start() {
        this.zzcwk.start();
    }

    public long zza(zzh zzhVar) {
        zzzg();
        com.google.android.gms.common.internal.zzab.zzaa(zzhVar);
        zzwu();
        long jZza = this.zzcwk.zza(zzhVar, true);
        if (jZza == 0) {
            this.zzcwk.zzc(zzhVar);
        }
        return jZza;
    }

    public void zza(final zzab zzabVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzabVar);
        zzzg();
        zzb("Hit delivery requested", zzabVar);
        zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.4
            @Override // java.lang.Runnable
            public void run() {
                zzb.this.zzcwk.zza(zzabVar);
            }
        });
    }

    public void zza(final zzw zzwVar) {
        zzzg();
        zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.6
            @Override // java.lang.Runnable
            public void run() {
                zzb.this.zzcwk.zzb(zzwVar);
            }
        });
    }

    public void zza(final String str, final Runnable runnable) {
        com.google.android.gms.common.internal.zzab.zzh(str, "campaign param can't be empty");
        zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.3
            @Override // java.lang.Runnable
            public void run() {
                zzb.this.zzcwk.zzeq(str);
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
    }

    public void zzas(final boolean z) {
        zza("Network connectivity status changed", Boolean.valueOf(z));
        zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.2
            @Override // java.lang.Runnable
            public void run() {
                zzb.this.zzcwk.zzas(z);
            }
        });
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
        this.zzcwk.initialize();
    }

    public void zzyo() {
        zzzg();
        zzyv();
        zzyz().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzb.5
            @Override // java.lang.Runnable
            public void run() {
                zzb.this.zzcwk.zzyo();
            }
        });
    }

    public void zzyp() {
        zzzg();
        Context context = getContext();
        if (!zzaj.zzav(context) || !zzak.zzaw(context)) {
            zza((zzw) null);
            return;
        }
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
        context.startService(intent);
    }

    public boolean zzyq() {
        zzzg();
        try {
            zzyz().zzc(new Callable<Void>() { // from class: com.google.android.gms.analytics.internal.zzb.7
                @Override // java.util.concurrent.Callable
                /* JADX INFO: renamed from: zzcy, reason: merged with bridge method [inline-methods] */
                public Void call() throws Exception {
                    zzb.this.zzcwk.zzaal();
                    return null;
                }
            }).get(4L, TimeUnit.SECONDS);
            return true;
        } catch (InterruptedException e) {
            zzd("syncDispatchLocalHits interrupted", e);
            return false;
        } catch (ExecutionException e2) {
            zze("syncDispatchLocalHits failed", e2);
            return false;
        } catch (TimeoutException e3) {
            zzd("syncDispatchLocalHits timed out", e3);
            return false;
        }
    }

    public void zzyr() {
        zzzg();
        com.google.android.gms.analytics.zzi.zzwu();
        this.zzcwk.zzyr();
    }

    public void zzys() {
        zzei("Radio powered up");
        zzyp();
    }

    void zzyt() {
        zzwu();
        this.zzcwk.zzyt();
    }
}
