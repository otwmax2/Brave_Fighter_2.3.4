###### Class com.google.android.gms.games.quest.QuestBuffer (com.google.android.gms.games.quest.QuestBuffer)
.class public final Lcom/google/android/gms/games/quest/QuestBuffer;
.super Lcom/google/android/gms/common/data/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/zzf",
        "<",
        "Lcom/google/android/gms/games/quest/Quest;",
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

    const-string v0, "external_quest_id"

    return-object v0
.end method

.method protected synthetic zzl(II)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/games/quest/QuestBuffer;->zzs(II)Lcom/google/android/gms/games/quest/Quest;

    move-result-object v0

    return-object v0
.end method

.method protected zzs(II)Lcom/google/android/gms/games/quest/Quest;
    .registers 5

    new-instance v0, Lcom/google/android/gms/games/quest/QuestRef;

    iget-object v1, p0, Lcom/google/android/gms/games/quest/QuestBuffer;->tk:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/games/quest/QuestRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0
.end method
