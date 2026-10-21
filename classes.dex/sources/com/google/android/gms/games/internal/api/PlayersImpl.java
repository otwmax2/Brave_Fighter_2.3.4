package com.google.android.gms.games.internal.api;

import android.accounts.Account;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.player.ProfileSettingsEntity;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
public final class PlayersImpl implements Players {

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$10, reason: invalid class name */
    class AnonymousClass10 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzpr.zzb<Players.LoadPlayersResult>) this, "nearby", (String) null, 0, true, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$11, reason: invalid class name */
    class AnonymousClass11 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzpr.zzb<Players.LoadPlayersResult>) this, "played_with", (String) null, 0, false, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$12, reason: invalid class name */
    class AnonymousClass12 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzpr.zzb<Players.LoadPlayersResult>) this, "played_with", (String) null, 0, true, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$13, reason: invalid class name */
    class AnonymousClass13 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb((zzpr.zzb<Players.LoadPlayersResult>) this, 0, false, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$14, reason: invalid class name */
    class AnonymousClass14 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb((zzpr.zzb<Players.LoadPlayersResult>) this, 0, true, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$15, reason: invalid class name */
    class AnonymousClass15 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzc((zzpr.zzb<Players.LoadPlayersResult>) this, 0, false, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$16, reason: invalid class name */
    class AnonymousClass16 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzc((zzpr.zzb<Players.LoadPlayersResult>) this, 0, true, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$17, reason: invalid class name */
    class AnonymousClass17 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzd(this, 0, false, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$18, reason: invalid class name */
    class AnonymousClass18 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzd(this, 0, true, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$19, reason: invalid class name */
    class AnonymousClass19 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb(this, null, 0, false, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$20, reason: invalid class name */
    class AnonymousClass20 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb(this, null, 0, true, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$21, reason: invalid class name */
    class AnonymousClass21 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb((zzpr.zzb<Players.LoadPlayersResult>) this, (String) null, (String) null, 0, false, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$22, reason: invalid class name */
    class AnonymousClass22 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzb((zzpr.zzb<Players.LoadPlayersResult>) this, (String) null, (String) null, 0, true, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$23, reason: invalid class name */
    class AnonymousClass23 extends LoadXpForGameCategoriesResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzl(this, (String) null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$24, reason: invalid class name */
    class AnonymousClass24 extends LoadXpStreamResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzd(this, (String) null, 0);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$25, reason: invalid class name */
    class AnonymousClass25 extends LoadXpStreamResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zze(this, (String) null, 0);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$26, reason: invalid class name */
    class AnonymousClass26 extends LoadProfileSettingsResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzpr.zzb<Players.LoadProfileSettingsResult>) this, false, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$27, reason: invalid class name */
    class AnonymousClass27 extends LoadProfileSettingsResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzpr.zzb<Players.LoadProfileSettingsResult>) this, false, true);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$28, reason: invalid class name */
    class AnonymousClass28 extends UpdateProfileSettingsResultImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzh((zzpr.zzb<Status>) this, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$29, reason: invalid class name */
    class AnonymousClass29 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (Account) null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$3, reason: invalid class name */
    class AnonymousClass3 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (String[]) null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$30, reason: invalid class name */
    class AnonymousClass30 extends LoadStockProfileImagesImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzr(this);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$31, reason: invalid class name */
    class AnonymousClass31 extends UpdateGamerProfileImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzpr.zzb<Players.UpdateGamerProfileResult>) this, (String) null, false, (String) null, false, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$32, reason: invalid class name */
    class AnonymousClass32 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzi((zzpr.zzb<Status>) this, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$33, reason: invalid class name */
    class AnonymousClass33 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzj((zzpr.zzb<Status>) this, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$34, reason: invalid class name */
    class AnonymousClass34 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzk((zzpr.zzb<Status>) this, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.PlayersImpl$9, reason: invalid class name */
    class AnonymousClass9 extends LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzpr.zzb<Players.LoadPlayersResult>) this, "nearby", (String) null, 0, false, false);
        }
    }

    static abstract class LoadPlayersImpl extends Games.BaseGamesApiMethodImpl<Players.LoadPlayersResult> {
        LoadPlayersImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzcb, reason: merged with bridge method [inline-methods] */
        public Players.LoadPlayersResult zzc(final Status status) {
            return new Players.LoadPlayersResult() { // from class: com.google.android.gms.games.internal.api.PlayersImpl.LoadPlayersImpl.1
                @Override // com.google.android.gms.games.Players.LoadPlayersResult
                public PlayerBuffer getPlayers() {
                    return new PlayerBuffer(DataHolder.zzfp(14));
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

    private static abstract class LoadProfileSettingsResultImpl extends Games.BaseGamesApiMethodImpl<Players.LoadProfileSettingsResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzcc, reason: merged with bridge method [inline-methods] */
        public Players.LoadProfileSettingsResult zzc(Status status) {
            return new ProfileSettingsEntity(DataHolder.zzfp(status.getStatusCode()));
        }
    }

    private static abstract class LoadStockProfileImagesImpl extends Games.BaseGamesApiMethodImpl<Players.LoadStockProfileImagesResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzcd, reason: merged with bridge method [inline-methods] */
        public Players.LoadStockProfileImagesResult zzc(final Status status) {
            return new Players.LoadStockProfileImagesResult() { // from class: com.google.android.gms.games.internal.api.PlayersImpl.LoadStockProfileImagesImpl.1
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

    private static abstract class LoadXpForGameCategoriesResultImpl extends Games.BaseGamesApiMethodImpl<Players.LoadXpForGameCategoriesResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzce, reason: merged with bridge method [inline-methods] */
        public Players.LoadXpForGameCategoriesResult zzc(final Status status) {
            return new Players.LoadXpForGameCategoriesResult() { // from class: com.google.android.gms.games.internal.api.PlayersImpl.LoadXpForGameCategoriesResultImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    private static abstract class LoadXpStreamResultImpl extends Games.BaseGamesApiMethodImpl<Players.LoadXpStreamResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzcf, reason: merged with bridge method [inline-methods] */
        public Players.LoadXpStreamResult zzc(final Status status) {
            return new Players.LoadXpStreamResult() { // from class: com.google.android.gms.games.internal.api.PlayersImpl.LoadXpStreamResultImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    private static abstract class UpdateGamerProfileImpl extends Games.BaseGamesApiMethodImpl<Players.UpdateGamerProfileResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzcg, reason: merged with bridge method [inline-methods] */
        public Players.UpdateGamerProfileResult zzc(final Status status) {
            return new Players.UpdateGamerProfileResult() { // from class: com.google.android.gms.games.internal.api.PlayersImpl.UpdateGamerProfileImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    private static abstract class UpdateProfileSettingsResultImpl extends Games.BaseGamesApiMethodImpl<Status> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }

    @Override // com.google.android.gms.games.Players
    public Intent getCompareProfileIntent(GoogleApiClient googleApiClient, Player player) {
        return Games.zzi(googleApiClient).zza(new PlayerEntity(player));
    }

    @Override // com.google.android.gms.games.Players
    public Player getCurrentPlayer(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzbid();
    }

    @Override // com.google.android.gms.games.Players
    public String getCurrentPlayerId(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzbs(true);
    }

    @Override // com.google.android.gms.games.Players
    public Intent getPlayerSearchIntent(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzbin();
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadConnectedPlayers(GoogleApiClient googleApiClient, final boolean z) {
        return googleApiClient.zzc(new LoadPlayersImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, z);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadInvitablePlayers(GoogleApiClient googleApiClient, final int i, final boolean z) {
        return googleApiClient.zzc(new LoadPlayersImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza((zzpr.zzb<Players.LoadPlayersResult>) this, i, false, z);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadMoreInvitablePlayers(GoogleApiClient googleApiClient, final int i) {
        return googleApiClient.zzc(new LoadPlayersImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza((zzpr.zzb<Players.LoadPlayersResult>) this, i, true, false);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadMoreRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, final int i) {
        return googleApiClient.zzc(new LoadPlayersImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza((zzpr.zzb<Players.LoadPlayersResult>) this, "played_with", i, true, false);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadPlayer(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zzc(new LoadPlayersImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza((zzpr.zzb<Players.LoadPlayersResult>) this, str, false);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadPlayer(GoogleApiClient googleApiClient, final String str, final boolean z) {
        return googleApiClient.zzc(new LoadPlayersImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza(this, str, z);
            }
        });
    }

    @Override // com.google.android.gms.games.Players
    public PendingResult<Players.LoadPlayersResult> loadRecentlyPlayedWithPlayers(GoogleApiClient googleApiClient, final int i, final boolean z) {
        return googleApiClient.zzc(new LoadPlayersImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.PlayersImpl.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zza((zzpr.zzb<Players.LoadPlayersResult>) this, "played_with", i, false, z);
            }
        });
    }
}
