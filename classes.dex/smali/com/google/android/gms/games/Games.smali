###### Class com.google.android.gms.games.Games (com.google.android.gms.games.Games)
.class public final Lcom/google/android/gms/games/Games;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Games$SignOutImpl;,
        Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;,
        Lcom/google/android/gms/games/Games$GetTokenImpl;,
        Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;,
        Lcom/google/android/gms/games/Games$GetTokenResult;,
        Lcom/google/android/gms/games/Games$StatusImpl;,
        Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;,
        Lcom/google/android/gms/games/Games$GamesClientBuilder;,
        Lcom/google/android/gms/games/Games$GamesOptions;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final Achievements:Lcom/google/android/gms/games/achievement/Achievements;

.field public static final EXTRA_PLAYER_IDS:Ljava/lang/String; = "players"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final Events:Lcom/google/android/gms/games/event/Events;

.field public static final GamesMetadata:Lcom/google/android/gms/games/GamesMetadata;

.field public static final Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

.field public static final Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

.field public static final Notifications:Lcom/google/android/gms/games/Notifications;

.field public static final Players:Lcom/google/android/gms/games/Players;

.field private static final QW:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/games/internal/GamesClientImpl;",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final QX:Lcom/google/android/gms/common/api/Scope;

.field public static final QY:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final QZ:Lcom/google/android/gms/games/appcontent/AppContents;

.field public static final Quests:Lcom/google/android/gms/games/quest/Quests;

.field public static final Ra:Lcom/google/android/gms/games/multiplayer/Multiplayer;

.field public static final Rb:Lcom/google/android/gms/games/social/Social;

.field public static final RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

.field public static final Requests:Lcom/google/android/gms/games/request/Requests;

.field public static final SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

.field public static final Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

.field public static final Stats:Lcom/google/android/gms/games/stats/Stats;

.field public static final TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

.field public static final Videos:Lcom/google/android/gms/games/video/Videos;

