package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzng;

/* JADX INFO: loaded from: classes.dex */
public final class zzne extends com.google.android.gms.common.internal.zzk<zzng> {
    private final Bundle du;

    public zzne(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Auth.zza zzaVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 16, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.du = zzaVar == null ? new Bundle() : zzaVar.zzafc();
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected Bundle zzaeu() {
        return this.du;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public boolean zzafk() {
        com.google.android.gms.common.internal.zzg zzgVarZzasr = zzasr();
        return (TextUtils.isEmpty(zzgVarZzasr.getAccountName()) || zzgVarZzasr.zzb(Auth.PROXY_API).isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* JADX INFO: renamed from: zzcf, reason: merged with bridge method [inline-methods] */
    public zzng zzbb(IBinder iBinder) {
        return zzng.zza.zzch(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.gms.auth.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzrb() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }
}
