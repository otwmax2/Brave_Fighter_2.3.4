package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzh;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class zzd extends com.google.android.gms.common.internal.zzk<zzh> {
    private final GoogleSignInOptions ej;

    public zzd(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleSignInOptions googleSignInOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 91, zzgVar, connectionCallbacks, onConnectionFailedListener);
        googleSignInOptions = googleSignInOptions == null ? new GoogleSignInOptions.Builder().build() : googleSignInOptions;
        if (!zzgVar.zzasg().isEmpty()) {
            GoogleSignInOptions.Builder builder = new GoogleSignInOptions.Builder(googleSignInOptions);
            Iterator<Scope> it = zzgVar.zzasg().iterator();
            while (it.hasNext()) {
                builder.requestScopes(it.next(), new Scope[0]);
            }
            googleSignInOptions = builder.build();
        }
        this.ej = googleSignInOptions;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public boolean zzafz() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public Intent zzaga() {
        SignInConfiguration signInConfiguration = new SignInConfiguration(getContext().getPackageName(), this.ej);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setClass(getContext(), SignInHubActivity.class);
        intent.putExtra("config", signInConfiguration);
        return intent;
    }

    public GoogleSignInOptions zzagb() {
        return this.ej;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* JADX INFO: renamed from: zzci, reason: merged with bridge method [inline-methods] */
    public zzh zzbb(IBinder iBinder) {
        return zzh.zza.zzck(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzrb() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }
}
