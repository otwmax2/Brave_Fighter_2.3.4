package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zznc;

/* JADX INFO: loaded from: classes.dex */
public class zzna extends com.google.android.gms.common.internal.zzk<zznc> {
    public zzna(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 74, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* JADX INFO: renamed from: zzbz, reason: merged with bridge method [inline-methods] */
    public zznc zzbb(IBinder iBinder) {
        return zznc.zza.zzcb(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    @NonNull
    protected String zzra() {
        return "com.google.android.gms.auth.api.accountactivationstate.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    @NonNull
    protected String zzrb() {
        return "com.google.android.gms.auth.api.accountactivationstate.internal.IAccountActivationStateService";
    }
}
