package com.google.android.gms.auth.api.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzqv;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class zzc implements GoogleSignInApi {

    private abstract class zza<R extends Result> extends zzpr.zza<R, zzd> {
        public zza(GoogleApiClient googleApiClient) {
            super(Auth.GOOGLE_SIGN_IN_API, googleApiClient);
        }
    }

    private OptionalPendingResult<GoogleSignInResult> zza(GoogleApiClient googleApiClient, final GoogleSignInOptions googleSignInOptions) {
        Log.d("GoogleSignInApiImpl", "trySilentSignIn");
        return new zzqv(googleApiClient.zzc(new zza<GoogleSignInResult>(googleApiClient) { // from class: com.google.android.gms.auth.api.signin.internal.zzc.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(zzd zzdVar) throws RemoteException {
                final zzk zzkVarZzbc = zzk.zzbc(zzdVar.getContext());
                ((zzh) zzdVar.zzarw()).zza(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zzc.1.1
                    @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                    public void zza(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException {
                        if (googleSignInAccount != null) {
                            zzkVarZzbc.zzb(googleSignInAccount, googleSignInOptions);
                        }
                        zzc(new GoogleSignInResult(googleSignInAccount, status));
                    }
                }, googleSignInOptions);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpt
            /* JADX INFO: renamed from: zzn, reason: merged with bridge method [inline-methods] */
            public GoogleSignInResult zzc(Status status) {
                return new GoogleSignInResult(null, status);
            }
        }));
    }

    private boolean zza(Account account, Account account2) {
        return account == null ? account2 == null : account.equals(account2);
    }

    private GoogleSignInOptions zzb(GoogleApiClient googleApiClient) {
        return ((zzd) googleApiClient.zza(Auth.cG)).zzagb();
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public Intent getSignInIntent(GoogleApiClient googleApiClient) {
        zzab.zzaa(googleApiClient);
        return ((zzd) googleApiClient.zza(Auth.cG)).zzaga();
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public GoogleSignInResult getSignInResultFromIntent(Intent intent) {
        if (intent == null || !(intent.hasExtra("googleSignInStatus") || intent.hasExtra("googleSignInAccount"))) {
            return null;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        if (googleSignInAccount != null) {
            status = Status.sg;
        }
        return new GoogleSignInResult(googleSignInAccount, status);
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public PendingResult<Status> revokeAccess(GoogleApiClient googleApiClient) {
        zzk.zzbc(googleApiClient.getContext()).zzagl();
        Iterator<GoogleApiClient> it = GoogleApiClient.zzaob().iterator();
        while (it.hasNext()) {
            it.next().zzaoc();
        }
        return googleApiClient.zzd(new zza<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.signin.internal.zzc.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(zzd zzdVar) throws RemoteException {
                ((zzh) zzdVar.zzarw()).zzc(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zzc.3.1
                    @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                    public void zzm(Status status) throws RemoteException {
                        zzc(status);
                    }
                }, zzdVar.zzagb());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpt
            /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public PendingResult<Status> signOut(GoogleApiClient googleApiClient) {
        zzk.zzbc(googleApiClient.getContext()).zzagl();
        Iterator<GoogleApiClient> it = GoogleApiClient.zzaob().iterator();
        while (it.hasNext()) {
            it.next().zzaoc();
        }
        return googleApiClient.zzd(new zza<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.signin.internal.zzc.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(zzd zzdVar) throws RemoteException {
                ((zzh) zzdVar.zzarw()).zzb(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zzc.2.1
                    @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzg
                    public void zzl(Status status) throws RemoteException {
                        zzc(status);
                    }
                }, zzdVar.zzagb());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpt
            /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public OptionalPendingResult<GoogleSignInResult> silentSignIn(GoogleApiClient googleApiClient) {
        GoogleSignInOptions googleSignInOptionsZzb = zzb(googleApiClient);
        GoogleSignInResult googleSignInResultZza = zza(googleApiClient.getContext(), googleSignInOptionsZzb);
        return googleSignInResultZza != null ? PendingResults.zzb(googleSignInResultZza, googleApiClient) : zza(googleApiClient, googleSignInOptionsZzb);
    }

    public GoogleSignInResult zza(Context context, GoogleSignInOptions googleSignInOptions) {
        GoogleSignInAccount googleSignInAccountZzagj;
        Log.d("GoogleSignInApiImpl", "getSavedSignInResultIfEligible");
        zzab.zzaa(googleSignInOptions);
        zzk zzkVarZzbc = zzk.zzbc(context);
        GoogleSignInOptions googleSignInOptionsZzagk = zzkVarZzbc.zzagk();
        if (googleSignInOptionsZzagk == null || !zza(googleSignInOptionsZzagk.getAccount(), googleSignInOptions.getAccount()) || googleSignInOptions.zzafs()) {
            return null;
        }
        if ((!googleSignInOptions.zzafr() || (googleSignInOptionsZzagk.zzafr() && googleSignInOptions.zzafu().equals(googleSignInOptionsZzagk.zzafu()))) && new HashSet(googleSignInOptionsZzagk.zzafq()).containsAll(new HashSet(googleSignInOptions.zzafq())) && (googleSignInAccountZzagj = zzkVarZzbc.zzagj()) != null && !googleSignInAccountZzagj.zza()) {
            return new GoogleSignInResult(googleSignInAccountZzagj, Status.sg);
        }
        return null;
    }
}
