package com.google.android.gms.auth.account;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzmw;
import com.google.android.gms.internal.zzmx;

/* JADX INFO: loaded from: classes.dex */
public class WorkAccount {
    private static final Api.zzf<zzmx> bN = new Api.zzf<>();
    private static final Api.zza<zzmx, Api.ApiOptions.NoOptions> bO = new Api.zza<zzmx, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.auth.account.WorkAccount.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
        public zzmx zza(Context context, Looper looper, zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzmx(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("WorkAccount.API", bO, bN);
    public static final WorkAccountApi WorkAccountApi = new zzmw();

    private WorkAccount() {
    }
}
