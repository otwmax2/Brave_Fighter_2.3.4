package com.google.android.gms.contextmanager.internal;

import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.awareness.fence.FenceStateMap;
import com.google.android.gms.awareness.snapshot.internal.Snapshot;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
public class zzc {

    public static abstract class zza extends zzpr.zza<FenceQueryResult, zzd> {
        public zza(GoogleApiClient googleApiClient) {
            super(com.google.android.gms.contextmanager.zzc.API, googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzag, reason: merged with bridge method [inline-methods] */
        public FenceQueryResult zzc(final Status status) {
            return new FenceQueryResult() { // from class: com.google.android.gms.contextmanager.internal.zzc.zza.1
                @Override // com.google.android.gms.awareness.fence.FenceQueryResult
                public FenceStateMap getFenceStateMap() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    public static abstract class zzb extends zzpr.zza<com.google.android.gms.awareness.snapshot.internal.zzl, zzd> {
        public zzb(GoogleApiClient googleApiClient) {
            super(com.google.android.gms.contextmanager.zzc.API, googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzah, reason: merged with bridge method [inline-methods] */
        public com.google.android.gms.awareness.snapshot.internal.zzl zzc(final Status status) {
            return new com.google.android.gms.awareness.snapshot.internal.zzl() { // from class: com.google.android.gms.contextmanager.internal.zzc.zzb.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.awareness.snapshot.internal.zzl
                public Snapshot zzahi() {
                    return null;
                }
            };
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.contextmanager.internal.zzc$zzc, reason: collision with other inner class name */
    public static abstract class AbstractC0083zzc extends zzpr.zza<Status, zzd> {
        public AbstractC0083zzc(GoogleApiClient googleApiClient) {
            super(com.google.android.gms.contextmanager.zzc.API, googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }
}
