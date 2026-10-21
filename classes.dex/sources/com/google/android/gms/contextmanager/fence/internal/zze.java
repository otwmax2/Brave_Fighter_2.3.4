package com.google.android.gms.contextmanager.fence.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.contextmanager.fence.internal.zzm;
import com.google.android.gms.internal.zzbv;

/* JADX INFO: loaded from: classes.dex */
public class zze extends zzm.zza {
    public static final zzbv.zza<com.google.android.gms.awareness.fence.zza, zze> BN = new zzbv.zza<com.google.android.gms.awareness.fence.zza, zze>() { // from class: com.google.android.gms.contextmanager.fence.internal.zze.1
        @Override // com.google.android.gms.internal.zzbv.zza
        public zze zza(com.google.android.gms.awareness.fence.zza zzaVar, Looper looper) {
            return new zze(zzaVar, looper);
        }
    };
    private final com.google.android.gms.awareness.fence.zza BO;
    private final Handler mHandler;

    private static class zza implements Runnable {
        private final com.google.android.gms.awareness.fence.zza BO;
        private final FenceTriggerInfoImpl BP;

        public zza(com.google.android.gms.awareness.fence.zza zzaVar, FenceTriggerInfoImpl fenceTriggerInfoImpl) {
            this.BO = (com.google.android.gms.awareness.fence.zza) zzab.zzaa(zzaVar);
            this.BP = (FenceTriggerInfoImpl) zzab.zzaa(fenceTriggerInfoImpl);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.BO.zzk(this.BP.getKey(), this.BP.zzaxg());
        }
    }

    private zze(com.google.android.gms.awareness.fence.zza zzaVar, Looper looper) {
        this.BO = (com.google.android.gms.awareness.fence.zza) zzab.zzaa(zzaVar);
        this.mHandler = com.google.android.gms.contextmanager.internal.zzd.zza((Looper) zzab.zzaa(looper));
    }

    @Override // com.google.android.gms.contextmanager.fence.internal.zzm
    public void zza(FenceTriggerInfoImpl fenceTriggerInfoImpl) {
        this.mHandler.post(new zza(this.BO, fenceTriggerInfoImpl));
    }
}
