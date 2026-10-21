package com.google.android.gms.contextmanager.internal;

import android.os.RemoteException;
import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.awareness.fence.FenceStateMap;
import com.google.android.gms.awareness.snapshot.internal.Snapshot;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.contextmanager.fence.internal.FenceStateMapImpl;
import com.google.android.gms.contextmanager.internal.zzh;
import com.google.android.gms.internal.zzbu;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
public class zzf extends zzh.zza {
    private zzpr.zzb<com.google.android.gms.contextmanager.zzd> CA;
    private zzpr.zzb<com.google.android.gms.awareness.snapshot.internal.zzl> CB;
    private zzpr.zzb<FenceQueryResult> CC;
    private final zza Cw;
    private zzpr.zzb<Status> Cx;
    private zzpr.zzb<com.google.android.gms.contextmanager.zze> Cy;
    private zzpr.zzb<zzt> Cz;

    public interface zza {
        void zzai(Status status);
    }

    private zzf(zzpr.zzb<Status> zzbVar, zzpr.zzb<com.google.android.gms.contextmanager.zze> zzbVar2, zzpr.zzb<zzt> zzbVar3, zzpr.zzb<com.google.android.gms.contextmanager.zzd> zzbVar4, zzpr.zzb<com.google.android.gms.awareness.snapshot.internal.zzl> zzbVar5, zzpr.zzb<FenceQueryResult> zzbVar6, zza zzaVar) {
        this.Cx = zzbVar;
        this.Cy = zzbVar2;
        this.Cz = zzbVar3;
        this.CA = zzbVar4;
        this.CB = zzbVar5;
        this.CC = zzbVar6;
        this.Cw = zzaVar;
    }

    public static zzf zza(zzpr.zzb<Status> zzbVar, zza zzaVar) {
        return new zzf(zzbVar, null, null, null, null, null, zzaVar);
    }

    public static zzf zzd(zzpr.zzb<com.google.android.gms.awareness.snapshot.internal.zzl> zzbVar) {
        return new zzf(null, null, null, null, zzbVar, null, null);
    }

    public static zzf zze(zzpr.zzb<FenceQueryResult> zzbVar) {
        return new zzf(null, null, null, null, null, zzbVar, null);
    }

    @Override // com.google.android.gms.contextmanager.internal.zzh
    public void zza(final Status status, final Snapshot snapshot) throws RemoteException {
        if (this.CB == null) {
            zzbu.zze("ContextManagerPendingResult", "Unexpected callback to onSnapshotResult");
        } else {
            this.CB.setResult(new com.google.android.gms.awareness.snapshot.internal.zzl() { // from class: com.google.android.gms.contextmanager.internal.zzf.4
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.awareness.snapshot.internal.zzl
                public Snapshot zzahi() {
                    return snapshot;
                }
            });
            this.CB = null;
        }
    }

    @Override // com.google.android.gms.contextmanager.internal.zzh
    public void zza(final Status status, final DataHolder dataHolder) throws RemoteException {
        if (this.CA == null) {
            zzbu.zze("ContextManagerPendingResult", "Unexpected callback to onStateResult");
        } else {
            this.CA.setResult(new com.google.android.gms.contextmanager.zzd() { // from class: com.google.android.gms.contextmanager.internal.zzf.3
                private final com.google.android.gms.contextmanager.zza CD;

                {
                    this.CD = dataHolder == null ? null : new com.google.android.gms.contextmanager.zza(dataHolder);
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            });
            this.CA = null;
        }
    }

    @Override // com.google.android.gms.contextmanager.internal.zzh
    public void zza(final Status status, final DataHolder dataHolder, final DataHolder dataHolder2) throws RemoteException {
        if (this.Cy == null) {
            zzbu.zze("ContextManagerPendingResult", "Unexpected callback to onReadResult.");
        } else {
            this.Cy.setResult(new com.google.android.gms.contextmanager.zze() { // from class: com.google.android.gms.contextmanager.internal.zzf.1
                private final com.google.android.gms.contextmanager.zza CD;
                private final com.google.android.gms.contextmanager.zzf CE;

                {
                    this.CD = dataHolder == null ? null : new com.google.android.gms.contextmanager.zza(dataHolder);
                    this.CE = dataHolder2 != null ? new com.google.android.gms.contextmanager.zzf(dataHolder2) : null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            });
            this.Cy = null;
        }
    }

    @Override // com.google.android.gms.contextmanager.internal.zzh
    public void zza(final Status status, final FenceStateMapImpl fenceStateMapImpl) {
        if (this.CC == null) {
            zzbu.zze("ContextManagerPendingResult", "Unexpected callback to onFenceQueryResult");
        } else {
            this.CC.setResult(new FenceQueryResult() { // from class: com.google.android.gms.contextmanager.internal.zzf.5
                @Override // com.google.android.gms.awareness.fence.FenceQueryResult
                public FenceStateMap getFenceStateMap() {
                    return fenceStateMapImpl;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            });
        }
    }

    @Override // com.google.android.gms.contextmanager.internal.zzh
    public void zza(final Status status, final WriteBatchImpl writeBatchImpl) throws RemoteException {
        if (this.Cz == null) {
            zzbu.zze("ContextManagerPendingResult", "Unexpected callback to onWriteBatchResult");
        } else {
            this.Cz.setResult(new zzt() { // from class: com.google.android.gms.contextmanager.internal.zzf.2
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            });
            this.Cz = null;
        }
    }

    @Override // com.google.android.gms.contextmanager.internal.zzh
    public void zzh(Status status) throws RemoteException {
        if (this.Cx == null) {
            zzbu.zze("ContextManagerPendingResult", "Unexpected callback to onStatusResult.");
            return;
        }
        this.Cx.setResult(status);
        this.Cx = null;
        if (this.Cw != null) {
            this.Cw.zzai(status);
        }
    }
}
