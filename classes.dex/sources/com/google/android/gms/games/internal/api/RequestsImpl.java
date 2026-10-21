package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class RequestsImpl implements Requests {

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.RequestsImpl$4, reason: invalid class name */
    class AnonymousClass4 extends SendRequestImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (String) null, (String[]) null, 0, (byte[]) null, 0);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.RequestsImpl$5, reason: invalid class name */
    class AnonymousClass5 extends SendRequestImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (String) null, (String[]) null, 0, (byte[]) null, 0);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.RequestsImpl$6, reason: invalid class name */
    class AnonymousClass6 extends UpdateRequestsImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (String) null, (String) null, (String[]) null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.RequestsImpl$7, reason: invalid class name */
    class AnonymousClass7 extends LoadRequestsImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (String) null, (String) null, 0, 0, 0);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.RequestsImpl$8, reason: invalid class name */
    class AnonymousClass8 extends LoadRequestSummariesImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzg(this, null, 0);
        }
    }

    private static abstract class LoadRequestSummariesImpl extends Games.BaseGamesApiMethodImpl<Requests.LoadRequestSummariesResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzck, reason: merged with bridge method [inline-methods] */
        public Requests.LoadRequestSummariesResult zzc(final Status status) {
            return new Requests.LoadRequestSummariesResult() { // from class: com.google.android.gms.games.internal.api.RequestsImpl.LoadRequestSummariesImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.common.api.Releasable
                public void release() {
                }
            };
        }
    }

    private static abstract class LoadRequestsImpl extends Games.BaseGamesApiMethodImpl<Requests.LoadRequestsResult> {
        private LoadRequestsImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzcl, reason: merged with bridge method [inline-methods] */
        public Requests.LoadRequestsResult zzc(final Status status) {
            return new Requests.LoadRequestsResult() { // from class: com.google.android.gms.games.internal.api.RequestsImpl.LoadRequestsImpl.1
                @Override // com.google.android.gms.games.request.Requests.LoadRequestsResult
                public GameRequestBuffer getRequests(int i) {
                    return new GameRequestBuffer(DataHolder.zzfp(status.getStatusCode()));
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.common.api.Releasable
                public void release() {
                }
            };
        }
    }

    private static abstract class SendRequestImpl extends Games.BaseGamesApiMethodImpl<Requests.SendRequestResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzcm, reason: merged with bridge method [inline-methods] */
        public Requests.SendRequestResult zzc(final Status status) {
            return new Requests.SendRequestResult() { // from class: com.google.android.gms.games.internal.api.RequestsImpl.SendRequestImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    private static abstract class UpdateRequestsImpl extends Games.BaseGamesApiMethodImpl<Requests.UpdateRequestsResult> {
        private UpdateRequestsImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzcn, reason: merged with bridge method [inline-methods] */
        public Requests.UpdateRequestsResult zzc(final Status status) {
            return new Requests.UpdateRequestsResult() { // from class: com.google.android.gms.games.internal.api.RequestsImpl.UpdateRequestsImpl.1
                @Override // com.google.android.gms.games.request.Requests.UpdateRequestsResult
                public Set<String> getRequestIds() {
                    return null;
                }

                @Override // com.google.android.gms.games.request.Requests.UpdateRequestsResult
                public int getRequestOutcome(String str) {
                    String strValueOf = String.valueOf(str);
                    throw new IllegalArgumentException(strValueOf.length() != 0 ? "Unknown request ID ".concat(strValueOf) : new String("Unknown request ID "));
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.common.api.Releasable
                public void release() {
                }
            };
        }
    }

    @Override // com.google.android.gms.games.request.Requests
    public PendingResult<Requests.UpdateRequestsResult> acceptRequest(GoogleApiClient googleApiClient, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        return acceptRequests(googleApiClient, arrayList);
    }

    @Override // com.google.android.gms.games.request.Requests
    public PendingResult<Requests.UpdateRequestsResult> acceptRequests(GoogleApiClient googleApiClient, List<String> list) {
        final String[] strArr = list == null ? null : (String[]) list.toArray(new String[list.size()]);
        return googleApiClient.zzd(new UpdateRequestsImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.RequestsImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzb(this, strArr);
            }
        });
    }

    @Override // com.google.android.gms.games.request.Requests
    public PendingResult<Requests.UpdateRequestsResult> dismissRequest(GoogleApiClient googleApiClient, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        return dismissRequests(googleApiClient, arrayList);
    }

    @Override // com.google.android.gms.games.request.Requests
    public PendingResult<Requests.UpdateRequestsResult> dismissRequests(GoogleApiClient googleApiClient, List<String> list) {
        final String[] strArr = list == null ? null : (String[]) list.toArray(new String[list.size()]);
        return googleApiClient.zzd(new UpdateRequestsImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.RequestsImpl.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzc(this, strArr);
            }
        });
    }

    @Override // com.google.android.gms.games.request.Requests
    public ArrayList<GameRequest> getGameRequestsFromBundle(Bundle bundle) {
        if (bundle == null || !bundle.containsKey(Requests.EXTRA_REQUESTS)) {
            return new ArrayList<>();
        }
        ArrayList arrayList = (ArrayList) bundle.get(Requests.EXTRA_REQUESTS);
        ArrayList<GameRequest> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList2.add((GameRequest) arrayList.get(i));
        }
        return arrayList2;
    }

    @Override // com.google.android.gms.games.request.Requests
    public ArrayList<GameRequest> getGameRequestsFromInboxResponse(Intent intent) {
        return intent == null ? new ArrayList<>() : getGameRequestsFromBundle(intent.getExtras());
    }

    @Override // com.google.android.gms.games.request.Requests
    public Intent getInboxIntent(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzbir();
    }

    @Override // com.google.android.gms.games.request.Requests
    public int getMaxLifetimeDays(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzbit();
    }

    @Override // com.google.android.gms.games.request.Requests
    public int getMaxPayloadSize(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzbis();
    }

    @Override // com.google.android.gms.games.request.Requests
    public Intent getSendIntent(GoogleApiClient googleApiClient, int i, byte[] bArr, int i2, Bitmap bitmap, String str) {
        return Games.zzi(googleApiClient).zza(i, bArr, i2, bitmap, str);
    }

    @Override // com.google.android.gms.games.request.Requests
    public PendingResult<Requests.LoadRequestsResult> loadRequests(GoogleApiClient googleApiClient, final int i, final int i2, final int i3) {
        return googleApiClient.zzc(new LoadRequestsImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.RequestsImpl.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, i, i2, i3);
            }
        });
    }

    @Override // com.google.android.gms.games.request.Requests
    public void registerRequestListener(GoogleApiClient googleApiClient, OnRequestReceivedListener onRequestReceivedListener) {
        GamesClientImpl gamesClientImplZzb = Games.zzb(googleApiClient, false);
        if (gamesClientImplZzb != null) {
            gamesClientImplZzb.zzd(googleApiClient.zzt(onRequestReceivedListener));
        }
    }

    @Override // com.google.android.gms.games.request.Requests
    public void unregisterRequestListener(GoogleApiClient googleApiClient) {
        GamesClientImpl gamesClientImplZzb = Games.zzb(googleApiClient, false);
        if (gamesClientImplZzb != null) {
            gamesClientImplZzb.zzbim();
        }
    }
}
