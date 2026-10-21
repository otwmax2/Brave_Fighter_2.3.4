###### Class com.google.android.gms.games.internal.api.StatsImpl (com.google.android.gms.games.internal.api.StatsImpl)
.class public final Lcom/google/android/gms/games/internal/api/StatsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/stats/Stats;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadPlayerStats(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/StatsImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/StatsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/StatsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.StatsImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.StatsImpl$1)
.class Lcom/google/android/gms/games/internal/api/StatsImpl$1;
.super Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/StatsImpl;->loadPlayerStats(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Uv:Z

.field final synthetic VT:Lcom/google/android/gms/games/internal/api/StatsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/StatsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/StatsImpl$1;->VT:Lcom/google/android/gms/games/internal/api/StatsImpl;

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/StatsImpl$1;->Uv:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/StatsImpl$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/StatsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/StatsImpl$1;->Uv:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zze(Lcom/google/android/gms/internal/zzpr$zzb;Z)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.StatsImpl.LoadsImpl (com.google.android.gms.games.internal.api.StatsImpl$LoadsImpl)
.class abstract Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/StatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LoadsImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/StatsImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl;->zzcu(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;

    move-result-object v0

    return-object v0
.end method

.method public zzcu(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.StatsImpl.LoadsImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.StatsImpl$LoadsImpl$1)
.class Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl;->zzcu(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic VU:Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl$1;->VU:Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayerStats()Lcom/google/android/gms/games/stats/PlayerStats;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/StatsImpl$LoadsImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .registers 1

    return-void
.end method
