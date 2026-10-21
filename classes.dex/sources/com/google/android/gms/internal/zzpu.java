package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes.dex */
public class zzpu implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    public final Api<?> pD;
    private final int sV;
    private zzqf sW;

    public zzpu(Api<?> api, int i) {
        this.pD = api;
        this.sV = i;
    }

    private void zzaox() {
        com.google.android.gms.common.internal.zzab.zzb(this.sW, "Callbacks must be attached to a GoogleApiClient instance before connecting the client.");
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(@Nullable Bundle bundle) {
        zzaox();
        this.sW.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        zzaox();
        this.sW.zza(connectionResult, this.pD, this.sV);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        zzaox();
        this.sW.onConnectionSuspended(i);
    }

    public void zza(zzqf zzqfVar) {
        this.sW = zzqfVar;
    }
}
