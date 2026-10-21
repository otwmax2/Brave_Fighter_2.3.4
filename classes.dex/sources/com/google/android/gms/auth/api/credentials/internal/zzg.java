package com.google.android.gms.auth.api.credentials.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.support.annotation.Nullable;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.internal.zzk;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes.dex */
public final class zzg extends com.google.android.gms.common.internal.zzk<zzk> {

    @Nullable
    private final Auth.AuthCredentialsOptions dt;

    public zzg(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Auth.AuthCredentialsOptions authCredentialsOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 68, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.dt = authCredentialsOptions;
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected Bundle zzaeu() {
        return this.dt == null ? new Bundle() : this.dt.zzaeu();
    }

    Auth.AuthCredentialsOptions zzafj() {
        return this.dt;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* JADX INFO: renamed from: zzcc, reason: merged with bridge method [inline-methods] */
    public zzk zzbb(IBinder iBinder) {
        return zzk.zza.zzce(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzrb() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }
}
