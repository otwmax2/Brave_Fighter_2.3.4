package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
abstract class zzf<R extends Result> extends zzpr.zza<R, zzg> {
    zzf(GoogleApiClient googleApiClient) {
        super(Auth.CREDENTIALS_API, googleApiClient);
    }

    protected abstract void zza(Context context, zzk zzkVar) throws RemoteException;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzpr.zza
    public final void zza(zzg zzgVar) throws RemoteException {
        zza(zzgVar.getContext(), (zzk) zzgVar.zzarw());
    }
}
