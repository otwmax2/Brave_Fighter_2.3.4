###### Class com.google.android.gms.games.achievement.AchievementRef (com.google.android.gms.games.achievement.AchievementRef)
.class public final Lcom/google/android/gms/games/achievement/AchievementRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievement;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/achievement/Achievement;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/achievement/AchievementEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;-><init>(Lcom/google/android/gms/games/achievement/Achievement;)V

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->freeze()Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v0

    return-object v0
.end method

.method public getAchievementId()Ljava/lang/String;
    .registers 2

    const-string v0, "external_achievement_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSteps()I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    move-result v1

    if-ne v1, v0, :cond_11

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    const-string v0, "current_steps"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->zza(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getFormattedCurrentSteps()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    move-result v1

    if-ne v1, v0, :cond_11

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    const-string v0, "formatted_current_steps"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFormattedCurrentSteps(Landroid/database/CharArrayBuffer;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    const-string v0, "formatted_current_steps"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->zza(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFormattedTotalSteps()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    move-result v1

    if-ne v1, v0, :cond_11

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    const-string v0, "formatted_total_steps"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFormattedTotalSteps(Landroid/database/CharArrayBuffer;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    const-string v0, "formatted_total_steps"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->zza(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getLastUpdatedTimestamp()J
    .registers 3

    const-string v0, "last_updated_timestamp"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/achievement/AchievementRef;->zza(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .registers 4

    new-instance v0, Lcom/google/android/gms/games/PlayerRef;

    iget-object v1, p0, Lcom/google/android/gms/games/achievement/AchievementRef;->tk:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/games/achievement/AchievementRef;->vK:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public getRevealedImageUri()Landroid/net/Uri;
    .registers 2

    const-string v0, "revealed_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->zzhg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getRevealedImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "revealed_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .registers 2

    const-string v0, "state"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTotalSteps()I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getType()I

    move-result v1

    if-ne v1, v0, :cond_11

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    const-string v0, "total_steps"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getType()I
    .registers 2

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUnlockedImageUri()Landroid/net/Uri;
    .registers 2

    const-string v0, "unlocked_icon_image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->zzhg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUnlockedImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "unlocked_icon_image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXpValue()J
    .registers 3

    const-string v0, "instance_xp_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->zzhf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "instance_xp_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->zzhh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_10
    const-string v0, "definition_xp_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_16
    return-wide v0

    :cond_17
    const-string v0, "instance_xp_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/achievement/AchievementRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzb(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/achievement/Achievement;

    check-cast v0, Lcom/google/android/gms/games/achievement/AchievementEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/achievement/AchievementEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
