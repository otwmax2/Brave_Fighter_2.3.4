package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
abstract class zznh extends zzpr.zza<ProxyApi.ProxyResult, zzne> {
    public zznh(GoogleApiClient googleApiClient) {
        super(Auth.PROXY_API, googleApiClient);
    }

    protected abstract void zza(Context context, zzng zzngVar) throws RemoteException;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzpr.zza
    public final void zza(zzne zzneVar) throws RemoteException {
        zza(zzneVar.getContext(), (zzng) zzneVar.zzarw());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzpt
    /* JADX INFO: renamed from: zzk, reason: merged with bridge method [inline-methods] */
    public ProxyApi.ProxyResult zzc(Status status) {
        return new zznj(status);
    }
}
