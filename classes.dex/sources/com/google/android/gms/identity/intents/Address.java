package com.google.android.gms.identity.intents;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzuk;

/* JADX INFO: loaded from: classes.dex */
public final class Address {
    static final Api.zzf<zzuk> bN = new Api.zzf<>();
    private static final Api.zza<zzuk, AddressOptions> bO = new Api.zza<zzuk, AddressOptions>() { // from class: com.google.android.gms.identity.intents.Address.1
        @Override // com.google.android.gms.common.api.Api.zza
        public zzuk zza(Context context, Looper looper, zzg zzgVar, AddressOptions addressOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            zzab.zzb(context instanceof Activity, "An Activity must be used for Address APIs");
            if (addressOptions == null) {
                addressOptions = new AddressOptions();
            }
            return new zzuk((Activity) context, looper, zzgVar, addressOptions.theme, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<AddressOptions> API = new Api<>("Address.API", bO, bN);

    public static final class AddressOptions implements Api.ApiOptions.HasOptions {
        public final int theme;

        public AddressOptions() {
            this.theme = 0;
        }

        public AddressOptions(int i) {
            this.theme = i;
        }
    }

    private static abstract class zza extends zzpr.zza<Status, zzuk> {
        public zza(GoogleApiClient googleApiClient) {
            super(Address.API, googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }

    public static void requestUserAddress(GoogleApiClient googleApiClient, final UserAddressRequest userAddressRequest, final int i) {
        googleApiClient.zzc(new zza(googleApiClient) { // from class: com.google.android.gms.identity.intents.Address.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(zzuk zzukVar) throws RemoteException {
                zzukVar.zza(userAddressRequest, i);
                zzc(Status.sg);
            }
        });
    }
}
