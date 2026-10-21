package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.auth.api.credentials.internal.zze;
import com.google.android.gms.auth.api.credentials.internal.zzg;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzc;
import com.google.android.gms.auth.api.signin.internal.zzd;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzmy;
import com.google.android.gms.internal.zzmz;
import com.google.android.gms.internal.zzna;
import com.google.android.gms.internal.zzne;
import com.google.android.gms.internal.zzni;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Auth {
    public static final Api.zzf<zzne> cD = new Api.zzf<>();
    public static final Api.zzf<zzg> cE = new Api.zzf<>();
    public static final Api.zzf<zzna> cF = new Api.zzf<>();
    public static final Api.zzf<zzd> cG = new Api.zzf<>();
    private static final Api.zza<zzne, zza> cH = new Api.zza<zzne, zza>() { // from class: com.google.android.gms.auth.api.Auth.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzne zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, zza zzaVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzne(context, looper, zzgVar, zzaVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    private static final Api.zza<zzg, AuthCredentialsOptions> cI = new Api.zza<zzg, AuthCredentialsOptions>() { // from class: com.google.android.gms.auth.api.Auth.2
        @Override // com.google.android.gms.common.api.Api.zza
        public zzg zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, AuthCredentialsOptions authCredentialsOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzg(context, looper, zzgVar, authCredentialsOptions, connectionCallbacks, onConnectionFailedListener);
        }
    };
    private static final Api.zza<zzna, Api.ApiOptions.NoOptions> cJ = new Api.zza<zzna, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.auth.api.Auth.3
        @Override // com.google.android.gms.common.api.Api.zza
        /* JADX INFO: renamed from: zzd, reason: merged with bridge method [inline-methods] */
        public zzna zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzna(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    private static final Api.zza<zzd, GoogleSignInOptions> cK = new Api.zza<zzd, GoogleSignInOptions>() { // from class: com.google.android.gms.auth.api.Auth.4
        @Override // com.google.android.gms.common.api.Api.zza
        public zzd zza(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, @Nullable GoogleSignInOptions googleSignInOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzd(context, looper, zzgVar, googleSignInOptions, connectionCallbacks, onConnectionFailedListener);
        }

        @Override // com.google.android.gms.common.api.Api.zzd
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public List<Scope> zzq(@Nullable GoogleSignInOptions googleSignInOptions) {
            return googleSignInOptions == null ? Collections.emptyList() : googleSignInOptions.zzafq();
        }
    };
    public static final Api<zza> PROXY_API = new Api<>("Auth.PROXY_API", cH, cD);
    public static final Api<AuthCredentialsOptions> CREDENTIALS_API = new Api<>("Auth.CREDENTIALS_API", cI, cE);
    public static final Api<GoogleSignInOptions> GOOGLE_SIGN_IN_API = new Api<>("Auth.GOOGLE_SIGN_IN_API", cK, cG);
    public static final Api<Api.ApiOptions.NoOptions> cL = new Api<>("Auth.ACCOUNT_STATUS_API", cJ, cF);
    public static final ProxyApi ProxyApi = new zzni();
    public static final CredentialsApi CredentialsApi = new zze();
    public static final zzmy cM = new zzmz();
    public static final GoogleSignInApi GoogleSignInApi = new zzc();

    public static final class AuthCredentialsOptions implements Api.ApiOptions.Optional {

        public static class Builder {

            @NonNull
            private PasswordSpecification cN = PasswordSpecification.f446de;
        }

        public Bundle zzaeu() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", null);
            bundle.putParcelable("password_specification", null);
            return bundle;
        }

        public PasswordSpecification zzafb() {
            return null;
        }
    }

    public static final class zza implements Api.ApiOptions.Optional {
        public Bundle zzafc() {
            return new Bundle((Bundle) null);
        }
    }

    private Auth() {
    }
}
