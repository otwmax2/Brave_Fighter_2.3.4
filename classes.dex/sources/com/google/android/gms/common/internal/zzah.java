package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes.dex */
public class zzah<T extends IInterface> extends zzk<T> {
    private final Api.zzg<T> zb;

    public zzah(Context context, Looper looper, int i, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, zzg zzgVar, Api.zzg<T> zzgVar2) {
        super(context, looper, i, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zb = zzgVar2;
    }

    public Api.zzg<T> zzatj() {
        return this.zb;
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected T zzbb(IBinder iBinder) {
        return (T) this.zb.zzbb(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected void zzc(int i, T t) {
        this.zb.zza(i, t);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return this.zb.zzra();
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzrb() {
        return this.zb.zzrb();
    }
}
