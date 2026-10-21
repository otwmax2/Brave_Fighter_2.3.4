package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzpr;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class zzqc implements zzqe {
    private final zzqf tm;

    public zzqc(zzqf zzqfVar) {
        this.tm = zzqfVar;
    }

    @Override // com.google.android.gms.internal.zzqe
    public void begin() {
        this.tm.zzapy();
        this.tm.sX.tZ = Collections.emptySet();
    }

    @Override // com.google.android.gms.internal.zzqe
    public void connect() {
        this.tm.zzapw();
    }

    @Override // com.google.android.gms.internal.zzqe
    public boolean disconnect() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzqe
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.zzqe
    public void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.internal.zzqe
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    @Override // com.google.android.gms.internal.zzqe
    public <A extends Api.zzb, R extends Result, T extends zzpr.zza<R, A>> T zzc(T t) {
        this.tm.sX.tS.add(t);
        return t;
    }

    @Override // com.google.android.gms.internal.zzqe
    public <A extends Api.zzb, T extends zzpr.zza<? extends Result, A>> T zzd(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
