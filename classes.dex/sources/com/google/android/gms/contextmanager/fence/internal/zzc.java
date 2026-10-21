package com.google.android.gms.contextmanager.fence.internal;

import android.os.RemoteException;
import com.google.android.gms.awareness.FenceApi;
import com.google.android.gms.awareness.fence.FenceQueryRequest;
import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.awareness.fence.FenceUpdateRequest;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.contextmanager.internal.zzc;

/* JADX INFO: loaded from: classes.dex */
public class zzc implements FenceApi {
    @Override // com.google.android.gms.awareness.FenceApi
    public PendingResult<FenceQueryResult> queryFences(GoogleApiClient googleApiClient, final FenceQueryRequest fenceQueryRequest) {
        return googleApiClient.zzc(new zzc.zza(googleApiClient) { // from class: com.google.android.gms.contextmanager.fence.internal.zzc.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(com.google.android.gms.contextmanager.internal.zzd zzdVar) throws RemoteException {
                zzdVar.zza(this, (FenceQueryRequestImpl) fenceQueryRequest);
            }
        });
    }

    @Override // com.google.android.gms.awareness.FenceApi
    public PendingResult<Status> updateFences(GoogleApiClient googleApiClient, final FenceUpdateRequest fenceUpdateRequest) {
        return googleApiClient.zzc(new zzc.AbstractC0083zzc(googleApiClient) { // from class: com.google.android.gms.contextmanager.fence.internal.zzc.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(com.google.android.gms.contextmanager.internal.zzd zzdVar) throws RemoteException {
                zzdVar.zza(this, (FenceUpdateRequestImpl) fenceUpdateRequest);
            }
        });
    }
}
