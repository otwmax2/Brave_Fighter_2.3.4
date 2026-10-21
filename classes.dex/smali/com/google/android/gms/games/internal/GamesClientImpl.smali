###### Class com.google.android.gms.games.internal.GamesClientImpl (com.google.android.gms.games.internal.GamesClientImpl)
.class public final Lcom/google/android/gms/games/internal/GamesClientImpl;
.super Lcom/google/android/gms/common/internal/zzk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingEnabledResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$DeleteSnapshotResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadSnapshotsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerStatsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAppContentsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadQuestsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestSummariesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GetTokenResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingLoadResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LeaveMatchResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateMatchResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InitiateMatchResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateGamerProfileResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadStockProfileImagesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpStreamResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameSearchSuggestionsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameInstancesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadEventResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$NearbyPlayerDetectedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SetPlayerMutedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerUnfriendedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CancelFriendInviteFirstPartyBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$IgnoreFriendInviteFirstPartyBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptFriendInviteFirstPartyBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SendFriendInviteFirstPartyBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateHeadlessCapturePermissionBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingEnabledBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CapturePausedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureLaunchGameAndOverlayBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$HeadlessCaptureEnabledBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotCommittedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerStatsLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AppContentLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$QuestAcceptedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSentBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PopupLocationInfoBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GetAuthTokenBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsUpdatedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateProfileDiscoverabilityBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAutoSignInBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$DeletePlayerBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GamerProfileUpdatedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$StockProfileImagesLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsUpdatedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InvitesLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameInstancesLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/games/internal/IGamesService;",
        ">;"
    }
.end annotation


# instance fields
.field private final SA:Ljava/lang/String;

.field private SB:Lcom/google/android/gms/games/PlayerEntity;

.field private SC:Lcom/google/android/gms/games/GameEntity;

.field private final SD:Lcom/google/android/gms/games/internal/PopupManager;

.field private SE:Z

.field private final SF:Landroid/os/Binder;

.field private final SG:J

.field private final SH:Lcom/google/android/gms/games/Games$GamesOptions;

