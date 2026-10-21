package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzf;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes.dex */
public class zzi extends zzf.zza {
    private final Context mContext;

    public zzi(Context context) {
        this.mContext = context;
    }

    private void zzage() {
        if (GooglePlayServicesUtil.zze(this.mContext, Binder.getCallingUid())) {
            return;
        }
        throw new SecurityException(new StringBuilder(52).append("Calling UID ").append(Binder.getCallingUid()).append(" is not Google Play services.").toString());
    }

    private void zzagf() {
        zzk zzkVarZzbc = zzk.zzbc(this.mContext);
        GoogleSignInAccount googleSignInAccountZzagj = zzkVarZzbc.zzagj();
        GoogleSignInOptions googleSignInOptionsZzagk = GoogleSignInOptions.DEFAULT_SIGN_IN;
        if (googleSignInAccountZzagj != null) {
            googleSignInOptionsZzagk = zzkVarZzbc.zzagk();
        }
        GoogleApiClient googleApiClientBuild = new GoogleApiClient.Builder(this.mContext).addApi(Auth.GOOGLE_SIGN_IN_API, googleSignInOptionsZzagk).build();
        try {
            if (googleApiClientBuild.blockingConnect().isSuccess()) {
                if (googleSignInAccountZzagj != null) {
                    Auth.GoogleSignInApi.revokeAccess(googleApiClientBuild);
                } else {
                    googleApiClientBuild.clearDefaultAccountAndReconnect();
                }
            }
        } finally {
            googleApiClientBuild.disconnect();
        }
    }

    @Override // com.google.android.gms.auth.api.signin.internal.zzf
    public void zzagd() {
        zzage();
        zzagf();
    }
}
