package com.google.android.gms.contextmanager.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.awareness.AwarenessOptions;
import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.awareness.snapshot.internal.SnapshotRequest;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.contextmanager.fence.internal.FenceQueryRequestImpl;
import com.google.android.gms.contextmanager.fence.internal.FenceUpdateRequestImpl;
import com.google.android.gms.contextmanager.internal.zzf;
import com.google.android.gms.contextmanager.internal.zzi;
import com.google.android.gms.internal.zzbs;
import com.google.android.gms.internal.zzbv;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
public class zzd extends com.google.android.gms.common.internal.zzk<zzi> {
    private static zzbs.zza Cq = zzbs.zza.zzahq;
    private final ContextManagerClientInfo Cr;
    private zzbv<com.google.android.gms.awareness.fence.zza, com.google.android.gms.contextmanager.fence.internal.zze> Cs;
    private final Looper zzahv;

    public zzd(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, AwarenessOptions awarenessOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 47, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzahv = looper;
        String str = zzgVar.getAccount() == null ? "@@ContextManagerNullAccount@@" : zzgVar.getAccount().name;
        this.Cr = awarenessOptions == null ? ContextManagerClientInfo.zzs(context, str) : ContextManagerClientInfo.zza(context, str, awarenessOptions);
    }

    public static Handler zza(Looper looper) {
        return Cq == null ? zzbs.zza.zzahq.zza(looper) : Cq.zza(looper);
    }

    private zzbv<com.google.android.gms.awareness.fence.zza, com.google.android.gms.contextmanager.fence.internal.zze> zzaxv() {
        if (this.Cs == null) {
            this.Cs = new zzbv<>(this.zzahv, com.google.android.gms.contextmanager.fence.internal.zze.BN);
        }
        return this.Cs;
    }

    public void zza(zzpr.zzb<com.google.android.gms.awareness.snapshot.internal.zzl> zzbVar, SnapshotRequest snapshotRequest) throws RemoteException {
        zzarv();
        ((zzi) zzarw()).zza(zzf.zzd(zzbVar), this.Cr.getPackageName(), this.Cr.getAccountName(), this.Cr.zzagm(), snapshotRequest);
    }

    public void zza(zzpr.zzb<FenceQueryResult> zzbVar, FenceQueryRequestImpl fenceQueryRequestImpl) throws RemoteException {
        zzarv();
        ((zzi) zzarw()).zza(zzf.zze(zzbVar), this.Cr.getPackageName(), this.Cr.getAccountName(), this.Cr.zzagm(), fenceQueryRequestImpl);
    }

    public void zza(zzpr.zzb<Status> zzbVar, FenceUpdateRequestImpl fenceUpdateRequestImpl) throws RemoteException {
        zzarv();
        fenceUpdateRequestImpl.zza(zzaxv());
        ((zzi) zzarw()).zza(zzf.zza(zzbVar, (zzf.zza) null), this.Cr.getPackageName(), this.Cr.getAccountName(), this.Cr.zzagm(), fenceUpdateRequestImpl);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected Bundle zzaeu() {
        Bundle bundle = new Bundle();
        bundle.putByteArray("com.google.android.contextmanager.service.args", this.Cr.toByteArray());
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.zzd
    public boolean zzarx() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* JADX INFO: renamed from: zzef, reason: merged with bridge method [inline-methods] */
    public zzi zzbb(IBinder iBinder) {
        return zzi.zza.zzei(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.contextmanager.service.ContextManagerService.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzrb() {
        return "com.google.android.gms.contextmanager.internal.IContextManagerService";
    }
}
