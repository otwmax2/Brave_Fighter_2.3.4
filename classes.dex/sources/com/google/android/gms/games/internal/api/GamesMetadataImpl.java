package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.internal.GamesClientImpl;

/* JADX INFO: loaded from: classes.dex */
public final class GamesMetadataImpl implements GamesMetadata {

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.GamesMetadataImpl$2, reason: invalid class name */
    class AnonymousClass2 extends LoadGameInstancesImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzj(this, (String) null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.GamesMetadataImpl$3, reason: invalid class name */
    class AnonymousClass3 extends LoadGameSearchSuggestionsImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzk(this, (String) null);
        }
    }

    private static abstract class LoadGameInstancesImpl extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGameInstancesResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzbp, reason: merged with bridge method [inline-methods] */
        public GamesMetadata.LoadGameInstancesResult zzc(final Status status) {
            return new GamesMetadata.LoadGameInstancesResult() { // from class: com.google.android.gms.games.internal.api.GamesMetadataImpl.LoadGameInstancesImpl.1
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

    private static abstract class LoadGameSearchSuggestionsImpl extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGameSearchSuggestionsResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzbq, reason: merged with bridge method [inline-methods] */
        public GamesMetadata.LoadGameSearchSuggestionsResult zzc(final Status status) {
            return new GamesMetadata.LoadGameSearchSuggestionsResult() { // from class: com.google.android.gms.games.internal.api.GamesMetadataImpl.LoadGameSearchSuggestionsImpl.1
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

    private static abstract class LoadGamesImpl extends Games.BaseGamesApiMethodImpl<GamesMetadata.LoadGamesResult> {
        private LoadGamesImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzbr, reason: merged with bridge method [inline-methods] */
        public GamesMetadata.LoadGamesResult zzc(final Status status) {
            return new GamesMetadata.LoadGamesResult() { // from class: com.google.android.gms.games.internal.api.GamesMetadataImpl.LoadGamesImpl.1
                @Override // com.google.android.gms.games.GamesMetadata.LoadGamesResult
                public GameBuffer getGames() {
                    return new GameBuffer(DataHolder.zzfp(14));
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

    @Override // com.google.android.gms.games.GamesMetadata
    public Game getCurrentGame(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzbie();
    }

    @Override // com.google.android.gms.games.GamesMetadata
    public PendingResult<GamesMetadata.LoadGamesResult> loadGame(GoogleApiClient googleApiClient) {
        return googleApiClient.zzc(new LoadGamesImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.GamesMetadataImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzg(this);
            }
        });
    }
}
