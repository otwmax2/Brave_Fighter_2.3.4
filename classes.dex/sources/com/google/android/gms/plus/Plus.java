package com.google.android.gms.plus;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.util.zzv;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzvh;
import com.google.android.gms.internal.zzvi;
import com.google.android.gms.internal.zzvj;
import com.google.android.gms.internal.zzvk;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.PlusSession;
import com.google.android.gms.plus.internal.zze;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Plus {
    public static final Api.zzf<zze> bN = new Api.zzf<>();
    static final Api.zza<zze, PlusOptions> bO = new Api.zza<zze, PlusOptions>() { // from class: com.google.android.gms.plus.Plus.1
        @Override // com.google.android.gms.common.api.Api.zzd
        public int getPriority() {
            return 2;
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public zze zza(Context context, Looper looper, zzg zzgVar, PlusOptions plusOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            if (plusOptions == null) {
                plusOptions = new PlusOptions();
            }
            return new zze(context, looper, zzgVar, new PlusSession(zzgVar.zzaru().name, zzv.zzd(zzgVar.zzasg()), (String[]) plusOptions.ass.toArray(new String[0]), new String[0], context.getPackageName(), context.getPackageName(), null, new PlusCommonExtras()), connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<PlusOptions> API = new Api<>("Plus.API", bO, bN);
    public static final Scope SCOPE_PLUS_LOGIN = new Scope(Scopes.PLUS_LOGIN);
    public static final Scope SCOPE_PLUS_PROFILE = new Scope(Scopes.PLUS_ME);
    public static final People PeopleApi = new zzvk();

    @Deprecated
    public static final Account AccountApi = new zzvh();
    public static final zzb asp = new zzvj();
    public static final com.google.android.gms.plus.zza asq = new zzvi();

    public static final class PlusOptions implements Api.ApiOptions.Optional {
        final String asr;
        final Set<String> ass;

        public static final class Builder {
            String asr;
            final Set<String> ass = new HashSet();

            public Builder addActivityTypes(String... strArr) {
                zzab.zzb(strArr, "activityTypes may not be null.");
                for (String str : strArr) {
                    this.ass.add(str);
                }
                return this;
            }

            public PlusOptions build() {
                return new PlusOptions(this);
            }

            public Builder setServerClientId(String str) {
                this.asr = str;
                return this;
            }
        }

        private PlusOptions() {
            this.asr = null;
            this.ass = new HashSet();
        }

        private PlusOptions(Builder builder) {
            this.asr = builder.asr;
            this.ass = builder.ass;
        }

        public static Builder builder() {
            return new Builder();
        }
    }

    public static abstract class zza<R extends Result> extends zzpr.zza<R, zze> {
        public zza(GoogleApiClient googleApiClient) {
            super(Plus.bN, googleApiClient);
        }
    }

    private Plus() {
    }

    public static zze zzf(GoogleApiClient googleApiClient, boolean z) {
        zzab.zzb(googleApiClient != null, "GoogleApiClient parameter is required.");
        zzab.zza(googleApiClient.isConnected(), "GoogleApiClient must be connected.");
        zzab.zza(googleApiClient.zza(API), "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
        boolean zHasConnectedApi = googleApiClient.hasConnectedApi(API);
        if (z && !zHasConnectedApi) {
            throw new IllegalStateException("GoogleApiClient has an optional Plus.API and is not connected to Plus. Use GoogleApiClient.hasConnectedApi(Plus.API) to guard this call.");
        }
        if (zHasConnectedApi) {
            return (zze) googleApiClient.zza(bN);
        }
        return null;
    }
}
