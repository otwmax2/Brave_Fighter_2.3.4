###### Class com.google.android.gms.games.quest.MilestoneRef (com.google.android.gms.games.quest.MilestoneRef)
.class public final Lcom/google/android/gms/games/quest/MilestoneRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/quest/Milestone;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method private zzblh()J
    .registers 3

    const-string v0, "initial_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zza(Lcom/google/android/gms/games/quest/Milestone;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/quest/Milestone;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/quest/MilestoneEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;-><init>(Lcom/google/android/gms/games/quest/Milestone;)V

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->freeze()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v0

    return-object v0
.end method

.method public getCompletionRewardData()[B
    .registers 2

    const-string v0, "completion_reward_data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProgress()J
    .registers 9

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_4a

    move-wide v2, v0

    :cond_a
    :goto_a
    cmp-long v4, v2, v0

    if-gez v4, :cond_48

    const-string v2, "MilestoneRef"

    const-string v3, "Current progress should never be negative"

    invoke-static {v2, v3}, Lcom/google/android/gms/games/internal/GamesLog;->zzag(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getTargetProgress()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_28

    const-string v0, "MilestoneRef"

    const-string v1, "Current progress should never exceed target progress"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->zzag(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getTargetProgress()J

    move-result-wide v0

    :cond_28
    return-wide v0

    :pswitch_29
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getTargetProgress()J

    move-result-wide v2

    goto :goto_a

    :pswitch_2e
    move-wide v2, v0

    goto :goto_a

    :pswitch_30
    const-string v2, "current_value"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/quest/MilestoneRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "quest_state"

    invoke-virtual {p0, v4}, Lcom/google/android/gms/games/quest/MilestoneRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->zzblh()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_a

    :cond_48
    move-wide v0, v2

    goto :goto_15

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_30
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public getEventId()Ljava/lang/String;
    .registers 2

    const-string v0, "external_event_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMilestoneId()Ljava/lang/String;
    .registers 2

    const-string v0, "external_milestone_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .registers 2

    const-string v0, "milestone_state"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTargetProgress()J
    .registers 3

    const-string v0, "target_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zza(Lcom/google/android/gms/games/quest/Milestone;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzb(Lcom/google/android/gms/games/quest/Milestone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/Milestone;

    check-cast v0, Lcom/google/android/gms/games/quest/MilestoneEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/quest/MilestoneEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
