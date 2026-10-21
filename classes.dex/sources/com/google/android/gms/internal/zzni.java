package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

/* JADX INFO: loaded from: classes.dex */
public class zzni implements ProxyApi {
    @Override // com.google.android.gms.auth.api.proxy.ProxyApi
    public PendingResult<ProxyApi.ProxyResult> performProxyRequest(GoogleApiClient googleApiClient, final ProxyRequest proxyRequest) {
        com.google.android.gms.common.internal.zzab.zzaa(googleApiClient);
        com.google.android.gms.common.internal.zzab.zzaa(proxyRequest);
        return googleApiClient.zzd(new zznh(googleApiClient) { // from class: com.google.android.gms.internal.zzni.1
            @Override // com.google.android.gms.internal.zznh
            protected void zza(Context context, zzng zzngVar) throws RemoteException {
                zzngVar.zza(new zznd() { // from class: com.google.android.gms.internal.zzni.1.1
                    @Override // com.google.android.gms.internal.zznd, com.google.android.gms.internal.zznf
                    public void zza(ProxyResponse proxyResponse) {
                        zzc(new zznj(proxyResponse));
                    }
                }, proxyRequest);
            }
        });
    }
}
