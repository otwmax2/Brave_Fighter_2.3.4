package com.google.android.gms.contextmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.awareness.AwarenessOptions;
import com.google.android.gms.awareness.FenceApi;
import com.google.android.gms.awareness.SnapshotApi;
import com.google.android.gms.awareness.snapshot.internal.zzi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes.dex */
public final class zzc {
    public static final Api.zzf<com.google.android.gms.contextmanager.internal.zzd> bN = new Api.zzf<>();
    public static final FenceApi FenceApi = new com.google.android.gms.contextmanager.fence.internal.zzc();
    public static final SnapshotApi SnapshotApi = new zzi();
    private static final Api.zza<com.google.android.gms.contextmanager.internal.zzd, AwarenessOptions> bO = new Api.zza<com.google.android.gms.contextmanager.internal.zzd, AwarenessOptions>() { // from class: com.google.android.gms.contextmanager.zzc.1
        @Override // com.google.android.gms.common.api.Api.zza
        public com.google.android.gms.contextmanager.internal.zzd zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, AwarenessOptions awarenessOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new com.google.android.gms.contextmanager.internal.zzd(context, looper, zzgVar, awarenessOptions, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<AwarenessOptions> API = new Api<>("ContextManager.API", bO, bN);
}
