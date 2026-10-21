###### Class com.google.android.gms.games.stats.PlayerStatsBuffer (com.google.android.gms.games.stats.PlayerStatsBuffer)
.class public final Lcom/google/android/gms/games/stats/PlayerStatsBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<",
        "Lcom/google/android/gms/games/stats/PlayerStats;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->zzrx(I)Lcom/google/android/gms/games/stats/PlayerStats;

    move-result-object v0

    return-object v0
.end method

.method public zzrx(I)Lcom/google/android/gms/games/stats/PlayerStats;
    .registers 4

    new-instance v0, Lcom/google/android/gms/games/stats/PlayerStatsRef;

    iget-object v1, p0, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->tk:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/stats/PlayerStatsRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method
