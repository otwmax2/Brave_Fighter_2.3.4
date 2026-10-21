package com.google.android.gms.games;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.RequiresPermission;
import android.view.View;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.appcontent.AppContents;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.api.AchievementsImpl;
import com.google.android.gms.games.internal.api.AppContentsImpl;
import com.google.android.gms.games.internal.api.EventsImpl;
import com.google.android.gms.games.internal.api.GamesMetadataImpl;
import com.google.android.gms.games.internal.api.InvitationsImpl;
import com.google.android.gms.games.internal.api.LeaderboardsImpl;
import com.google.android.gms.games.internal.api.MultiplayerImpl;
import com.google.android.gms.games.internal.api.NotificationsImpl;
import com.google.android.gms.games.internal.api.PlayersImpl;
import com.google.android.gms.games.internal.api.QuestsImpl;
import com.google.android.gms.games.internal.api.RealTimeMultiplayerImpl;
import com.google.android.gms.games.internal.api.RequestsImpl;
import com.google.android.gms.games.internal.api.SnapshotsImpl;
import com.google.android.gms.games.internal.api.SocialImpl;
import com.google.android.gms.games.internal.api.StatsImpl;
import com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl;
import com.google.android.gms.games.internal.api.VideosImpl;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.snapshot.Snapshots;
import com.google.android.gms.games.social.Social;
import com.google.android.gms.games.stats.Stats;
import com.google.android.gms.games.video.Videos;
import com.google.android.gms.internal.zzpr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Games {
    public static final String EXTRA_PLAYER_IDS = "players";
    public static final String EXTRA_STATUS = "status";
    static final Api.zzf<GamesClientImpl> bN = new Api.zzf<>();
    private static final Api.zza<GamesClientImpl, GamesOptions> bO = new GamesClientBuilder() { // from class: com.google.android.gms.games.Games.1
        @Override // com.google.android.gms.common.api.Api.zzd
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public List<Scope> zzq(GamesOptions gamesOptions) {
            return Collections.singletonList(Games.SCOPE_GAMES);
        }
    };
    private static final Api.zza<GamesClientImpl, GamesOptions> QW = new GamesClientBuilder() { // from class: com.google.android.gms.games.Games.2
        @Override // com.google.android.gms.common.api.Api.zzd
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public List<Scope> zzq(GamesOptions gamesOptions) {
            return Collections.singletonList(Games.QX);
        }
    };
    public static final Scope SCOPE_GAMES = new Scope(Scopes.GAMES);
    public static final Api<GamesOptions> API = new Api<>("Games.API", bO, bN);
    public static final Scope QX = new Scope("https://www.googleapis.com/auth/games.firstparty");
    public static final Api<GamesOptions> QY = new Api<>("Games.API_1P", QW, bN);
    public static final GamesMetadata GamesMetadata = new GamesMetadataImpl();
    public static final Achievements Achievements = new AchievementsImpl();
    public static final AppContents QZ = new AppContentsImpl();
    public static final Events Events = new EventsImpl();
    public static final Leaderboards Leaderboards = new LeaderboardsImpl();
    public static final Invitations Invitations = new InvitationsImpl();
    public static final TurnBasedMultiplayer TurnBasedMultiplayer = new TurnBasedMultiplayerImpl();
    public static final RealTimeMultiplayer RealTimeMultiplayer = new RealTimeMultiplayerImpl();
    public static final Multiplayer Ra = new MultiplayerImpl();
    public static final Players Players = new PlayersImpl();
    public static final Notifications Notifications = new NotificationsImpl();
    public static final Quests Quests = new QuestsImpl();
    public static final Requests Requests = new RequestsImpl();
    public static final Snapshots Snapshots = new SnapshotsImpl();
    public static final Stats Stats = new StatsImpl();
    public static final Videos Videos = new VideosImpl();
    public static final Social Rb = new SocialImpl();

    /* JADX INFO: renamed from: com.google.android.gms.games.Games$3, reason: invalid class name */
    final class AnonymousClass3 extends GetTokenImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzf(this);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.Games$6, reason: invalid class name */
    final class AnonymousClass6 extends BaseGamesApiMethodImpl<Status> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((Account) null, (byte[]) null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.Games$7, reason: invalid class name */
    final class AnonymousClass7 extends BaseGamesApiMethodImpl<Status> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zze((Account) null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }

    public static abstract class BaseGamesApiMethodImpl<R extends Result> extends zzpr.zza<R, GamesClientImpl> {
        public BaseGamesApiMethodImpl(GoogleApiClient googleApiClient) {
            super(Games.bN, googleApiClient);
        }
    }

    private static abstract class GamesClientBuilder extends Api.zza<GamesClientImpl, GamesOptions> {
        private GamesClientBuilder() {
        }

        @Override // com.google.android.gms.common.api.Api.zzd
        public int getPriority() {
            return 1;
        }

        @Override // com.google.android.gms.common.api.Api.zza
        public GamesClientImpl zza(Context context, Looper looper, zzg zzgVar, GamesOptions gamesOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new GamesClientImpl(context, looper, zzgVar, gamesOptions == null ? new GamesOptions() : gamesOptions, connectionCallbacks, onConnectionFailedListener);
        }
    }

    public static final class GamesOptions implements Api.ApiOptions.Optional {
        public final boolean Rd;
        public final boolean Re;
        public final int Rf;
        public final boolean Rg;
        public final int Rh;
        public final String Ri;
        public final ArrayList<String> Rj;
        public final boolean Rk;
        public final boolean Rl;

        public static final class Builder {
            boolean Rd;
            boolean Re;
            int Rf;
            boolean Rg;
            int Rh;
            String Ri;
            ArrayList<String> Rj;
            boolean Rk;
            boolean Rl;

            private Builder() {
                this.Rd = false;
                this.Re = true;
                this.Rf = 17;
                this.Rg = false;
                this.Rh = 4368;
                this.Ri = null;
                this.Rj = new ArrayList<>();
                this.Rk = false;
                this.Rl = false;
            }

            public GamesOptions build() {
                return new GamesOptions(this);
            }

            public Builder setRequireGooglePlus(boolean z) {
                this.Rk = z;
                return this;
            }

            public Builder setSdkVariant(int i) {
                this.Rh = i;
                return this;
            }

            public Builder setShowConnectingPopup(boolean z) {
                this.Re = z;
                this.Rf = 17;
                return this;
            }

            public Builder setShowConnectingPopup(boolean z, int i) {
                this.Re = z;
                this.Rf = i;
                return this;
            }
        }

        private GamesOptions() {
            this.Rd = false;
            this.Re = true;
            this.Rf = 17;
            this.Rg = false;
            this.Rh = 4368;
            this.Ri = null;
            this.Rj = new ArrayList<>();
            this.Rk = false;
            this.Rl = false;
        }

        private GamesOptions(Builder builder) {
            this.Rd = false;
            this.Re = builder.Re;
            this.Rf = builder.Rf;
            this.Rg = false;
            this.Rh = builder.Rh;
            this.Ri = null;
            this.Rj = builder.Rj;
            this.Rk = builder.Rk;
            this.Rl = false;
        }

        public static Builder builder() {
            return new Builder();
        }

        public Bundle zzbgc() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("com.google.android.gms.games.key.isHeadless", this.Rd);
            bundle.putBoolean("com.google.android.gms.games.key.showConnectingPopup", this.Re);
            bundle.putInt("com.google.android.gms.games.key.connectingPopupGravity", this.Rf);
            bundle.putBoolean("com.google.android.gms.games.key.retryingSignIn", this.Rg);
            bundle.putInt("com.google.android.gms.games.key.sdkVariant", this.Rh);
            bundle.putString("com.google.android.gms.games.key.forceResolveAccountKey", this.Ri);
            bundle.putStringArrayList("com.google.android.gms.games.key.proxyApis", this.Rj);
            bundle.putBoolean("com.google.android.gms.games.key.requireGooglePlus", this.Rk);
            bundle.putBoolean("com.google.android.gms.games.key.unauthenticated", this.Rl);
            return bundle;
        }
    }

    private static abstract class GetServerAuthCodeImpl extends BaseGamesApiMethodImpl<GetServerAuthCodeResult> {
        private GetServerAuthCodeImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzbf, reason: merged with bridge method [inline-methods] */
        public GetServerAuthCodeResult zzc(final Status status) {
            return new GetServerAuthCodeResult() { // from class: com.google.android.gms.games.Games.GetServerAuthCodeImpl.1
                @Override // com.google.android.gms.games.Games.GetServerAuthCodeResult
                public String getCode() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    @Deprecated
    public interface GetServerAuthCodeResult extends Result {
        String getCode();
    }

    private static abstract class GetTokenImpl extends BaseGamesApiMethodImpl<GetTokenResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzbg, reason: merged with bridge method [inline-methods] */
        public GetTokenResult zzc(final Status status) {
            return new GetTokenResult() { // from class: com.google.android.gms.games.Games.GetTokenImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    public interface GetTokenResult extends Result {
    }

    private static abstract class SignOutImpl extends BaseGamesApiMethodImpl<Status> {
        private SignOutImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }

    public static abstract class StatusImpl extends BaseGamesApiMethodImpl<Status> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }

    private Games() {
    }

    public static String getAppId(GoogleApiClient googleApiClient) {
        return zzi(googleApiClient).zzsi();
    }

    @RequiresPermission("android.permission.GET_ACCOUNTS")
    public static String getCurrentAccountName(GoogleApiClient googleApiClient) {
        return zzi(googleApiClient).zzbic();
    }

    @Deprecated
    public static PendingResult<GetServerAuthCodeResult> getGamesServerAuthCode(GoogleApiClient googleApiClient, final String str) {
        zzab.zzh(str, "Please provide a valid serverClientId");
        return googleApiClient.zzd(new GetServerAuthCodeImpl(googleApiClient) { // from class: com.google.android.gms.games.Games.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzb(str, this);
            }
        });
    }

    public static int getSdkVariant(GoogleApiClient googleApiClient) {
        return zzi(googleApiClient).zzbip();
    }

    public static Intent getSettingsIntent(GoogleApiClient googleApiClient) {
        return zzi(googleApiClient).zzbio();
    }

    public static void setGravityForPopups(GoogleApiClient googleApiClient, int i) {
        GamesClientImpl gamesClientImplZzb = zzb(googleApiClient, false);
        if (gamesClientImplZzb != null) {
            gamesClientImplZzb.zzqo(i);
        }
    }

    public static void setViewForPopups(GoogleApiClient googleApiClient, View view) {
        zzab.zzaa(view);
        GamesClientImpl gamesClientImplZzb = zzb(googleApiClient, false);
        if (gamesClientImplZzb != null) {
            gamesClientImplZzb.zzq(view);
        }
    }

    public static PendingResult<Status> signOut(GoogleApiClient googleApiClient) {
        return googleApiClient.zzd(new SignOutImpl(googleApiClient) { // from class: com.google.android.gms.games.Games.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzh(this);
            }
        });
    }

    public static GamesClientImpl zzb(GoogleApiClient googleApiClient, boolean z) {
        zzab.zzb(googleApiClient != null, "GoogleApiClient parameter is required.");
        zzab.zza(googleApiClient.isConnected(), "GoogleApiClient must be connected.");
        return zzc(googleApiClient, z);
    }

    public static GamesClientImpl zzc(GoogleApiClient googleApiClient, boolean z) {
        zzab.zza(googleApiClient.zza(API), "GoogleApiClient is not configured to use the Games Api. Pass Games.API into GoogleApiClient.Builder#addApi() to use this feature.");
        boolean zHasConnectedApi = googleApiClient.hasConnectedApi(API);
        if (z && !zHasConnectedApi) {
            throw new IllegalStateException("GoogleApiClient has an optional Games.API and is not connected to Games. Use GoogleApiClient.hasConnectedApi(Games.API) to guard this call.");
        }
        if (zHasConnectedApi) {
            return (GamesClientImpl) googleApiClient.zza(bN);
        }
        return null;
    }

    public static GamesClientImpl zzi(GoogleApiClient googleApiClient) {
        return zzb(googleApiClient, true);
    }
}
