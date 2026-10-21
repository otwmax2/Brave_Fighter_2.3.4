###### Class com.google.android.gms.games.stats.Stats (com.google.android.gms.games.stats.Stats)
.class public interface abstract Lcom/google/android/gms/games/stats/Stats;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;
    }
.end annotation


# virtual methods
.method public abstract loadPlayerStats(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
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
.end method

###### Class com.google.android.gms.games.stats.Stats.LoadPlayerStatsResult (com.google.android.gms.games.stats.Stats$LoadPlayerStatsResult)
.class public interface abstract Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/stats/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadPlayerStatsResult"
.end annotation


# virtual methods
.method public abstract getPlayerStats()Lcom/google/android/gms/games/stats/PlayerStats;
.end method
