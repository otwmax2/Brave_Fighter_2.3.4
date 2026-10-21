package com.google.android.gms.auth.api.signin.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.content.Loader;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.SignInAccount;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.ironsource.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: loaded from: classes.dex */
@KeepName
public class SignInHubActivity extends FragmentActivity {
    private zzk eo;
    private SignInConfiguration ep;
    private boolean eq;
    private int er;
    private Intent es;

    private class zza implements LoaderManager.LoaderCallbacks<Void> {
        private zza() {
        }

        @Override // android.support.v4.app.LoaderManager.LoaderCallbacks
        public Loader<Void> onCreateLoader(int i, Bundle bundle) {
            return new zzb(SignInHubActivity.this, GoogleApiClient.zzaob());
        }

        @Override // android.support.v4.app.LoaderManager.LoaderCallbacks
        public void onLoaderReset(Loader<Void> loader) {
        }

        @Override // android.support.v4.app.LoaderManager.LoaderCallbacks
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void onLoadFinished(Loader<Void> loader, Void r5) {
            SignInHubActivity.this.setResult(SignInHubActivity.this.er, SignInHubActivity.this.es);
            SignInHubActivity.this.finish();
        }
    }

    private void zza(int i, Intent intent) {
        if (intent != null) {
            SignInAccount signInAccount = (SignInAccount) intent.getParcelableExtra(GoogleSignInApi.EXTRA_SIGN_IN_ACCOUNT);
            if (signInAccount != null && signInAccount.zzafw() != null) {
                GoogleSignInAccount googleSignInAccountZzafw = signInAccount.zzafw();
                this.eo.zzb(googleSignInAccountZzafw, this.ep.zzagh());
                intent.removeExtra(GoogleSignInApi.EXTRA_SIGN_IN_ACCOUNT);
                intent.putExtra("googleSignInAccount", googleSignInAccountZzafw);
                this.eq = true;
                this.er = i;
                this.es = intent;
                zzagi();
                return;
            }
            if (intent.hasExtra(IronSourceConstants.ERROR_CODE_KEY)) {
                zzde(intent.getIntExtra(IronSourceConstants.ERROR_CODE_KEY, 8));
                return;
            }
        }
        zzde(8);
    }

    private void zzagi() {
        getSupportLoaderManager().initLoader(0, null, new zza());
    }

    private void zzde(int i) {
        Status status = new Status(i);
        Intent intent = new Intent();
        intent.putExtra("googleSignInStatus", status);
        setResult(0, intent);
        finish();
    }

    private void zzj(Intent intent) {
        intent.setPackage("com.google.android.gms");
        intent.putExtra("config", this.ep);
        try {
            startActivityForResult(intent, 40962);
        } catch (ActivityNotFoundException e) {
            Log.w("AuthSignInClient", "Could not launch sign in Intent. Google Play Service is probably being updated...");
            zzde(8);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        setResult(0);
        switch (i) {
            case 40962:
                zza(i2, intent);
                break;
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.eo = zzk.zzbc(this);
        Intent intent = getIntent();
        if (!"com.google.android.gms.auth.GOOGLE_SIGN_IN".equals(intent.getAction())) {
            String strValueOf = String.valueOf(intent.getAction());
            Log.e("AuthSignInClient", strValueOf.length() != 0 ? "Unknown action: ".concat(strValueOf) : new String("Unknown action: "));
            finish();
        }
        this.ep = (SignInConfiguration) intent.getParcelableExtra("config");
        if (this.ep == null) {
            Log.e("AuthSignInClient", "Activity started with invalid configuration.");
            setResult(0);
            finish();
        } else {
            if (bundle == null) {
                zzj(new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN"));
                return;
            }
            this.eq = bundle.getBoolean("signingInGoogleApiClients");
            if (this.eq) {
                this.er = bundle.getInt("signInResultCode");
                this.es = (Intent) bundle.getParcelable("signInResultData");
                zzagi();
            }
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("signingInGoogleApiClients", this.eq);
        if (this.eq) {
            bundle.putInt("signInResultCode", this.er);
            bundle.putParcelable("signInResultData", this.es);
        }
    }
}
