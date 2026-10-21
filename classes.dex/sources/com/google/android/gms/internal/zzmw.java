package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.RemoteException;
import com.google.android.gms.auth.account.WorkAccount;
import com.google.android.gms.auth.account.WorkAccountApi;
import com.google.android.gms.auth.account.zza;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
public class zzmw implements WorkAccountApi {
    private static final Status cy = new Status(13);

    static class zza extends zza.AbstractBinderC0059zza {
        zza() {
        }

        public void zzay(boolean z) {
            throw new UnsupportedOperationException();
        }

        public void zzc(Account account) {
            throw new UnsupportedOperationException();
        }
    }

    static class zzb implements WorkAccountApi.AddAccountResult {
        private final Account aP;
        private final Status cc;

        public zzb(Status status, Account account) {
            this.cc = status;
            this.aP = account;
        }

        @Override // com.google.android.gms.auth.account.WorkAccountApi.AddAccountResult
        public Account getAccount() {
            return this.aP;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    static class zzc implements Result {
        private final Status cc;

        public zzc(Status status) {
            this.cc = status;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public PendingResult<WorkAccountApi.AddAccountResult> addWorkAccount(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zzd(new zzpr.zza<WorkAccountApi.AddAccountResult, zzmx>(WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zzmw.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(zzmx zzmxVar) throws RemoteException {
                ((com.google.android.gms.auth.account.zzb) zzmxVar.zzarw()).zza(new zza() { // from class: com.google.android.gms.internal.zzmw.2.1
                    @Override // com.google.android.gms.internal.zzmw.zza, com.google.android.gms.auth.account.zza
                    public void zzc(Account account) {
                        zzc(new zzb(account != null ? Status.sg : zzmw.cy, account));
                    }
                }, str);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpt
            /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
            public WorkAccountApi.AddAccountResult zzc(Status status) {
                return new zzb(status, null);
            }
        });
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public PendingResult<Result> removeWorkAccount(GoogleApiClient googleApiClient, final Account account) {
        return googleApiClient.zzd(new zzpr.zza<Result, zzmx>(WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zzmw.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(zzmx zzmxVar) throws RemoteException {
                ((com.google.android.gms.auth.account.zzb) zzmxVar.zzarw()).zza(new zza() { // from class: com.google.android.gms.internal.zzmw.3.1
                    @Override // com.google.android.gms.internal.zzmw.zza, com.google.android.gms.auth.account.zza
                    public void zzay(boolean z) {
                        zzc(new zzc(z ? Status.sg : zzmw.cy));
                    }
                }, account);
            }

            @Override // com.google.android.gms.internal.zzpt
            protected Result zzc(Status status) {
                return new zzc(status);
            }
        });
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public void setWorkAuthenticatorEnabled(GoogleApiClient googleApiClient, final boolean z) {
        googleApiClient.zzd(new zzpr.zza<Result, zzmx>(WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zzmw.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(zzmx zzmxVar) throws RemoteException {
                ((com.google.android.gms.auth.account.zzb) zzmxVar.zzarw()).zzaz(z);
            }

            @Override // com.google.android.gms.internal.zzpt
            protected Result zzc(Status status) {
                return null;
            }
        });
    }
}
