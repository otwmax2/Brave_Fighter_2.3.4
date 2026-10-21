###### Class com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer (com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer)
.class public final Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
.super Lcom/google/android/gms/common/data/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/zzf",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/zzf;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected zzarg()Ljava/lang/String;
    .registers 2

    const-string v0, "external_match_id"

    return-object v0
.end method

.method protected synthetic zzl(II)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->zzr(II)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    move-result-object v0

    return-object v0
.end method

.method protected zzr(II)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .registers 5

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;

    iget-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->tk:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method