.field Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 14

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl$1;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SE:Z

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->zzasi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SA:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SF:Landroid/os/Binder;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->zzase()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/games/internal/PopupManager;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;I)Lcom/google/android/gms/games/internal/PopupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->zzask()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzq(Landroid/view/View;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    iput-object p4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SH:Lcom/google/android/gms/games/Games$GamesOptions;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Landroid/os/RemoteException;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    return-void
.end method

.method private zzb(Landroid/os/RemoteException;)V
    .registers 4

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/games/internal/GamesLog;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzbi(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .registers 4

    new-instance v1, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;

    invoke-direct {v1, p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_19

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->release()V

    return-object v0

    :catchall_1d
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->release()V

    throw v0
.end method

.method private zzbib()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SB:Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SC:Lcom/google/android/gms/games/GameEntity;

    return-void
.end method

.method static synthetic zzbj(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbi(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SE:Z

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1c

    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbiz()V

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzak(J)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1c} :catch_20

    :cond_1c
    :goto_1c
    invoke-super {p0}, Lcom/google/android/gms/common/internal/zzk;->disconnect()V

    return-void

    :catch_20
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "Failed to notify client disconnect."

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzk;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SE:Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqs;[BLjava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;",
            ">;[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzqs;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v0

    :goto_f
    return v0

    :catch_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, -0x1

    goto :goto_f
.end method

.method public zza([BLjava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const-string v0, "Participant IDs must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzb([BLjava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    move-result v0

    :goto_f
    return v0

    :catch_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, -0x1

    goto :goto_f
.end method

.method public zza(I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3, p5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(I[BILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Must provide a non null icon"

    invoke-static {p4, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.google.android.gms.games.REQUEST_ITEM_ICON"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_14
.end method

.method public zza(Lcom/google/android/gms/games/PlayerEntity;)Landroid/content/Intent;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/PlayerEntity;)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;I)Landroid/content/Intent;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_10
.end method

.method public zza(Ljava/lang/String;ZZI)Landroid/content/Intent;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Ljava/lang/String;ZZI)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 6

    if-nez p1, :cond_29

    if-eqz p3, :cond_29

    const-class v0, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "show_welcome_popup"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SE:Z

    const-string v0, "com.google.android.gms.games.current_player"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SB:Lcom/google/android/gms/games/PlayerEntity;

    const-string v0, "com.google.android.gms.games.current_game"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SC:Lcom/google/android/gms/games/GameEntity;

    :cond_29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/zzk;->zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public zza(Landroid/accounts/Account;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Landroid/accounts/Account;[B)V

    return-void
.end method

.method public zza(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_f
.end method

.method public bridge synthetic zza(Landroid/os/IInterface;)V
    .registers 2
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/games/internal/IGamesService;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzd$zzf;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbib()V

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzk;->zza(Lcom/google/android/gms/common/internal/zzd$zzf;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;Ljava/lang/String;Lcom/google/android/gms/games/video/VideoConfiguration;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/video/VideoConfiguration;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureLaunchGameAndOverlayBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureLaunchGameAndOverlayBinderCallback;-><init>(Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Lcom/google/android/gms/games/video/VideoConfiguration;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/games/internal/IGamesService;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/games/internal/IGamesService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/zzk;->zza(Landroid/os/IInterface;)V

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SE:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjo()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SE:Z

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SH:Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v0, v0, Lcom/google/android/gms/games/Games$GamesOptions;->Rd:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SH:Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v0, v0, Lcom/google/android/gms/games/Games$GamesOptions;->Rl:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/games/internal/IGamesService;)V

    :cond_1e
    return-void
.end method

.method public zza(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .registers 5

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    :goto_b
    const-string v2, "Snapshot already closed"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzazu()Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    :try_start_17
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, v2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/drive/Contents;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_23

    :goto_20
    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_b

    :catch_23
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_20
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;III)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;ILjava/lang/String;[Ljava/lang/String;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;",
            ">;I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AppContentLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AppContentLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;ILjava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;I[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;I[I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;I[I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Landroid/accounts/Account;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/accounts/Account;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->zzbla()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->asBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/Bundle;II)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getVariant()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->zzblg()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getInvitedPlayerIds()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;II[Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;",
            ">;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    if-nez v0, :cond_41

    const/4 v0, 0x1

    :goto_b
    const-string v2, "Snapshot already closed"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-interface {p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->zzbll()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zzd(Ljava/io/File;)V

    :cond_21
    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzazu()Lcom/google/android/gms/drive/Contents;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotCommittedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotCommittedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v3

    check-cast p3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    invoke-interface {v0, v1, v3, p3, v2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V

    return-void

    :cond_41
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/games/video/VideoConfiguration;Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/games/video/VideoConfiguration;",
            "Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Lcom/google/android/gms/games/video/VideoConfiguration;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_1a

    const/4 v0, 0x0

    move-object v1, v0

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjq()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjp()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_1a
    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v1, v0

    goto :goto_4
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_1b

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjq()Landroid/os/IBinder;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjp()Landroid/os/Bundle;

    move-result-object v5

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_1b
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;IIIZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_4a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid player collection: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_21
    const-string v1, "played_with"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :cond_2b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_31
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    return-void

    :pswitch_data_44
    .packed-switch 0x9529ab2
        :pswitch_21
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_31
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;I[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;",
            "Ljava/lang/String;",
            "I[I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I[I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;JLjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_10

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;JLjava/lang/String;)V

    return-void

    :cond_10
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreBinderCallbacks;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    goto :goto_3
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5a

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_68

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid player collection: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_21
    const-string v1, "circled"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_2b
    const-string v1, "played_with"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_35
    const-string v1, "nearby"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :cond_3f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_45
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x3e8dd581 -> :sswitch_35
        0x9529ab2 -> :sswitch_2b
        0x2eaadd94 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_45
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            "Lcom/google/android/gms/games/snapshot/SnapshotContents;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v0, 0x1

    :goto_7
    const-string v1, "SnapshotContents already closed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-interface {p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->zzbll()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zzd(Ljava/io/File;)V

    :cond_1d
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->zzazu()Lcom/google/android/gms/drive/Contents;

    move-result-object v5

    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V

    return-void

    :cond_38
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;[IIZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[IIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[IIZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ZI)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;ZLjava/lang/String;ZZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$UpdateGamerProfileResult;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GamerProfileUpdatedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamerProfileUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ZLjava/lang/String;ZZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "[B[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;[Ljava/lang/String;I[BI)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$SendRequestResult;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I[BI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSentBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSentBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[Ljava/lang/String;I[BI)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;ZZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;ZZLandroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;ZZ",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsUpdatedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;ZZLandroid/os/Bundle;)V

    return-void
.end method

.method public varargs zza(Lcom/google/android/gms/internal/zzpr$zzb;Z[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z[Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;[IIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;[IIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[IIZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpr$zzb;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzqs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzqs;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_10
.end method

.method public zza(Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;",
            ">;",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/internal/zzqs;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SF:Landroid/os/Binder;

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getVariant()I

    move-result v4

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitedPlayerIds()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;I[Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_1f
.end method

.method public zza(Lcom/google/android/gms/internal/zzqs;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzqs;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_e
.end method

.method protected zzaeu()Landroid/os/Bundle;
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SH:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/games/Games$GamesOptions;->zzbgc()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.android.gms.games.key.gamePackageName"

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SA:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.games.key.desiredLocale"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.games.key.popupWindowToken"

    new-instance v2, Lcom/google/android/gms/common/internal/BinderWrapper;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjq()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.google.android.gms.games.key.API_VERSION"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.google.android.gms.games.key.signInOptions"

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzasr()Lcom/google/android/gms/common/internal/zzg;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/signin/internal/zzg;->zza(Lcom/google/android/gms/common/internal/zzg;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public zzafk()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzamc()Landroid/os/Bundle;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzamc()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15

    const-class v1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_15
.end method

.method public zzb(IIZ)Landroid/content/Intent;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(IIZ)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzb(Lcom/google/android/gms/games/internal/IGamesService;)V
    .registers 6

    :try_start_0
    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$PopupLocationInfoBinderCallbacks;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PopupLocationInfoBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/PopupManager;)V

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {p1, v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesClient;J)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_c
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;I)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_1a

    const/4 v0, 0x0

    move-object v1, v0

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjq()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjp()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_1a
    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v1, v0

    goto :goto_4
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_1b

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjq()Landroid/os/IBinder;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjp()Landroid/os/Bundle;

    move-result-object v5

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_1b
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    goto :goto_3
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;IIIZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;Z[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p3, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzpr$zzb;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzqs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzqs;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_10
.end method

.method public zzb(Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;",
            ">;",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/internal/zzqs;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SF:Landroid/os/Binder;

    invoke-virtual {p4}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitationId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;Ljava/lang/String;ZJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_17
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Please provide a valid serverClientId"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeBinderCallbacks;

    invoke-direct {v1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Ljava/lang/String;Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method protected synthetic zzbb(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzgg(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;

    move-result-object v0

    return-object v0
.end method

.method public zzbic()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbic()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzbid()Lcom/google/android/gms/games/Player;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarv()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SB:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3d

    if-nez v0, :cond_2f

    :try_start_8
    new-instance v1, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbjc()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_38
    .catchall {:try_start_8 .. :try_end_17} :catchall_3d

    :try_start_17
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SB:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_33

    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->release()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_38
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3d

    :cond_2f
    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_3d

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SB:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0

    :catchall_33
    move-exception v0

    :try_start_34
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->release()V

    throw v0
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_38} :catch_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_3d

    :catch_38
    move-exception v0

    :try_start_39
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_2f

    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public zzbie()Lcom/google/android/gms/games/Game;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarv()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SC:Lcom/google/android/gms/games/GameEntity;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3d

    if-nez v0, :cond_2f

    :try_start_8
    new-instance v1, Lcom/google/android/gms/games/GameBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbje()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_38
    .catchall {:try_start_8 .. :try_end_17} :catchall_3d

    :try_start_17
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/GameBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Game;

    invoke-interface {v0}, Lcom/google/android/gms/games/Game;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SC:Lcom/google/android/gms/games/GameEntity;
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_33

    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->release()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_38
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3d

    :cond_2f
    :goto_2f
    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_3d

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SC:Lcom/google/android/gms/games/GameEntity;

    return-object v0

    :catchall_33
    move-exception v0

    :try_start_34
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->release()V

    throw v0
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_38} :catch_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_3d

    :catch_38
    move-exception v0

    :try_start_39
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_2f

    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public zzbif()Landroid/content/Intent;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbif()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzbig()Landroid/content/Intent;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbig()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzbih()Landroid/content/Intent;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbih()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzbii()Landroid/content/Intent;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbii()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzbij()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzal(J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_b
.end method

.method public zzbik()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzam(J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_b
.end method

.method public zzbil()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzao(J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_b
.end method

.method public zzbim()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzan(J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_b
.end method

.method public zzbin()Landroid/content/Intent;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbin()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzbio()Landroid/content/Intent;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbio()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzbip()I
    .registers 3

    const/16 v1, 0x1110

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbip()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_d

    move-result v0

    :goto_c
    return v0

    :catch_d
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_c
.end method

.method public zzbiq()I
    .registers 3

    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbiq()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_b
.end method

.method public zzbir()Landroid/content/Intent;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbir()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzbis()I
    .registers 3

    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbis()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_b
.end method

.method public zzbit()I
    .registers 3

    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbit()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_b
.end method

.method public zzbiu()I
    .registers 3

    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbiu()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_b
.end method

.method public zzbiv()I
    .registers 3

    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbiv()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_b
.end method

.method public zzbiw()Landroid/content/Intent;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbjk()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzbix()Z
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbix()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_b
.end method

.method public zzbiy()V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzar(J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_b
.end method

.method public zzbiz()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbiz()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_f
.end method

.method public zzbs(Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SB:Lcom/google/android/gms/games/PlayerEntity;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SB:Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0}, Lcom/google/android/gms/games/PlayerEntity;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzbjb()Ljava/lang/String;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_c

    :catch_18
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public zzc(IIZ)Landroid/content/Intent;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(IIZ)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzc([I)Landroid/content/Intent;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->zzc([I)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected zzc(Ljava/util/Set;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v5, Lcom/google/android/gms/common/api/Scope;

    const-string v0, "https://www.googleapis.com/auth/games"

    invoke-direct {v5, v0}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/common/api/Scope;

    const-string v0, "https://www.googleapis.com/auth/games.firstparty"

    invoke-direct {v6, v0}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v2

    :goto_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/common/api/Scope;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    move v0, v1

    move v1, v4

    :goto_2a
    move v3, v1

    move v1, v0

    goto :goto_16

    :cond_2d
    invoke-virtual {v0, v6}, Lcom/google/android/gms/common/api/Scope;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    move v0, v4

    move v1, v3

    goto :goto_2a

    :cond_36
    if-eqz v1, :cond_4e

    if-nez v3, :cond_4c

    move v0, v4

    :goto_3b
    const-string v1, "Cannot have both %s and %s!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "https://www.googleapis.com/auth/games"

    aput-object v5, v3, v2

    const-string v2, "https://www.googleapis.com/auth/games.firstparty"

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_4b
    return-object p1

    :cond_4c
    move v0, v2

    goto :goto_3b

    :cond_4e
    const-string v0, "Games APIs requires %s to function."

    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "https://www.googleapis.com/auth/games"

    aput-object v4, v1, v2

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4b

    :cond_5a
    move v0, v1

    move v1, v3

    goto :goto_2a
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zzb;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$LoadInvitesResult;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitesLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitesLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;I)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zzb;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzk(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$ListVideosResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateHeadlessCapturePermissionBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateHeadlessCapturePermissionBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzh(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzpr$zzb;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzqs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/quest/QuestUpdateListener;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;-><init>(Lcom/google/android/gms/internal/zzqs;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_10
.end method

.method public zzd(Lcom/google/android/gms/internal/zzpr$zzb;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzl(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpStreamResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzd(Lcom/google/android/gms/internal/zzqs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/request/OnRequestReceivedListener;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzqs;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_10
.end method

.method public zze([BLjava/lang/String;)I
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzb([BLjava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    :goto_b
    return v0

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, -0x1

    goto :goto_b
.end method

.method public zze(Landroid/accounts/Account;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->zze(Landroid/accounts/Account;)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzpr$zzb;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzn(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpStreamResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzc(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerStatsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerStatsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzi(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zze(Lcom/google/android/gms/internal/zzqs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;-><init>(Lcom/google/android/gms/internal/zzqs;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SG:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_10
.end method

.method public zzf(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Games$GetTokenResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GetAuthTokenBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GetAuthTokenBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzj(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzm(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/google/android/gms/games/internal/IGamesService;->zzb(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SetPlayerMutedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SetPlayerMutedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzg(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzg(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzd(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzg(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzo(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzg(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V

    return-void
.end method

.method public zzg(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CapturePausedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CapturePausedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzm(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method protected zzgg(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->zzgj(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;

    move-result-object v0

    return-object v0
.end method

.method public zzh(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestAcceptedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestAcceptedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzt(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsUpdatedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsUpdatedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzh(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzl(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzq(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$DeletePlayerBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$DeletePlayerBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzj(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzj(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzv(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzj(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameInstancesLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameInstancesLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzf(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzj(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAutoSignInBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAutoSignInBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzk(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzjm(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->zzju(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_9
.end method

.method public zzjn(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->zzjn(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzjo(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjq()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjp()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService;->zza(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_15
.end method

.method public zzk(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStreamingAvailabilityResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzs(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzk(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGameSearchSuggestionsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzp(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzk(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateProfileDiscoverabilityBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateProfileDiscoverabilityBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzl(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzl(Ljava/lang/String;II)Landroid/content/Intent;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->zzm(Ljava/lang/String;II)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzl(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzq(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzl(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpForGameCategoriesResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzr(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzl(Lcom/google/android/gms/internal/zzpr$zzb;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$ContactSettingLoadResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zze(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V

    return-void
.end method

.method public zzm(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStreamingUrlResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzr(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzm(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzj(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzn(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$HeadlessCaptureEnabledBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$HeadlessCaptureEnabledBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzt(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzn(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzi(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzn(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Sz:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->zzn(Ljava/lang/String;I)V

    return-void
.end method

.method public zzo(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingEnabledBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingEnabledBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzo(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzo(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SendFriendInviteFirstPartyBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SendFriendInviteFirstPartyBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzu(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzo(Ljava/lang/String;I)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzo(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_9
.end method

.method public zzp(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$ListVideosResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzk(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzp(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptFriendInviteFirstPartyBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptFriendInviteFirstPartyBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzv(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzp(Ljava/lang/String;I)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzp(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_9
.end method

.method public zzq(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/PopupManager;->zzr(Landroid/view/View;)V

    return-void
.end method

.method public zzq(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStoppedResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedBinderCallbacks;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedBinderCallbacks;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzu(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzq(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$IgnoreFriendInviteFirstPartyBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$IgnoreFriendInviteFirstPartyBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzw(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzqo(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/PopupManager;->setGravity(I)V

    return-void
.end method

.method public zzqp(I)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->zzqp(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    goto :goto_9
.end method

.method public zzr(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadStockProfileImagesResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$StockProfileImagesLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$StockProfileImagesLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->zzp(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V

    return-void
.end method

.method public zzr(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelFriendInviteFirstPartyBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelFriendInviteFirstPartyBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzx(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method protected zzra()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.games.service.START"

    return-object v0
.end method

.method protected zzrb()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    return-object v0
.end method

.method public zzs(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$InboxCountResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountsLoadedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountsLoadedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService;->zzs(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzs(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerUnfriendedBinderCallback;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerUnfriendedBinderCallback;-><init>(Lcom/google/android/gms/internal/zzpr$zzb;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzy(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    return-void
.end method

.method public zzsi()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->zzsi()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.AnonymousClass1 (com.google.android.gms.games.internal.GamesClientImpl$1)
.class Lcom/google/android/gms/games/internal/GamesClientImpl$1;
.super Lcom/google/android/gms/games/internal/events/EventIncrementManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SI:Lcom/google/android/gms/games/internal/GamesClientImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$1;->SI:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbja()Lcom/google/android/gms/games/internal/events/EventIncrementCache;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$1;->SI:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier (com.google.android.gms.games.internal.GamesClientImpl$AbstractPeerStatusNotifier)
.class abstract Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractPeerStatusNotifier"
.end annotation


# instance fields
.field private final SJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;->SJ:Ljava/util/ArrayList;

    const/4 v0, 0x0

    array-length v1, p2

    :goto_c
    if-ge v0, v1, :cond_18

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;->SJ:Ljava/util/ArrayList;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;->SJ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomNotifier (com.google.android.gms.games.internal.GamesClientImpl$AbstractRoomNotifier)
.class abstract Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;
.super Lcom/google/android/gms/internal/zzpx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractRoomNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpx",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpx;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-static {p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbj(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
.end method

.method protected bridge synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusNotifier (com.google.android.gms.games.internal.GamesClientImpl$AbstractRoomStatusNotifier)
.class abstract Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;
.super Lcom/google/android/gms/internal/zzpx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractRoomStatusNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzpx",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpx;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    invoke-static {p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbj(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method

.method protected bridge synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.AcceptFriendInviteFirstPartyBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$AcceptFriendInviteFirstPartyBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptFriendInviteFirstPartyBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AcceptFriendInviteFirstPartyBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptFriendInviteFirstPartyBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzba(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptFriendInviteFirstPartyBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.AcceptQuestResultImpl (com.google.android.gms.games.internal.GamesClientImpl$AcceptQuestResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AcceptQuestResultImpl"
.end annotation


# instance fields
.field private final SK:Lcom/google/android/gms/games/quest/Quest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/quest/QuestBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_20

    new-instance v2, Lcom/google/android/gms/games/quest/QuestEntity;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/Quest;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/quest/QuestEntity;-><init>(Lcom/google/android/gms/games/quest/Quest;)V

    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;->SK:Lcom/google/android/gms/games/quest/Quest;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    :goto_1c
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->release()V

    return-void

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;->SK:Lcom/google/android/gms/games/quest/Quest;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    goto :goto_1c

    :catchall_24
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->release()V

    throw v0
.end method


# virtual methods
.method public getQuest()Lcom/google/android/gms/games/quest/Quest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;->SK:Lcom/google/android/gms/games/quest/Quest;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.AchievementUpdatedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$AchievementUpdatedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AchievementUpdatedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzj(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.AchievementsLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$AchievementsLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AchievementsLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzh(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.AppContentLoadedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$AppContentLoadedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$AppContentLoadedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppContentLoadedBinderCallbacks"
.end annotation


# instance fields
.field private final SL:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AppContentLoadedBinderCallbacks;->SL:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zza([Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AppContentLoadedBinderCallbacks;->SL:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAppContentsResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAppContentsResultImpl;-><init>([Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CancelFriendInviteFirstPartyBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$CancelFriendInviteFirstPartyBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CancelFriendInviteFirstPartyBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CancelFriendInviteFirstPartyBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelFriendInviteFirstPartyBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzbe(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelFriendInviteFirstPartyBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CancelMatchResultImpl (com.google.android.gms.games.internal.GamesClientImpl$CancelMatchResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CancelMatchResultImpl"
.end annotation


# instance fields
.field private final SM:Ljava/lang/String;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->SM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMatchId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->SM:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureAvailableBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$CaptureAvailableBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureAvailableBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzg(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureAvailableResultImpl (com.google.android.gms.games.internal.GamesClientImpl$CaptureAvailableResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureAvailableResultImpl"
.end annotation


# instance fields
.field private final SN:Z

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;->SN:Z

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureAvailableResultImpl;->SN:Z

    return v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureCapabilitiesBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$CaptureCapabilitiesBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureCapabilitiesBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zza(ILcom/google/android/gms/games/video/VideoCapabilities;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/VideoCapabilities;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureCapabilitiesResultImpl (com.google.android.gms.games.internal.GamesClientImpl$CaptureCapabilitiesResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureCapabilitiesResultImpl"
.end annotation


# instance fields
.field private final SO:Lcom/google/android/gms/games/video/VideoCapabilities;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/VideoCapabilities;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;->SO:Lcom/google/android/gms/games/video/VideoCapabilities;

    return-void
.end method


# virtual methods
.method public getCapabilities()Lcom/google/android/gms/games/video/VideoCapabilities;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;->SO:Lcom/google/android/gms/games/video/VideoCapabilities;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureCapabilitiesResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureLaunchGameAndOverlayBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$CaptureLaunchGameAndOverlayBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureLaunchGameAndOverlayBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureLaunchGameAndOverlayBinderCallback"
.end annotation


# instance fields
.field private final SP:Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureLaunchGameAndOverlayBinderCallback;->SP:Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;

    return-void
.end method


# virtual methods
.method public zzbh(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureLaunchGameAndOverlayBinderCallback;->SP:Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public zzqg(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureLaunchGameAndOverlayBinderCallback;->SP:Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureOverlayStateBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$CaptureOverlayStateBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureOverlayStateBinderCallback"
.end annotation


# instance fields
.field private final HA:Lcom/google/android/gms/internal/zzqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqs;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Callback must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqs;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    return-void
.end method


# virtual methods
.method public onCaptureOverlayStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureOverlayStateChangedNotifier (com.google.android.gms.games.internal.GamesClientImpl$CaptureOverlayStateChangedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureOverlayStateChangedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final SQ:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;->SQ:I

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;->SQ:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;->onCaptureOverlayStateChanged(I)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureOverlayStateChangedNotifier;->zza(Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CapturePausedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$CapturePausedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CapturePausedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CapturePausedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CapturePausedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzqm(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CapturePausedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStartedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$CaptureStartedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStartedBinderCallbacks"
.end annotation


# instance fields
.field private final SR:Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;

.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    const-string v0, "Callback must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;->SR:Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;

    return-void
.end method


# virtual methods
.method public zzbk(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public zzql(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStartedBinderCallbacks;->SR:Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;->zzsd(I)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStateBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$CaptureStateBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStateBinderCallbacks"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzi(ILandroid/os/Bundle;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/games/video/CaptureState;->zzaa(Landroid/os/Bundle;)Lcom/google/android/gms/games/video/CaptureState;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/CaptureState;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStateResultImpl (com.google.android.gms.games.internal.GamesClientImpl$CaptureStateResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStateResultImpl"
.end annotation


# instance fields
.field private final SS:Lcom/google/android/gms/games/video/CaptureState;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/CaptureState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;->SS:Lcom/google/android/gms/games/video/CaptureState;

    return-void
.end method


# virtual methods
.method public getCaptureState()Lcom/google/android/gms/games/video/CaptureState;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;->SS:Lcom/google/android/gms/games/video/CaptureState;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStateResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStoppedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$CaptureStoppedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStoppedBinderCallbacks"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStoppedResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStoppedResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zza(ILandroid/net/Uri;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedResultImpl;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStoppedResultImpl (com.google.android.gms.games.internal.GamesClientImpl$CaptureStoppedResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStoppedResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStoppedResultImpl"
.end annotation


# instance fields
.field private final ST:Landroid/net/Uri;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedResultImpl;->ST:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStoppedResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStreamingAvailabilityBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$CaptureStreamingAvailabilityBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStreamingAvailabilityBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStreamingAvailabilityResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStreamingAvailabilityResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zza(IZZ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityResultImpl;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;ZZ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStreamingAvailabilityResultImpl (com.google.android.gms.games.internal.GamesClientImpl$CaptureStreamingAvailabilityResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStreamingAvailabilityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStreamingAvailabilityResultImpl"
.end annotation


# instance fields
.field private final SN:Z

.field private final SU:Z

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityResultImpl;->SN:Z

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityResultImpl;->SU:Z

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingAvailabilityResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStreamingEnabledBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$CaptureStreamingEnabledBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingEnabledBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStreamingEnabledBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingEnabledBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzqh(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingEnabledBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStreamingEnabledResultImpl (com.google.android.gms.games.internal.GamesClientImpl$CaptureStreamingEnabledResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingEnabledResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStreamingEnabledResultImpl"
.end annotation


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStreamingMetadataBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$CaptureStreamingMetadataBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStreamingMetadataBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzd(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStreamingMetadataResultImpl (com.google.android.gms.games.internal.GamesClientImpl$CaptureStreamingMetadataResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStreamingMetadataResultImpl"
.end annotation


# instance fields
.field private final Fx:Ljava/lang/String;

.field private final cc:Lcom/google/android/gms/common/api/Status;

.field private final zzcvi:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;->Fx:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;->zzcvi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingMetadataResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStreamingUrlBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$CaptureStreamingUrlBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStreamingUrlBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStreamingUrlResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStreamingUrlResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzm(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlResultImpl;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CaptureStreamingUrlResultImpl (com.google.android.gms.games.internal.GamesClientImpl$CaptureStreamingUrlResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStreamingUrlResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureStreamingUrlResultImpl"
.end annotation


# instance fields
.field private final cc:Lcom/google/android/gms/common/api/Status;

.field private final zzae:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlResultImpl;->zzae:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CaptureStreamingUrlResultImpl;->zzae:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.ClaimMilestoneResultImpl (com.google.android.gms.games.internal.GamesClientImpl$ClaimMilestoneResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClaimMilestoneResultImpl"
.end annotation


# instance fields
.field private final SK:Lcom/google/android/gms/games/quest/Quest;

.field private final SV:Lcom/google/android/gms/games/quest/Milestone;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v2, Lcom/google/android/gms/games/quest/QuestBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_9
    invoke-virtual {v2}, Lcom/google/android/gms/games/quest/QuestBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_50

    new-instance v3, Lcom/google/android/gms/games/quest/QuestEntity;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/Quest;

    invoke-direct {v3, v0}, Lcom/google/android/gms/games/quest/QuestEntity;-><init>(Lcom/google/android/gms/games/quest/Quest;)V

    iput-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->SK:Lcom/google/android/gms/games/quest/Quest;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->SK:Lcom/google/android/gms/games/quest/Quest;

    invoke-interface {v0}, Lcom/google/android/gms/games/quest/Quest;->zzbli()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_27
    if-ge v1, v4, :cond_49

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/Milestone;

    invoke-interface {v0}, Lcom/google/android/gms/games/quest/Milestone;->getMilestoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/Milestone;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->SV:Lcom/google/android/gms/games/quest/Milestone;
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_57

    invoke-virtual {v2}, Lcom/google/android/gms/games/quest/QuestBuffer;->release()V

    :goto_44
    return-void

    :cond_45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    :cond_49
    const/4 v0, 0x0

    :try_start_4a
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->SV:Lcom/google/android/gms/games/quest/Milestone;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_57

    :goto_4c
    invoke-virtual {v2}, Lcom/google/android/gms/games/quest/QuestBuffer;->release()V

    goto :goto_44

    :cond_50
    const/4 v0, 0x0

    :try_start_51
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->SV:Lcom/google/android/gms/games/quest/Milestone;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->SK:Lcom/google/android/gms/games/quest/Quest;
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_57

    goto :goto_4c

    :catchall_57
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/games/quest/QuestBuffer;->release()V

    throw v0
.end method


# virtual methods
.method public getMilestone()Lcom/google/android/gms/games/quest/Milestone;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->SV:Lcom/google/android/gms/games/quest/Milestone;

    return-object v0
.end method

.method public getQuest()Lcom/google/android/gms/games/quest/Quest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;->SK:Lcom/google/android/gms/games/quest/Quest;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.CommitSnapshotResultImpl (com.google.android.gms.games.internal.GamesClientImpl$CommitSnapshotResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommitSnapshotResultImpl"
.end annotation


# instance fields
.field private final SW:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_20

    new-instance v2, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->SW:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    :goto_1c
    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->release()V

    return-void

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->SW:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    goto :goto_1c

    :catchall_24
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->release()V

    throw v0
.end method


# virtual methods
.method public getSnapshotMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;->SW:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.ConnectedToRoomNotifier (com.google.android.gms.games.internal.GamesClientImpl$ConnectedToRoomNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConnectedToRoomNotifier"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onConnectedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.ContactSettingLoadResultImpl (com.google.android.gms.games.internal.GamesClientImpl$ContactSettingLoadResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingLoadResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/Notifications$ContactSettingLoadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactSettingLoadResultImpl"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.ContactSettingsLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$ContactSettingsLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactSettingsLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$ContactSettingLoadResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$ContactSettingLoadResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzai(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingLoadResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingLoadResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.ContactSettingsUpdatedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$ContactSettingsUpdatedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsUpdatedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactSettingsUpdatedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsUpdatedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzqe(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsUpdatedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.DeletePlayerBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$DeletePlayerBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$DeletePlayerBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeletePlayerBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$DeletePlayerBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzqi(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$DeletePlayerBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.DeleteSnapshotResultImpl (com.google.android.gms.games.internal.GamesClientImpl$DeleteSnapshotResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$DeleteSnapshotResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeleteSnapshotResultImpl"
.end annotation


# instance fields
.field private final SX:Ljava/lang/String;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$DeleteSnapshotResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$DeleteSnapshotResultImpl;->SX:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSnapshotId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$DeleteSnapshotResultImpl;->SX:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$DeleteSnapshotResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.DisconnectedFromRoomNotifier (com.google.android.gms.games.internal.GamesClientImpl$DisconnectedFromRoomNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisconnectedFromRoomNotifier"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onDisconnectedFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.EventsLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$EventsLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventsLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzi(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadEventResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadEventResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GameClientEventIncrementCache (com.google.android.gms.games.internal.GamesClientImpl$GameClientEventIncrementCache)
.class Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;
.super Lcom/google/android/gms/games/internal/events/EventIncrementCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameClientEventIncrementCache"
.end annotation


# instance fields
.field final synthetic SI:Lcom/google/android/gms/games/internal/GamesClientImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;->SI:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method protected zzq(Ljava/lang/String;I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;->SI:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;->SI:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzarw()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->zzn(Ljava/lang/String;I)V

    :goto_13
    return-void

    :cond_14
    const-string v0, "GamesClientImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x59

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to increment event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the games client is no longer connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->zzag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_46} :catch_47

    goto :goto_13

    :catch_47
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;->SI:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;Landroid/os/RemoteException;)V

    goto :goto_13
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GameInstancesLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$GameInstancesLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GameInstancesLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameInstancesLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameInstancesLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzp(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameInstancesLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameInstancesResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameInstancesResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GameMuteStatusChangeResultImpl (com.google.android.gms.games.internal.GamesClientImpl$GameMuteStatusChangeResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameMuteStatusChangeResultImpl"
.end annotation


# instance fields
.field private final SY:Ljava/lang/String;

.field private final cc:Lcom/google/android/gms/common/api/Status;

.field private final zzcqf:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->SY:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->zzcqf:Z

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GameMuteStatusChangedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$GameMuteStatusChangedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameMuteStatusChangedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zza(ILjava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GameMuteStatusLoadResultImpl (com.google.android.gms.games.internal.GamesClientImpl$GameMuteStatusLoadResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameMuteStatusLoadResultImpl"
.end annotation


# instance fields
.field private final SY:Ljava/lang/String;

.field private final cc:Lcom/google/android/gms/common/api/Status;

.field private final zzcqf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    if-lez v0, :cond_2b

    const-string v0, "external_game_id"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->SY:Ljava/lang/String;

    const-string v0, "muted"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->zze(Ljava/lang/String;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->zzcqf:Z
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_32

    :goto_27
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_2b
    const/4 v0, 0x0

    :try_start_2c
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->SY:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->zzcqf:Z
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_32

    goto :goto_27

    :catchall_32
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GameMuteStatusLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$GameMuteStatusLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameMuteStatusLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzag(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GameSearchSuggestionsLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameSearchSuggestionsLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGameSearchSuggestionsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGameSearchSuggestionsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzq(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameSearchSuggestionsResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameSearchSuggestionsResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GamerProfileUpdatedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$GamerProfileUpdatedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GamerProfileUpdatedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GamerProfileUpdatedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$UpdateGamerProfileResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$UpdateGamerProfileResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GamerProfileUpdatedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzh(ILandroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GamerProfileUpdatedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateGamerProfileResultImpl;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateGamerProfileResultImpl;-><init>(ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GamesDataHolderResult (com.google.android.gms.games.internal.GamesClientImpl$GamesDataHolderResult)
.class abstract Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;
.super Lcom/google/android/gms/internal/zzpy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "GamesDataHolderResult"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzpy;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GamesLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$GamesLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GamesLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzn(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GetAuthTokenBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$GetAuthTokenBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GetAuthTokenBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetAuthTokenBinderCallbacks"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Games$GetTokenResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Games$GetTokenResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GetAuthTokenBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzi(ILjava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GetAuthTokenBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$GetTokenResultImpl;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$GetTokenResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GetServerAuthCodeBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$GetServerAuthCodeBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetServerAuthCodeBinderCallbacks"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzi(ILjava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeResultImpl;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GetServerAuthCodeResultImpl (com.google.android.gms.games.internal.GamesClientImpl$GetServerAuthCodeResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetServerAuthCodeResultImpl"
.end annotation


# instance fields
.field private final SZ:Ljava/lang/String;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeResultImpl;->SZ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeResultImpl;->SZ:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GetServerAuthCodeResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.GetTokenResultImpl (com.google.android.gms.games.internal.GamesClientImpl$GetTokenResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GetTokenResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Games$GetTokenResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GetTokenResultImpl"
.end annotation


# instance fields
.field private final cc:Lcom/google/android/gms/common/api/Status;

.field private final ct:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GetTokenResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GetTokenResultImpl;->ct:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GetTokenResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.HeadlessCaptureEnabledBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$HeadlessCaptureEnabledBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$HeadlessCaptureEnabledBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeadlessCaptureEnabledBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$HeadlessCaptureEnabledBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzbi(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$HeadlessCaptureEnabledBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.IgnoreFriendInviteFirstPartyBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$IgnoreFriendInviteFirstPartyBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$IgnoreFriendInviteFirstPartyBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IgnoreFriendInviteFirstPartyBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$IgnoreFriendInviteFirstPartyBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzbd(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$IgnoreFriendInviteFirstPartyBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.InboxCountResultImpl (com.google.android.gms.games.internal.GamesClientImpl$InboxCountResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Notifications$InboxCountResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InboxCountResultImpl"
.end annotation


# instance fields
.field private final Ta:Landroid/os/Bundle;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;->Ta:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.InboxCountsLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$InboxCountsLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountsLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InboxCountsLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$InboxCountResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Notifications$InboxCountResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzg(ILandroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.InitiateMatchResultImpl (com.google.android.gms.games.internal.GamesClientImpl$InitiateMatchResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InitiateMatchResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InitiateMatchResultImpl"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.InvitationReceivedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$InvitationReceivedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InvitationReceivedBinderCallback"
.end annotation


# instance fields
.field private final HA:Lcom/google/android/gms/internal/zzqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqs;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    return-void
.end method


# virtual methods
.method public onInvitationRemoved(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    return-void
.end method

.method public zzs(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    new-instance v1, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_19

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_29

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->release()V

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;-><init>(Lcom/google/android/gms/games/multiplayer/Invitation;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_28
    return-void

    :catchall_29
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->release()V

    throw v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.InvitationReceivedNotifier (com.google.android.gms.games.internal.GamesClientImpl$InvitationReceivedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InvitationReceivedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final Tb:Lcom/google/android/gms/games/multiplayer/Invitation;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;->Tb:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;->Tb:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;->onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedNotifier;->zza(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.InvitationRemovedNotifier (com.google.android.gms.games.internal.GamesClientImpl$InvitationRemovedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InvitationRemovedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final bT:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;->bT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;->bT:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;->onInvitationRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedNotifier;->zza(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.InvitationsLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$InvitationsLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InvitationsLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzr(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.InviteUpdateResultImpl (com.google.android.gms.games.internal.GamesClientImpl$InviteUpdateResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/social/Social$InviteUpdateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InviteUpdateResultImpl"
.end annotation


# instance fields
.field private final Tc:Lcom/google/android/gms/games/social/SocialInvite;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/social/SocialInviteBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_20

    new-instance v2, Lcom/google/android/gms/games/social/SocialInviteEntity;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/social/SocialInvite;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/social/SocialInviteEntity;-><init>(Lcom/google/android/gms/games/social/SocialInvite;)V

    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;->Tc:Lcom/google/android/gms/games/social/SocialInvite;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    :goto_1c
    invoke-virtual {v1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    return-void

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;->Tc:Lcom/google/android/gms/games/social/SocialInvite;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    goto :goto_1c

    :catchall_24
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    throw v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.InvitesLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$InvitesLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$InvitesLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InvitesLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$LoadInvitesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$LoadInvitesResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitesLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzbh(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitesLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitesResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitesResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.JoinedRoomNotifier (com.google.android.gms.games.internal.GamesClientImpl$JoinedRoomNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JoinedRoomNotifier"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
    .registers 4

    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LeaderboardMetadataResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LeaderboardMetadataResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeaderboardMetadataResultImpl"
.end annotation


# instance fields
.field private final Td:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;->Td:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    return-void
.end method


# virtual methods
.method public getLeaderboards()Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;->Td:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LeaderboardScoresLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$LeaderboardScoresLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeaderboardScoresLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LeaderboardsLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$LeaderboardsLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeaderboardsLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzj(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LeaveMatchResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LeaveMatchResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LeaveMatchResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeaveMatchResultImpl"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LeftRoomNotifier (com.google.android.gms.games.internal.GamesClientImpl$LeftRoomNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LeftRoomNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final Te:Ljava/lang/String;

.field private final ob:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomNotifier;->ob:I

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomNotifier;->Te:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomNotifier;->ob:I

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomNotifier;->Te:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onLeftRoom(ILjava/lang/String;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.ListVideosBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$ListVideosBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListVideosBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$ListVideosResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/video/Videos$ListVideosResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzax(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.ListVideosResultImpl (com.google.android.gms.games.internal.GamesClientImpl$ListVideosResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$ListVideosResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListVideosResultImpl"
.end annotation


# instance fields
.field private final Tf:Lcom/google/android/gms/games/video/VideoBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/video/VideoBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/video/VideoBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ListVideosResultImpl;->Tf:Lcom/google/android/gms/games/video/VideoBuffer;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadAchievementsResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadAchievementsResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadAchievementsResultImpl"
.end annotation


# instance fields
.field private final Tg:Lcom/google/android/gms/games/achievement/AchievementBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/achievement/AchievementBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;->Tg:Lcom/google/android/gms/games/achievement/AchievementBuffer;

    return-void
.end method


# virtual methods
.method public getAchievements()Lcom/google/android/gms/games/achievement/AchievementBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;->Tg:Lcom/google/android/gms/games/achievement/AchievementBuffer;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadAppContentsResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadAppContentsResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAppContentsResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadAppContentsResultImpl"
.end annotation


# instance fields
.field private final Th:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAppContentsResultImpl;->Th:Ljava/util/ArrayList;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadEventResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadEventResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadEventResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/event/Events$LoadEventsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadEventResultImpl"
.end annotation


# instance fields
.field private final Ti:Lcom/google/android/gms/games/event/EventBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/event/EventBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/event/EventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadEventResultImpl;->Ti:Lcom/google/android/gms/games/event/EventBuffer;

    return-void
.end method


# virtual methods
.method public getEvents()Lcom/google/android/gms/games/event/EventBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadEventResultImpl;->Ti:Lcom/google/android/gms/games/event/EventBuffer;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadGameInstancesResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadGameInstancesResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameInstancesResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadGameInstancesResultImpl"
.end annotation


# instance fields
.field private final Tj:Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameInstancesResultImpl;->Tj:Lcom/google/android/gms/games/internal/game/GameInstanceBuffer;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadGameSearchSuggestionsResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadGameSearchSuggestionsResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameSearchSuggestionsResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGameSearchSuggestionsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadGameSearchSuggestionsResultImpl"
.end annotation


# instance fields
.field private final Tk:Lcom/google/android/gms/games/internal/game/GameSearchSuggestionBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/internal/game/GameSearchSuggestionBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/game/GameSearchSuggestionBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameSearchSuggestionsResultImpl;->Tk:Lcom/google/android/gms/games/internal/game/GameSearchSuggestionBuffer;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadGamesResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadGamesResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadGamesResultImpl"
.end annotation


# instance fields
.field private final Tl:Lcom/google/android/gms/games/GameBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/GameBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;->Tl:Lcom/google/android/gms/games/GameBuffer;

    return-void
.end method


# virtual methods
.method public getGames()Lcom/google/android/gms/games/GameBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;->Tl:Lcom/google/android/gms/games/GameBuffer;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadInvitationsResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadInvitationsResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadInvitationsResultImpl"
.end annotation


# instance fields
.field private final Tm:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;->Tm:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    return-void
.end method


# virtual methods
.method public getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;->Tm:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadInvitesResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadInvitesResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitesResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/social/Social$LoadInvitesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadInvitesResultImpl"
.end annotation


# instance fields
.field private final Tn:Lcom/google/android/gms/games/social/SocialInviteBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/social/SocialInviteBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitesResultImpl;->Tn:Lcom/google/android/gms/games/social/SocialInviteBuffer;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadMatchResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadMatchResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadMatchResultImpl"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadMatchesResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadMatchesResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadMatchesResultImpl"
.end annotation


# instance fields
.field private final To:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-direct {v0, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;->To:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    return-void
.end method


# virtual methods
.method public getMatches()Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;->To:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;->To:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->release()V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadPlayerScoreResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadPlayerScoreResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadPlayerScoreResultImpl"
.end annotation


# instance fields
.field private final Tp:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_21

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;->Tp:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    :goto_1d
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->release()V

    return-void

    :cond_21
    const/4 v0, 0x0

    :try_start_22
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;->Tp:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    goto :goto_1d

    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->release()V

    throw v0
.end method


# virtual methods
.method public getScore()Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;->Tp:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadPlayerStatsResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadPlayerStatsResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerStatsResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadPlayerStatsResultImpl"
.end annotation


# instance fields
.field private final Tq:Lcom/google/android/gms/games/stats/PlayerStats;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_20

    new-instance v2, Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/stats/PlayerStats;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;-><init>(Lcom/google/android/gms/games/stats/PlayerStats;)V

    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerStatsResultImpl;->Tq:Lcom/google/android/gms/games/stats/PlayerStats;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    :goto_1c
    invoke-virtual {v1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->release()V

    return-void

    :cond_20
    const/4 v0, 0x0

    :try_start_21
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerStatsResultImpl;->Tq:Lcom/google/android/gms/games/stats/PlayerStats;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    goto :goto_1c

    :catchall_24
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->release()V

    throw v0
.end method


# virtual methods
.method public getPlayerStats()Lcom/google/android/gms/games/stats/PlayerStats;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerStatsResultImpl;->Tq:Lcom/google/android/gms/games/stats/PlayerStats;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadPlayersResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadPlayersResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadPlayersResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadPlayersResultImpl"
.end annotation


# instance fields
.field private final Tr:Lcom/google/android/gms/games/PlayerBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;->Tr:Lcom/google/android/gms/games/PlayerBuffer;

    return-void
.end method


# virtual methods
.method public getPlayers()Lcom/google/android/gms/games/PlayerBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;->Tr:Lcom/google/android/gms/games/PlayerBuffer;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadQuestsResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadQuestsResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadQuestsResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadQuestsResultImpl"
.end annotation


# instance fields
.field private final tk:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadQuestsResultImpl;->tk:Lcom/google/android/gms/common/data/DataHolder;

    return-void
.end method


# virtual methods
.method public getQuests()Lcom/google/android/gms/games/quest/QuestBuffer;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/quest/QuestBuffer;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadQuestsResultImpl;->tk:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadRequestSummariesResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadRequestSummariesResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestSummariesResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadRequestSummariesResultImpl"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadRequestsResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadRequestsResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadRequestsResultImpl"
.end annotation


# instance fields
.field private final Ts:Landroid/os/Bundle;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->Ts:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getRequests(I)Lcom/google/android/gms/games/request/GameRequestBuffer;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/games/internal/constants/RequestType;->zzqs(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->Ts:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->Ts:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    new-instance v1, Lcom/google/android/gms/games/request/GameRequestBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/request/GameRequestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    move-object v0, v1

    goto :goto_d
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->Ts:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;->Ts:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    goto :goto_a

    :cond_24
    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadScoresResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadScoresResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadScoresResultImpl"
.end annotation


# instance fields
.field private final Tt:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

.field private final Tu:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Tt:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    :goto_1d
    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->release()V

    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v0, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Tu:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-void

    :cond_28
    const/4 v0, 0x0

    :try_start_29
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Tt:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_2c

    goto :goto_1d

    :catchall_2c
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;->release()V

    throw v0
.end method


# virtual methods
.method public getLeaderboard()Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Tt:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    return-object v0
.end method

.method public getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;->Tu:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadSnapshotsResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadSnapshotsResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadSnapshotsResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadSnapshotsResultImpl"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public getSnapshots()Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadSnapshotsResultImpl;->tk:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadStockProfileImagesResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadStockProfileImagesResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadStockProfileImagesResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadStockProfileImagesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadStockProfileImagesResultImpl"
.end annotation


# instance fields
.field private final Tv:Lcom/google/android/gms/games/internal/player/StockProfileImageBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/internal/player/StockProfileImageBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/player/StockProfileImageBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadStockProfileImagesResultImpl;->Tv:Lcom/google/android/gms/games/internal/player/StockProfileImageBuffer;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadStockProfileImagesResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadXpForGameCategoriesResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadXpForGameCategoriesResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadXpForGameCategoriesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadXpForGameCategoriesResultImpl"
.end annotation


# instance fields
.field private final Tw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Tx:Landroid/os/Bundle;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    const-string v0, "game_category_list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->Tw:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->Tx:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.LoadXpStreamResultImpl (com.google.android.gms.games.internal.GamesClientImpl$LoadXpStreamResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpStreamResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadXpStreamResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadXpStreamResultImpl"
.end annotation


# instance fields
.field private final Ty:Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpStreamResultImpl;->Ty:Lcom/google/android/gms/games/internal/experience/ExperienceEventBuffer;

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.MatchRemovedNotifier (com.google.android.gms.games.internal.GamesClientImpl$MatchRemovedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchRemovedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final Tz:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;->Tz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;->Tz:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;->onTurnBasedMatchRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;->zza(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.MatchUpdateReceivedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$MatchUpdateReceivedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchUpdateReceivedBinderCallback"
.end annotation


# instance fields
.field private final HA:Lcom/google/android/gms/internal/zzqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqs;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    return-void
.end method


# virtual methods
.method public onTurnBasedMatchRemoved(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedNotifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    return-void
.end method

.method public zzy(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_19

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_29

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->release()V

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedNotifier;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_28
    return-void

    :catchall_29
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->release()V

    throw v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.MatchUpdateReceivedNotifier (com.google.android.gms.games.internal.GamesClientImpl$MatchUpdateReceivedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchUpdateReceivedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final TA:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedNotifier;->TA:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedNotifier;->TA:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;->onTurnBasedMatchReceived(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedNotifier;->zza(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.MessageReceivedNotifier (com.google.android.gms.games.internal.GamesClientImpl$MessageReceivedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageReceivedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final TB:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;->TB:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;->TB:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;->onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.NearbyPlayerDetectedNotifier (com.google.android.gms.games.internal.GamesClientImpl$NearbyPlayerDetectedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$NearbyPlayerDetectedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NearbyPlayerDetectedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;",
        ">;"
    }
.end annotation


# virtual methods
.method public zza(Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;)V
    .registers 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;->zza(Lcom/google/android/gms/games/Player;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$NearbyPlayerDetectedNotifier;->zza(Lcom/google/android/gms/games/OnNearbyPlayerDetectedListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.OpenSnapshotResultImpl (com.google.android.gms.games.internal.GamesClientImpl$OpenSnapshotResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OpenSnapshotResultImpl"
.end annotation


# instance fields
.field private final TC:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final TD:Ljava/lang/String;

.field private final TE:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final TF:Lcom/google/android/gms/drive/Contents;

.field private final TG:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
    .registers 9

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v2, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_a
    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result v3

    if-nez v3, :cond_25

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TC:Lcom/google/android/gms/games/snapshot/Snapshot;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TE:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_52

    :goto_16
    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->release()V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TD:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TF:Lcom/google/android/gms/drive/Contents;

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v0, p5}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TG:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-void

    :cond_25
    :try_start_25
    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->getCount()I

    move-result v3

    if-ne v3, v0, :cond_59

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v3

    const/16 v4, 0xfa4

    if-eq v3, v4, :cond_57

    :goto_33
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v3, p3}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TC:Lcom/google/android/gms/games/snapshot/Snapshot;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TE:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_51
    .catchall {:try_start_25 .. :try_end_51} :catchall_52

    goto :goto_16

    :catchall_52
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->release()V

    throw v0

    :cond_57
    move v0, v1

    goto :goto_33

    :cond_59
    :try_start_59
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v3, p3}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TC:Lcom/google/android/gms/games/snapshot/Snapshot;

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v3, p4}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TE:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_89
    .catchall {:try_start_59 .. :try_end_89} :catchall_52

    goto :goto_16
.end method


# virtual methods
.method public getConflictId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TD:Ljava/lang/String;

    return-object v0
.end method

.method public getConflictingSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TE:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-object v0
.end method

.method public getResolutionSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TG:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-object v0
.end method

.method public getSnapshot()Lcom/google/android/gms/games/snapshot/Snapshot;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;->TC:Lcom/google/android/gms/games/snapshot/Snapshot;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.P2PConnectedNotifier (com.google.android.gms.games.internal.GamesClientImpl$P2PConnectedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "P2PConnectedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final TH:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedNotifier;->TH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedNotifier;->TH:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onP2PConnected(Ljava/lang/String;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.P2PDisconnectedNotifier (com.google.android.gms.games.internal.GamesClientImpl$P2PDisconnectedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "P2PDisconnectedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final TH:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedNotifier;->TH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedNotifier;->TH:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onP2PDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PeerConnectedNotifier (com.google.android.gms.games.internal.GamesClientImpl$PeerConnectedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeerConnectedNotifier"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onPeersConnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PeerDeclinedNotifier (com.google.android.gms.games.internal.GamesClientImpl$PeerDeclinedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeerDeclinedNotifier"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onPeerDeclined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PeerDisconnectedNotifier (com.google.android.gms.games.internal.GamesClientImpl$PeerDisconnectedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeerDisconnectedNotifier"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onPeersDisconnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PeerInvitedToRoomNotifier (com.google.android.gms.games.internal.GamesClientImpl$PeerInvitedToRoomNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeerInvitedToRoomNotifier"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onPeerInvitedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PeerJoinedRoomNotifier (com.google.android.gms.games.internal.GamesClientImpl$PeerJoinedRoomNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeerJoinedRoomNotifier"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onPeerJoined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PeerLeftRoomNotifier (com.google.android.gms.games.internal.GamesClientImpl$PeerLeftRoomNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeerLeftRoomNotifier"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onPeerLeft(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PlayerLeaderboardScoreLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerLeaderboardScoreLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzaj(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PlayerStatsLoadedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$PlayerStatsLoadedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerStatsLoadedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerStatsLoadedBinderCallbacks"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerStatsLoadedBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzaw(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerStatsLoadedBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerStatsResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerStatsResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PlayerUnfriendedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$PlayerUnfriendedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerUnfriendedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerUnfriendedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerUnfriendedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzbf(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerUnfriendedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PlayerXpForGameCategoriesLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerXpForGameCategoriesLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpForGameCategoriesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpForGameCategoriesResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzf(ILandroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PlayerXpStreamLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$PlayerXpStreamLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayerXpStreamLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpStreamResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpStreamResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzau(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpStreamResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpStreamResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PlayersLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$PlayersLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayersLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzl(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public zzm(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.PopupLocationInfoBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$PopupLocationInfoBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$PopupLocationInfoBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PopupLocationInfoBinderCallbacks"
.end annotation


# instance fields
.field private final SD:Lcom/google/android/gms/games/internal/PopupManager;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/PopupManager;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesClient;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PopupLocationInfoBinderCallbacks;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    return-void
.end method


# virtual methods
.method public zzbhy()Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$PopupLocationInfoBinderCallbacks;->SD:Lcom/google/android/gms/games/internal/PopupManager;

    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/PopupManager;->zzbjr()Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/PopupLocationInfoParcelable;-><init>(Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.ProfileSettingsLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$ProfileSettingsLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProfileSettingsLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzav(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/player/ProfileSettingsEntity;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/player/ProfileSettingsEntity;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.ProfileSettingsUpdatedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$ProfileSettingsUpdatedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsUpdatedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProfileSettingsUpdatedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsUpdatedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzqf(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$ProfileSettingsUpdatedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.QuestAcceptedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$QuestAcceptedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestAcceptedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QuestAcceptedBinderCallbacks"
.end annotation


# instance fields
.field private final TI:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestAcceptedBinderCallbacks;->TI:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzaq(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestAcceptedBinderCallbacks;->TI:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.QuestCompletedNotifier (com.google.android.gms.games.internal.GamesClientImpl$QuestCompletedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QuestCompletedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/quest/QuestUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final SK:Lcom/google/android/gms/games/quest/Quest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/quest/Quest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;->SK:Lcom/google/android/gms/games/quest/Quest;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;->SK:Lcom/google/android/gms/games/quest/Quest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/quest/QuestUpdateListener;->onQuestCompleted(Lcom/google/android/gms/games/quest/Quest;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/quest/QuestUpdateListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;->zza(Lcom/google/android/gms/games/quest/QuestUpdateListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.QuestMilestoneClaimBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$QuestMilestoneClaimBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QuestMilestoneClaimBinderCallbacks"
.end annotation


# instance fields
.field private final TJ:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;",
            ">;"
        }
    .end annotation
.end field

.field private final TK:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;->TJ:Lcom/google/android/gms/internal/zzpr$zzb;

    const-string v0, "MilestoneId must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;->TK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zzap(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;->TJ:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;->TK:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.QuestUpdateBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$QuestUpdateBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QuestUpdateBinderCallback"
.end annotation


# instance fields
.field private final HA:Lcom/google/android/gms/internal/zzqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/quest/QuestUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqs;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/quest/QuestUpdateListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    return-void
.end method

.method private zzbk(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/quest/Quest;
    .registers 5

    new-instance v1, Lcom/google/android/gms/games/quest/QuestBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_19

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/Quest;

    invoke-interface {v0}, Lcom/google/android/gms/games/quest/Quest;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/Quest;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->release()V

    return-object v0

    :catchall_1d
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/quest/QuestBuffer;->release()V

    throw v0
.end method


# virtual methods
.method public zzar(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->zzbk(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/quest/Quest;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedNotifier;-><init>(Lcom/google/android/gms/games/quest/Quest;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_10
    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.QuestsLoadedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$QuestsLoadedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QuestsLoadedBinderCallbacks"
.end annotation


# instance fields
.field private final TL:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;->TL:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzat(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;->TL:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadQuestsResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadQuestsResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RealTimeMessageSentNotifier (com.google.android.gms.games.internal.GamesClientImpl$RealTimeMessageSentNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RealTimeMessageSentNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final TM:Ljava/lang/String;

.field private final TN:I

.field private final ob:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->ob:I

    iput p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->TN:I

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->TM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V
    .registers 5

    if-eqz p1, :cond_b

    iget v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->ob:I

    iget v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->TN:I

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->TM:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;->onRealTimeMessageSent(IILjava/lang/String;)V

    :cond_b
    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;->zza(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RealTimeReliableMessageBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$RealTimeReliableMessageBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RealTimeReliableMessageBinderCallbacks"
.end annotation


# instance fields
.field final TO:Lcom/google/android/gms/internal/zzqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqs;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->TO:Lcom/google/android/gms/internal/zzqs;

    return-void
.end method


# virtual methods
.method public zzb(IILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->TO:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->TO:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentNotifier;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RequestReceivedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$RequestReceivedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestReceivedBinderCallback"
.end annotation


# instance fields
.field private final HA:Lcom/google/android/gms/internal/zzqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/request/OnRequestReceivedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqs;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/request/OnRequestReceivedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    return-void
.end method


# virtual methods
.method public onRequestRemoved(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedNotifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    return-void
.end method

.method public zzt(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    new-instance v1, Lcom/google/android/gms/games/request/GameRequestBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/request/GameRequestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_19

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/request/GameRequestBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/request/GameRequest;

    invoke-interface {v0}, Lcom/google/android/gms/games/request/GameRequest;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/request/GameRequest;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_29

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->release()V

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->HA:Lcom/google/android/gms/internal/zzqs;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedNotifier;-><init>(Lcom/google/android/gms/games/request/GameRequest;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_28
    return-void

    :catchall_29
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->release()V

    throw v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RequestReceivedNotifier (com.google.android.gms.games.internal.GamesClientImpl$RequestReceivedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestReceivedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/request/OnRequestReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final TP:Lcom/google/android/gms/games/request/GameRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/request/GameRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedNotifier;->TP:Lcom/google/android/gms/games/request/GameRequest;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedNotifier;->TP:Lcom/google/android/gms/games/request/GameRequest;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/request/OnRequestReceivedListener;->onRequestReceived(Lcom/google/android/gms/games/request/GameRequest;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/request/OnRequestReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedNotifier;->zza(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RequestRemovedNotifier (com.google.android.gms.games.internal.GamesClientImpl$RequestRemovedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestRemovedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/request/OnRequestReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbvu:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedNotifier;->zzbvu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedNotifier;->zzbvu:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/request/OnRequestReceivedListener;->onRequestRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/request/OnRequestReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedNotifier;->zza(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RequestSentBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$RequestSentBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSentBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestSentBinderCallbacks"
.end annotation


# instance fields
.field private final TQ:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$SendRequestResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$SendRequestResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSentBinderCallbacks;->TQ:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzal(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSentBinderCallbacks;->TQ:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RequestSummariesLoadedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$RequestSummariesLoadedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestSummariesLoadedBinderCallbacks"
.end annotation


# instance fields
.field private final TR:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;->TR:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzam(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;->TR:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestSummariesResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestSummariesResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RequestsLoadedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$RequestsLoadedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestsLoadedBinderCallbacks"
.end annotation


# instance fields
.field private final TS:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;->TS:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzd(ILandroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;->TS:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RequestsUpdatedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$RequestsUpdatedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestsUpdatedBinderCallbacks"
.end annotation


# instance fields
.field private final TT:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;->TT:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzak(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;->TT:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RoomAutoMatchingNotifier (com.google.android.gms.games.internal.GamesClientImpl$RoomAutoMatchingNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoomAutoMatchingNotifier"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onRoomAutoMatching(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RoomBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$RoomBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoomBinderCallbacks"
.end annotation


# instance fields
.field private final TU:Lcom/google/android/gms/internal/zzqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqs",
            "<+",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final TV:Lcom/google/android/gms/internal/zzqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqs",
            "<+",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final TW:Lcom/google/android/gms/internal/zzqs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqs;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TU:Lcom/google/android/gms/internal/zzqs;

    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TW:Lcom/google/android/gms/internal/zzqs;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/internal/zzqs;Lcom/google/android/gms/internal/zzqs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqs",
            "<+",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzqs",
            "<+",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            ">;",
            "Lcom/google/android/gms/internal/zzqs",
            "<",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzqs;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TU:Lcom/google/android/gms/internal/zzqs;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TW:Lcom/google/android/gms/internal/zzqs;

    return-void
.end method


# virtual methods
.method public onLeftRoom(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TU:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomNotifier;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    return-void
.end method

.method public onP2PConnected(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedNotifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public onP2PDisconnected(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedNotifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TW:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TW:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedNotifier;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public zza(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public zzaa(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TU:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    return-void
.end method

.method public zzab(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public zzac(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public zzad(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TU:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    return-void
.end method

.method public zzae(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public zzaf(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public zzc(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public zzd(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public zze(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public zzf(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TV:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedNotifier;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_e
    return-void
.end method

.method public zzz(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->TU:Lcom/google/android/gms/internal/zzqs;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedNotifier;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RoomConnectedNotifier (com.google.android.gms.games.internal.GamesClientImpl$RoomConnectedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoomConnectedNotifier"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
    .registers 4

    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onRoomConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RoomConnectingNotifier (com.google.android.gms.games.internal.GamesClientImpl$RoomConnectingNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoomConnectingNotifier"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .registers 3

    invoke-interface {p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onRoomConnecting(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.RoomCreatedNotifier (com.google.android.gms.games.internal.GamesClientImpl$RoomCreatedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedNotifier;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoomCreatedNotifier"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomNotifier;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)V
    .registers 4

    invoke-interface {p1, p3, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onRoomCreated(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SendFriendInviteFirstPartyBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$SendFriendInviteFirstPartyBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SendFriendInviteFirstPartyBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendFriendInviteFirstPartyBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/social/Social$InviteUpdateResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SendFriendInviteFirstPartyBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzaz(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SendFriendInviteFirstPartyBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InviteUpdateResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SendRequestResultImpl (com.google.android.gms.games.internal.GamesClientImpl$SendRequestResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests$SendRequestResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendRequestResultImpl"
.end annotation


# instance fields
.field private final TP:Lcom/google/android/gms/games/request/GameRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/request/GameRequestBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/request/GameRequestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_21

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/request/GameRequestBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/request/GameRequest;

    invoke-interface {v0}, Lcom/google/android/gms/games/request/GameRequest;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/request/GameRequest;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;->TP:Lcom/google/android/gms/games/request/GameRequest;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    :goto_1d
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->release()V

    return-void

    :cond_21
    const/4 v0, 0x0

    :try_start_22
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;->TP:Lcom/google/android/gms/games/request/GameRequest;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    goto :goto_1d

    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->release()V

    throw v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SetPlayerMutedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$SetPlayerMutedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SetPlayerMutedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetPlayerMutedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SetPlayerMutedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzbg(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SetPlayerMutedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SignOutCompleteBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$SignOutCompleteBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SignOutCompleteBinderCallbacks"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzbhx()V
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SnapshotCommittedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$SnapshotCommittedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotCommittedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SnapshotCommittedBinderCallbacks"
.end annotation


# instance fields
.field private final TX:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotCommittedBinderCallbacks;->TX:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzao(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotCommittedBinderCallbacks;->TX:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SnapshotDeletedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$SnapshotDeletedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SnapshotDeletedBinderCallbacks"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzl(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$DeleteSnapshotResultImpl;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$DeleteSnapshotResultImpl;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SnapshotOpenedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$SnapshotOpenedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SnapshotOpenedBinderCallbacks"
.end annotation


# instance fields
.field private final TY:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;->TY:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;->TY:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
    .registers 13

    iget-object v6, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;->TY:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SnapshotsLoadedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$SnapshotsLoadedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SnapshotsLoadedBinderCallbacks"
.end annotation


# instance fields
.field private final TZ:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;->TZ:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzan(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;->TZ:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadSnapshotsResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadSnapshotsResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SocialInviteRemovedNotifier (com.google.android.gms.games.internal.GamesClientImpl$SocialInviteRemovedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocialInviteRemovedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final Ua:Lcom/google/android/gms/games/social/SocialInvite;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/social/SocialInvite;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;->Ua:Lcom/google/android/gms/games/social/SocialInvite;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;->Ua:Lcom/google/android/gms/games/social/SocialInvite;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;->zzb(Lcom/google/android/gms/games/social/SocialInvite;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;->zza(Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SocialInviteUpdateReceivedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$SocialInviteUpdateReceivedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocialInviteUpdateReceivedBinderCallback"
.end annotation


# virtual methods
.method public zzbb(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/games/social/SocialInviteBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_6
    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/social/SocialInvite;

    invoke-interface {v0}, Lcom/google/android/gms/games/social/SocialInvite;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/social/SocialInvite;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_27

    :goto_19
    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    if-eqz v0, :cond_26

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;-><init>(Lcom/google/android/gms/games/social/SocialInvite;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_26
    return-void

    :catchall_27
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    throw v0

    :cond_2c
    move-object v0, v1

    goto :goto_19
.end method

.method public zzbc(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/games/social/SocialInviteBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/social/SocialInviteBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_6
    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/social/SocialInvite;

    invoke-interface {v0}, Lcom/google/android/gms/games/social/SocialInvite;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/social/SocialInvite;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_27

    :goto_19
    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    if-eqz v0, :cond_26

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;

    invoke-direct {v2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteRemovedNotifier;-><init>(Lcom/google/android/gms/games/social/SocialInvite;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzqs;->zza(Lcom/google/android/gms/internal/zzqs$zzb;)V

    :cond_26
    return-void

    :catchall_27
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/games/social/SocialInviteBuffer;->release()V

    throw v0

    :cond_2c
    move-object v0, v1

    goto :goto_19
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SocialInviteUpdateReceivedNotifier (com.google.android.gms.games.internal.GamesClientImpl$SocialInviteUpdateReceivedNotifier)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqs$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocialInviteUpdateReceivedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqs$zzb",
        "<",
        "Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final Ua:Lcom/google/android/gms/games/social/SocialInvite;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/social/SocialInvite;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;->Ua:Lcom/google/android/gms/games/social/SocialInvite;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;->Ua:Lcom/google/android/gms/games/social/SocialInvite;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;->zza(Lcom/google/android/gms/games/social/SocialInvite;)V

    return-void
.end method

.method public zzapg()V
    .registers 1

    return-void
.end method

.method public synthetic zzu(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;->zza(Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.StockProfileImagesLoadedBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$StockProfileImagesLoadedBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$StockProfileImagesLoadedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StockProfileImagesLoadedBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadStockProfileImagesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/Players$LoadStockProfileImagesResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$StockProfileImagesLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzay(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$StockProfileImagesLoadedBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadStockProfileImagesResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadStockProfileImagesResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SubmitScoreBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$SubmitScoreBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubmitScoreBinderCallbacks"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzk(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreBinderCallbacks;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.SubmitScoreResultImpl (com.google.android.gms.games.internal.GamesClientImpl$SubmitScoreResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubmitScoreResultImpl"
.end annotation


# instance fields
.field private final Ub:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_3
    new-instance v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;->Ub:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :catchall_e
    move-exception v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method


# virtual methods
.method public getScoreData()Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;->Ub:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchCanceledBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TurnBasedMatchCanceledBinderCallbacks"
.end annotation


# instance fields
.field private final Uc:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;->Uc:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzk(ILjava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;->Uc:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchInitiatedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TurnBasedMatchInitiatedBinderCallbacks"
.end annotation


# instance fields
.field private final Ud:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;->Ud:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzv(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;->Ud:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InitiateMatchResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InitiateMatchResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchLeftBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$TurnBasedMatchLeftBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TurnBasedMatchLeftBinderCallbacks"
.end annotation


# instance fields
.field private final Ue:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;->Ue:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzx(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;->Ue:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaveMatchResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaveMatchResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchLoadedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TurnBasedMatchLoadedBinderCallbacks"
.end annotation


# instance fields
.field private final Uf:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks;->Uf:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzu(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks;->Uf:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchResult (com.google.android.gms.games.internal.GamesClientImpl$TurnBasedMatchResult)
.class abstract Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TurnBasedMatchResult"
.end annotation


# instance fields
.field final TA:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_21

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;->TA:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    :goto_1d
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->release()V

    return-void

    :cond_21
    const/4 v0, 0x0

    :try_start_22
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;->TA:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_25

    goto :goto_1d

    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->release()V

    throw v0
.end method


# virtual methods
.method public getMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;->TA:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchUpdatedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TurnBasedMatchUpdatedBinderCallbacks"
.end annotation


# instance fields
.field private final Ug:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;->Ug:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzw(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;->Ug:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateMatchResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateMatchResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.TurnBasedMatchesLoadedBinderCallbacks (com.google.android.gms.games.internal.GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TurnBasedMatchesLoadedBinderCallbacks"
.end annotation


# instance fields
.field private final Uh:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;->Uh:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzc(ILandroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;->Uh:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.UpdateAchievementResultImpl (com.google.android.gms.games.internal.GamesClientImpl$UpdateAchievementResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateAchievementResultImpl"
.end annotation


# instance fields
.field private final RL:Ljava/lang/String;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->zzps(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->RL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAchievementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->RL:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.UpdateAutoSignInBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$UpdateAutoSignInBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAutoSignInBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateAutoSignInBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAutoSignInBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzqj(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAutoSignInBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.UpdateGamerProfileResultImpl (com.google.android.gms.games.internal.GamesClientImpl$UpdateGamerProfileResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateGamerProfileResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Players$UpdateGamerProfileResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateGamerProfileResultImpl"
.end annotation


# instance fields
.field private final Ui:Landroid/os/Bundle;

.field private final cc:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(ILandroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateGamerProfileResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateGamerProfileResultImpl;->Ui:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateGamerProfileResultImpl;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.UpdateHeadlessCapturePermissionBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$UpdateHeadlessCapturePermissionBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateHeadlessCapturePermissionBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateHeadlessCapturePermissionBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzpr$zzb;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateHeadlessCapturePermissionBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzbj(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateHeadlessCapturePermissionBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.UpdateMatchResultImpl (com.google.android.gms.games.internal.GamesClientImpl$UpdateMatchResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateMatchResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateMatchResultImpl"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.UpdateProfileDiscoverabilityBinderCallback (com.google.android.gms.games.internal.GamesClientImpl$UpdateProfileDiscoverabilityBinderCallback)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateProfileDiscoverabilityBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateProfileDiscoverabilityBinderCallback"
.end annotation


# instance fields
.field private final zj:Lcom/google/android/gms/internal/zzpr$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpr$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpr$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateProfileDiscoverabilityBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    return-void
.end method


# virtual methods
.method public zzqk(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateProfileDiscoverabilityBinderCallback;->zj:Lcom/google/android/gms/internal/zzpr$zzb;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpr$zzb;->setResult(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.GamesClientImpl.UpdateRequestsResultImpl (com.google.android.gms.games.internal.GamesClientImpl$UpdateRequestsResultImpl)
.class final Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateRequestsResultImpl"
.end annotation


# instance fields
.field private final Uj:Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesDataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-static {p1}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->zzbl(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;->Uj:Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;

    return-void
.end method


# virtual methods
.method public getRequestIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;->Uj:Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->getRequestIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestOutcome(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;->Uj:Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->getRequestOutcome(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
