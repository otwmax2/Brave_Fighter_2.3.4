package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.auth.account.zzb;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes.dex */
public class zzmx extends com.google.android.gms.common.internal.zzk<com.google.android.gms.auth.account.zzb> {
    public zzmx(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 120, zzgVar, connectionCallbacks, onConnectionFailedListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* JADX INFO: renamed from: zzby, reason: merged with bridge method [inline-methods] */
    public com.google.android.gms.auth.account.zzb zzbb(IBinder iBinder) {
        return zzb.zza.zzbx(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.gms.auth.account.workaccount.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzrb() {
        return "com.google.android.gms.auth.account.IWorkAccountService";
    }
}
