package com.google.android.gms.internal;

import android.accounts.Account;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.identity.intents.AddressConstants;
import com.google.android.gms.identity.intents.UserAddressRequest;
import com.google.android.gms.internal.zzul;
import com.google.android.gms.internal.zzum;

/* JADX INFO: loaded from: classes.dex */
public class zzuk extends com.google.android.gms.common.internal.zzk<zzum> {
    private zza abB;
    private final String cf;
    private Activity mActivity;
    private final int mTheme;

    public static final class zza extends zzul.zza {
        private Activity mActivity;
        private final int sd;

        public zza(int i, Activity activity) {
            this.sd = i;
            this.mActivity = activity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setActivity(Activity activity) {
            this.mActivity = activity;
        }

        @Override // com.google.android.gms.internal.zzul
        public void zzj(int i, Bundle bundle) {
            if (i == 1) {
                Intent intent = new Intent();
                intent.putExtras(bundle);
                PendingIntent pendingIntentCreatePendingResult = this.mActivity.createPendingResult(this.sd, intent, 1073741824);
                if (pendingIntentCreatePendingResult == null) {
                    return;
                }
                try {
                    pendingIntentCreatePendingResult.send(1);
                    return;
                } catch (PendingIntent.CanceledException e) {
                    Log.w("AddressClientImpl", "Exception settng pending result", e);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(i, bundle != null ? (PendingIntent) bundle.getParcelable("com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT") : null);
            if (connectionResult.hasResolution()) {
                try {
                    connectionResult.startResolutionForResult(this.mActivity, this.sd);
                    return;
                } catch (IntentSender.SendIntentException e2) {
                    Log.w("AddressClientImpl", "Exception starting pending intent", e2);
                    return;
                }
            }
            try {
                PendingIntent pendingIntentCreatePendingResult2 = this.mActivity.createPendingResult(this.sd, new Intent(), 1073741824);
                if (pendingIntentCreatePendingResult2 != null) {
                    pendingIntentCreatePendingResult2.send(1);
                }
            } catch (PendingIntent.CanceledException e3) {
                Log.w("AddressClientImpl", "Exception setting pending result", e3);
            }
        }
    }

    public zzuk(Activity activity, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, int i, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(activity, looper, 12, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.cf = zzgVar.getAccountName();
        this.mActivity = activity;
        this.mTheme = i;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public void disconnect() {
        super.disconnect();
        if (this.abB != null) {
            this.abB.setActivity(null);
            this.abB = null;
        }
    }

    public void zza(UserAddressRequest userAddressRequest, int i) {
        zzbmr();
        this.abB = new zza(i, this.mActivity);
        try {
            Bundle bundle = new Bundle();
            bundle.putString("com.google.android.gms.identity.intents.EXTRA_CALLING_PACKAGE_NAME", getContext().getPackageName());
            if (!TextUtils.isEmpty(this.cf)) {
                bundle.putParcelable("com.google.android.gms.identity.intents.EXTRA_ACCOUNT", new Account(this.cf, "com.google"));
            }
            bundle.putInt("com.google.android.gms.identity.intents.EXTRA_THEME", this.mTheme);
            zzbmq().zza(this.abB, userAddressRequest, bundle);
        } catch (RemoteException e) {
            Log.e("AddressClientImpl", "Exception requesting user address", e);
            Bundle bundle2 = new Bundle();
            bundle2.putInt(AddressConstants.Extras.EXTRA_ERROR_CODE, AddressConstants.ErrorCodes.ERROR_CODE_NO_APPLICABLE_ADDRESSES);
            this.abB.zzj(1, bundle2);
        }
    }

    @Override // com.google.android.gms.common.internal.zzd
    public boolean zzarx() {
        return true;
    }

    protected zzum zzbmq() throws DeadObjectException {
        return (zzum) super.zzarw();
    }

    protected void zzbmr() {
        super.zzarv();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* JADX INFO: renamed from: zzgn, reason: merged with bridge method [inline-methods] */
    public zzum zzbb(IBinder iBinder) {
        return zzum.zza.zzgp(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.gms.identity.service.BIND";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzrb() {
        return "com.google.android.gms.identity.intents.internal.IAddressService";
    }
}
