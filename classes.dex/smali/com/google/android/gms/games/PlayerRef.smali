###### Class com.google.android.gms.games.PlayerRef (com.google.android.gms.games.PlayerRef)
.class public final Lcom/google/android/gms/games/PlayerRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# instance fields
.field private final RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

.field private final RK:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

.field private final Rs:Lcom/google/android/gms/games/PlayerLevelInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/PlayerRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .registers 13

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    new-instance v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    invoke-direct {v0, p3}, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    new-instance v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILcom/google/android/gms/games/internal/player/PlayerColumnNames;)V

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RK:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    invoke-direct {p0}, Lcom/google/android/gms/games/PlayerRef;->zzbgk()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xf:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xi:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v8

    new-instance v0, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v2, v2, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xg:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v4, v4, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xh:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    if-eq v1, v8, :cond_74

    new-instance v2, Lcom/google/android/gms/games/PlayerLevel;

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xh:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xj:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/games/PlayerLevel;-><init>(IJJ)V

    move-object v7, v2

    :goto_57
    new-instance v1, Lcom/google/android/gms/games/PlayerLevelInfo;

    iget-object v2, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v2, v2, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xe:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v4, v4, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xk:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/games/PlayerLevelInfo;-><init>(JJLcom/google/android/gms/games/PlayerLevel;Lcom/google/android/gms/games/PlayerLevel;)V

    iput-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->Rs:Lcom/google/android/gms/games/PlayerLevelInfo;

    :goto_6f
    return-void

    :cond_70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Rs:Lcom/google/android/gms/games/PlayerLevelInfo;

    goto :goto_6f

    :cond_74
    move-object v7, v0

    goto :goto_57
.end method

.method private zzbgk()Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xe:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->zzhh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v1, v1, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xe:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->zza(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Player;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->freeze()Lcom/google/android/gms/games/Player;

    move-result-object v0

    return-object v0
.end method

.method public getBannerImageLandscapeUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xv:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzhg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBannerImageLandscapeUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xw:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBannerImagePortraitUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xx:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzhg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getBannerImagePortraitUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xy:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->WW:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->WW:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->zza(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->WZ:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzhg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xa:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->WX:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzhg(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->WY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastPlayedWithTimestamp()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzhf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzhh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_14
    const-wide/16 v0, -0x1

    :goto_16
    return-wide v0

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xd:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_16
.end method

.method public getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->Rs:Lcom/google/android/gms/games/PlayerLevelInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->WV:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetrievedTimestamp()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xb:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/database/CharArrayBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->title:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/games/PlayerRef;->zza(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public hasHiResImage()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getHiResImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIconImage()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->getIconImageUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzb(Lcom/google/android/gms/games/Player;)I

    move-result v0

    return v0
.end method

.method public isMuted()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->XB:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->zzc(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/Player;

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/PlayerEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbgd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xu:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzbge()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xt:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zzbgf()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public zzbgg()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xm:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zzbgh()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->zzhh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RK:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoRef;

    goto :goto_b
.end method

.method public zzbgi()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->Xz:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public zzbgj()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/PlayerRef;->RJ:Lcom/google/android/gms/games/internal/player/PlayerColumnNames;

    iget-object v0, v0, Lcom/google/android/gms/games/internal/player/PlayerColumnNames;->XA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/PlayerRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