.field static final bN:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf",
            "<",
            "Lcom/google/android/gms/games/internal/GamesClientImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final bO:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/games/internal/GamesClientImpl;",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/games/Games$1;

    invoke-direct {v0}, Lcom/google/android/gms/games/Games$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->bO:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/games/Games$2;

    invoke-direct {v0}, Lcom/google/android/gms/games/Games$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->QW:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Games.API"

    sget-object v2, Lcom/google/android/gms/games/Games;->bO:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/games/Games;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/games.firstparty"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->QX:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Games.API_1P"

    sget-object v2, Lcom/google/android/gms/games/Games;->QW:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/games/Games;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/games/Games;->QY:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->GamesMetadata:Lcom/google/android/gms/games/GamesMetadata;

    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/AchievementsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    new-instance v0, Lcom/google/android/gms/games/internal/api/AppContentsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/AppContentsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->QZ:Lcom/google/android/gms/games/appcontent/AppContents;

    new-instance v0, Lcom/google/android/gms/games/internal/api/EventsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/EventsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Events:Lcom/google/android/gms/games/event/Events;

    new-instance v0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    new-instance v0, Lcom/google/android/gms/games/internal/api/InvitationsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/InvitationsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    new-instance v0, Lcom/google/android/gms/games/internal/api/RealTimeMultiplayerImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/RealTimeMultiplayerImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    new-instance v0, Lcom/google/android/gms/games/internal/api/MultiplayerImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/MultiplayerImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Ra:Lcom/google/android/gms/games/multiplayer/Multiplayer;

    new-instance v0, Lcom/google/android/gms/games/internal/api/PlayersImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/PlayersImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    new-instance v0, Lcom/google/android/gms/games/internal/api/NotificationsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/NotificationsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Notifications:Lcom/google/android/gms/games/Notifications;

    new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    new-instance v0, Lcom/google/android/gms/games/internal/api/RequestsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    new-instance v0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    new-instance v0, Lcom/google/android/gms/games/internal/api/StatsImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/StatsImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Stats:Lcom/google/android/gms/games/stats/Stats;

    new-instance v0, Lcom/google/android/gms/games/internal/api/VideosImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/VideosImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Videos:Lcom/google/android/gms/games/video/Videos;

    new-instance v0, Lcom/google/android/gms/games/internal/api/SocialImpl;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/SocialImpl;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/Games;->Rb:Lcom/google/android/gms/games/social/Social;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.GET_ACCOUNTS"
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGamesServerAuthCode(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Please provide a valid serverClientId"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/games/Games$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/Games$4;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVariant(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbip()I

    move-result v0

    return v0
.end method

.method public static getSettingsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbio()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static setGravityForPopups(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzqo(I)V

    :cond_a
    return-void
.end method

.method public static setViewForPopups(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/view/View;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzq(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method public static signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/Games$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/Games$5;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;
    .registers 4

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    :goto_3
    const-string v1, "GoogleApiClient parameter is required."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient must be connected."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/games/Games;->zzc(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static zzc(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;
    .registers 4

    sget-object v0, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the Games Api. Pass Games.API into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z

    move-result v0

    if-eqz p1, :cond_1d

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient has an optional Games.API and is not connected to Games. Use GoogleApiClient.hasConnectedApi(Games.API) to guard this call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    if-eqz v0, :cond_28

    sget-object v0, Lcom/google/android/gms/games/Games;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/GamesClientImpl;

    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.games.Games.AnonymousClass1 (com.google.android.gms.games.Games$1)
.class final Lcom/google/android/gms/games/Games$1;
.super Lcom/google/android/gms/games/Games$GamesClientBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/Games$GamesClientBuilder;-><init>(Lcom/google/android/gms/games/Games$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/Games$GamesOptions;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzq(Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    check-cast p1, Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$1;->zza(Lcom/google/android/gms/games/Games$GamesOptions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.games.Games.AnonymousClass2 (com.google.android.gms.games.Games$2)
.class final Lcom/google/android/gms/games/Games$2;
.super Lcom/google/android/gms/games/Games$GamesClientBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/Games$GamesClientBuilder;-><init>(Lcom/google/android/gms/games/Games$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/games/Games$GamesOptions;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/games/Games;->QX:Lcom/google/android/gms/common/api/Scope;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzq(Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    check-cast p1, Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$2;->zza(Lcom/google/android/gms/games/Games$GamesOptions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.games.Games.AnonymousClass3 (com.google.android.gms.games.Games$3)
.class final Lcom/google/android/gms/games/Games$3;
.super Lcom/google/android/gms/games/Games$GetTokenImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$3;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzf(Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.Games.AnonymousClass4 (com.google.android.gms.games.Games$4)
.class final Lcom/google/android/gms/games/Games$4;
.super Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/Games;->getGamesServerAuthCode(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/games/Games$4;->Rc:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/Games$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$4;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/Games$4;->Rc:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.Games.AnonymousClass5 (com.google.android.gms.games.Games$5)
.class final Lcom/google/android/gms/games/Games$5;
.super Lcom/google/android/gms/games/Games$SignOutImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/games/Games$SignOutImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/Games$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$5;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzh(Lcom/google/android/gms/internal/zzpr$zzb;)V

    return-void
.end method

###### Class com.google.android.gms.games.Games.AnonymousClass6 (com.google.android.gms.games.Games$6)
.class final Lcom/google/android/gms/games/Games$6;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$6;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Landroid/accounts/Account;[B)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$6;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.games.Games.AnonymousClass7 (com.google.android.gms.games.Games$7)
.class final Lcom/google/android/gms/games/Games$7;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$7;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zze(Landroid/accounts/Account;)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method protected synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$7;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.games.Games.BaseGamesApiMethodImpl (com.google.android.gms.games.Games$BaseGamesApiMethodImpl)
.class public abstract Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;
.super Lcom/google/android/gms/internal/zzpr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseGamesApiMethodImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/internal/zzpr$zza",
        "<TR;",
        "Lcom/google/android/gms/games/internal/GamesClientImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/games/Games;->bN:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzpr$zza;-><init>(Lcom/google/android/gms/common/api/Api$zzc;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

###### Class com.google.android.gms.games.Games.GamesClientBuilder (com.google.android.gms.games.Games$GamesClientBuilder)
.class abstract Lcom/google/android/gms/games/Games$GamesClientBuilder;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "GamesClientBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza",
        "<",
        "Lcom/google/android/gms/games/internal/GamesClientImpl;",
        "Lcom/google/android/gms/games/Games$GamesOptions;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesClientBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .registers 14

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/games/Games$GamesOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/Games$GamesClientBuilder;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/games/internal/GamesClientImpl;
    .registers 14

    if-nez p4, :cond_13

    new-instance v4, Lcom/google/android/gms/games/Games$GamesOptions;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$1;)V

    :goto_8
    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v0

    :cond_13
    move-object v4, p4

    goto :goto_8
.end method

###### Class com.google.android.gms.games.Games.GamesOptions (com.google.android.gms.games.Games$GamesOptions)
.class public final Lcom/google/android/gms/games/Games$GamesOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GamesOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    }
.end annotation


# instance fields
.field public final Rd:Z

.field public final Re:Z

.field public final Rf:I

.field public final Rg:Z

.field public final Rh:I

.field public final Ri:Ljava/lang/String;

.field public final Rj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Rk:Z

.field public final Rl:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rd:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Re:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rf:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rg:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rh:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Ri:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rj:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rk:Z

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rl:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rd:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Re:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Re:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rf:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rf:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rg:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rh:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rh:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Ri:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rj:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rj:Ljava/util/ArrayList;

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rk:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rk:Z

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rl:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;Lcom/google/android/gms/games/Games$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$1;)V

    return-object v0
.end method


# virtual methods
.method public zzbgc()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.games.key.isHeadless"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rd:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.showConnectingPopup"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Re:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.connectingPopupGravity"

    iget v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rf:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.retryingSignIn"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rg:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.sdkVariant"

    iget v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rh:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.forceResolveAccountKey"

    iget-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Ri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.games.key.proxyApis"

    iget-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "com.google.android.gms.games.key.requireGooglePlus"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rk:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.unauthenticated"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->Rl:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

###### Class com.google.android.gms.games.Games.GamesOptions.Builder (com.google.android.gms.games.Games$GamesOptions$Builder)
.class public final Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games$GamesOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field Rd:Z

.field Re:Z

.field Rf:I

.field Rg:Z

.field Rh:I

.field Ri:Ljava/lang/String;

.field Rj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Rk:Z

.field Rl:Z


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rd:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Re:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rf:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rg:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rh:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Ri:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rj:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rk:Z

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rl:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/Games$GamesOptions;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;Lcom/google/android/gms/games/Games$1;)V

    return-object v0
.end method

.method public setRequireGooglePlus(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rk:Z

    return-object p0
.end method

.method public setSdkVariant(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rh:I

    return-object p0
.end method

.method public setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Re:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rf:I

    return-object p0
.end method

.method public setShowConnectingPopup(ZI)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Re:Z

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->Rf:I

    return-object p0
.end method

###### Class com.google.android.gms.games.Games.GetServerAuthCodeImpl (com.google.android.gms.games.Games$GetServerAuthCodeImpl)
.class abstract Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "GetServerAuthCodeImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/Games$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzbf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl$1;-><init>(Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;->zzbf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.games.Games.GetServerAuthCodeImpl.AnonymousClass1 (com.google.android.gms.games.Games$GetServerAuthCodeImpl$1)
.class Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;->zzbf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rm:Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl$1;->Rm:Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/Games$GetServerAuthCodeImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.Games.GetServerAuthCodeResult (com.google.android.gms.games.Games$GetServerAuthCodeResult)
.class public interface abstract Lcom/google/android/gms/games/Games$GetServerAuthCodeResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetServerAuthCodeResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract getCode()Ljava/lang/String;
.end method

###### Class com.google.android.gms.games.Games.GetTokenImpl (com.google.android.gms.games.Games$GetTokenImpl)
.class abstract Lcom/google/android/gms/games/Games$GetTokenImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "GetTokenImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/Games$GetTokenResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public zzbg(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Games$GetTokenResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/Games$GetTokenImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/Games$GetTokenImpl$1;-><init>(Lcom/google/android/gms/games/Games$GetTokenImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$GetTokenImpl;->zzbg(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Games$GetTokenResult;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.games.Games.GetTokenImpl.AnonymousClass1 (com.google.android.gms.games.Games$GetTokenImpl$1)
.class Lcom/google/android/gms/games/Games$GetTokenImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Games$GetTokenResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/Games$GetTokenImpl;->zzbg(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Games$GetTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Rn:Lcom/google/android/gms/games/Games$GetTokenImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/Games$GetTokenImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/Games$GetTokenImpl$1;->Rn:Lcom/google/android/gms/games/Games$GetTokenImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/Games$GetTokenImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/Games$GetTokenImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.Games.GetTokenResult (com.google.android.gms.games.Games$GetTokenResult)
.class public interface abstract Lcom/google/android/gms/games/Games$GetTokenResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetTokenResult"
.end annotation

###### Class com.google.android.gms.games.Games.SignOutImpl (com.google.android.gms.games.Games$SignOutImpl)
.class abstract Lcom/google/android/gms/games/Games$SignOutImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SignOutImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/Games$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$SignOutImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$SignOutImpl;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.games.Games.StatusImpl (com.google.android.gms.games.Games$StatusImpl)
.class public abstract Lcom/google/android/gms/games/Games$StatusImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatusImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# virtual methods
.method public zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    return-object p1
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$StatusImpl;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
