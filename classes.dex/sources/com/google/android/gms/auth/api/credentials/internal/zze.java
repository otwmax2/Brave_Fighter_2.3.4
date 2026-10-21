package com.google.android.gms.auth.api.credentials.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
public final class zze implements CredentialsApi {

    private static class zza extends com.google.android.gms.auth.api.credentials.internal.zza {
        private zzpr.zzb<Status> ds;

        zza(zzpr.zzb<Status> zzbVar) {
            this.ds = zzbVar;
        }

        @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
        public void zzh(Status status) {
            this.ds.setResult(status);
        }
    }

    private PasswordSpecification zza(GoogleApiClient googleApiClient) {
        Auth.AuthCredentialsOptions authCredentialsOptionsZzafj = ((zzg) googleApiClient.zza(Auth.cE)).zzafj();
        return (authCredentialsOptionsZzafj == null || authCredentialsOptionsZzafj.zzafb() == null) ? PasswordSpecification.f446de : authCredentialsOptionsZzafj.zzafb();
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> delete(GoogleApiClient googleApiClient, final Credential credential) {
        return googleApiClient.zzd(new zzf<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zze.3
            @Override // com.google.android.gms.auth.api.credentials.internal.zzf
            protected void zza(Context context, zzk zzkVar) throws RemoteException {
                zzkVar.zza(new zza(this), new DeleteRequest(credential));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpt
            /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> disableAutoSignIn(GoogleApiClient googleApiClient) {
        return googleApiClient.zzd(new zzf<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zze.4
            @Override // com.google.android.gms.auth.api.credentials.internal.zzf
            protected void zza(Context context, zzk zzkVar) throws RemoteException {
                zzkVar.zza(new zza(this));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpt
            /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingIntent getHintPickerIntent(GoogleApiClient googleApiClient, HintRequest hintRequest) {
        zzab.zzb(googleApiClient, "client must not be null");
        zzab.zzb(hintRequest, "request must not be null");
        zzab.zzb(googleApiClient.zza(Auth.CREDENTIALS_API), "Auth.CREDENTIALS_API must be added to GoogleApiClient to use this API");
        return PendingIntent.getActivity(googleApiClient.getContext(), 2000, zzc.zza(googleApiClient.getContext(), hintRequest, zza(googleApiClient)), 268435456);
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<CredentialRequestResult> request(GoogleApiClient googleApiClient, final CredentialRequest credentialRequest) {
        return googleApiClient.zzc(new zzf<CredentialRequestResult>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zze.1
            @Override // com.google.android.gms.auth.api.credentials.internal.zzf
            protected void zza(Context context, zzk zzkVar) throws RemoteException {
                zzkVar.zza(new com.google.android.gms.auth.api.credentials.internal.zza() { // from class: com.google.android.gms.auth.api.credentials.internal.zze.1.1
                    @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
                    public void zza(Status status, Credential credential) {
                        zzc(new zzd(status, credential));
                    }

                    @Override // com.google.android.gms.auth.api.credentials.internal.zza, com.google.android.gms.auth.api.credentials.internal.zzj
                    public void zzh(Status status) {
                        zzc(zzd.zzi(status));
                    }
                }, credentialRequest);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpt
            /* JADX INFO: renamed from: zzj, reason: merged with bridge method [inline-methods] */
            public CredentialRequestResult zzc(Status status) {
                return zzd.zzi(status);
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> save(GoogleApiClient googleApiClient, final Credential credential) {
        return googleApiClient.zzd(new zzf<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.credentials.internal.zze.2
            @Override // com.google.android.gms.auth.api.credentials.internal.zzf
            protected void zza(Context context, zzk zzkVar) throws RemoteException {
                zzkVar.zza(new zza(this), new SaveRequest(credential));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpt
            /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
            public Status zzc(Status status) {
                return status;
            }
        });
    }
}
