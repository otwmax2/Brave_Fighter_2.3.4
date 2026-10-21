package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.Plus;

/* JADX INFO: loaded from: classes.dex */
public final class zzvh implements Account {

    private static abstract class zza extends Plus.zza<Status> {
        private zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }

    @Override // com.google.android.gms.plus.Account
    public void clearDefaultAccount(GoogleApiClient googleApiClient) {
        com.google.android.gms.plus.internal.zze zzeVarZzf = Plus.zzf(googleApiClient, false);
        if (zzeVarZzf != null) {
            zzeVarZzf.zzbyf();
        }
    }

    @Override // com.google.android.gms.plus.Account
    public String getAccountName(GoogleApiClient googleApiClient) {
        return Plus.zzf(googleApiClient, true).getAccountName();
    }

    @Override // com.google.android.gms.plus.Account
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<Status> revokeAccessAndDisconnect(GoogleApiClient googleApiClient) {
        return googleApiClient.zzd(new zza(googleApiClient) { // from class: com.google.android.gms.internal.zzvh.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zzeVar.zzw(this);
            }
        });
    }
}
