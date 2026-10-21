package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes.dex */
public final class zzrj {
    public static final Api.zzf<zzrn> bN = new Api.zzf<>();
    private static final Api.zza<zzrn, Api.ApiOptions.NoOptions> bO = new Api.zza<zzrn, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.internal.zzrj.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
        public zzrn zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzrn(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Common.API", bO, bN);
    public static final zzrk zh = new zzrl();
}
