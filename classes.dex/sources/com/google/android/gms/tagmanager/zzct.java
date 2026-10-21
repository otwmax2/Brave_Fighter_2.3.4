package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzah;
import com.google.android.gms.tagmanager.zzp;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class zzct implements zzp.zze {
    private final String auZ;
    private String avw;
    private zzs axA;
    private final zza axC;
    private ScheduledFuture<?> axD;
    private zzbm<zzah.zzj> axz;
    private boolean mClosed;
    private final Context mContext;
    private final ScheduledExecutorService qv;

    interface zza {
        zzcs zza(zzs zzsVar);
    }

    interface zzb {
        ScheduledExecutorService zzccl();
    }

    public zzct(Context context, String str, zzs zzsVar) {
        this(context, str, zzsVar, null, null);
    }

    zzct(Context context, String str, zzs zzsVar, zzb zzbVar, zza zzaVar) {
        this.axA = zzsVar;
        this.mContext = context;
        this.auZ = str;
        this.qv = (zzbVar == null ? new zzb() { // from class: com.google.android.gms.tagmanager.zzct.1
            @Override // com.google.android.gms.tagmanager.zzct.zzb
            public ScheduledExecutorService zzccl() {
                return Executors.newSingleThreadScheduledExecutor();
            }
        } : zzbVar).zzccl();
        if (zzaVar == null) {
            this.axC = new zza() { // from class: com.google.android.gms.tagmanager.zzct.2
                @Override // com.google.android.gms.tagmanager.zzct.zza
                public zzcs zza(zzs zzsVar2) {
                    return new zzcs(zzct.this.mContext, zzct.this.auZ, zzsVar2);
                }
            };
        } else {
            this.axC = zzaVar;
        }
    }

    private synchronized void zzcck() {
        if (this.mClosed) {
            throw new IllegalStateException("called method after closed");
        }
    }

    private zzcs zzol(String str) {
        zzcs zzcsVarZza = this.axC.zza(this.axA);
        zzcsVarZza.zza(this.axz);
        zzcsVarZza.zznv(this.avw);
        zzcsVarZza.zzok(str);
        return zzcsVarZza;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public synchronized void release() {
        zzcck();
        if (this.axD != null) {
            this.axD.cancel(false);
        }
        this.qv.shutdown();
        this.mClosed = true;
    }

    @Override // com.google.android.gms.tagmanager.zzp.zze
    public synchronized void zza(zzbm<zzah.zzj> zzbmVar) {
        zzcck();
        this.axz = zzbmVar;
    }

    @Override // com.google.android.gms.tagmanager.zzp.zze
    public synchronized void zzf(long j, String str) {
        String str2 = this.auZ;
        zzbn.v(new StringBuilder(String.valueOf(str2).length() + 55).append("loadAfterDelay: containerId=").append(str2).append(" delay=").append(j).toString());
        zzcck();
        if (this.axz == null) {
            throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
        }
        if (this.axD != null) {
            this.axD.cancel(false);
        }
        this.axD = this.qv.schedule(zzol(str), j, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.tagmanager.zzp.zze
    public synchronized void zznv(String str) {
        zzcck();
        this.avw = str;
    }
}
