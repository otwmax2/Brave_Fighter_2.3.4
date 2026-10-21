###### Class com.google.android.gms.games.achievement.AchievementEntity (com.google.android.gms.games.achievement.AchievementEntity)
.class public final Lcom/google/android/gms/games/achievement/AchievementEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievement;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/achievement/AchievementEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final RL:Ljava/lang/String;

.field private final RM:Landroid/net/Uri;

.field private final RN:Ljava/lang/String;

.field private final RO:Landroid/net/Uri;

.field private final RP:Ljava/lang/String;

.field private final RQ:I

.field private final RR:Ljava/lang/String;

.field private final RS:Lcom/google/android/gms/games/PlayerEntity;

.field private final RT:I

.field private final RU:Ljava/lang/String;

.field private final RV:J

.field private final RW:J

.field private final it:I

.field private final mName:Ljava/lang/String;

.field private final mState:I

.field private final mVersionCode:I

.field private final zzcvi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/achievement/AchievementEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/achievement/AchievementEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/achievement/AchievementEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/games/PlayerEntity;IILjava/lang/String;JJ)V
    .registers 22

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RL:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->it:I

    iput-object p4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzcvi:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RM:Landroid/net/Uri;

    iput-object p7, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RN:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RO:Landroid/net/Uri;

    iput-object p9, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RP:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RQ:I

    iput-object p11, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RR:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RS:Lcom/google/android/gms/games/PlayerEntity;

    iput p13, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mState:I

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RT:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RU:Ljava/lang/String;

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RV:J

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RW:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/achievement/Achievement;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput v3, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mVersionCode:I

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RL:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->it:I

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzcvi:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RM:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getUnlockedImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RN:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RO:Landroid/net/Uri;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getRevealedImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RP:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RS:Lcom/google/android/gms/games/PlayerEntity;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mState:I

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RV:J

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RW:J

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    if-ne v0, v3, :cond_7f

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RQ:I

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedTotalSteps()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RR:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RT:I

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getFormattedCurrentSteps()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RU:Ljava/lang/String;

    :goto_74
    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RL:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzw(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzcvi:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzw(Ljava/lang/Object;)V

    return-void

    :cond_7f
    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RQ:I

    iput-object v4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RR:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RT:I

    iput-object v4, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RU:Ljava/lang/String;

    goto :goto_74
.end method

.method static zza(Lcom/google/android/gms/games/achievement/Achievement;)I
    .registers 7

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    if-ne v0, v5, :cond_6f

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v0

    :goto_10
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_6f
    move v0, v1

    move v2, v1

    goto :goto_10
.end method

.method static zza(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z
    .registers 10

    const/4 v3, 0x0

    const/4 v1, 0x1

    instance-of v0, p1, Lcom/google/android/gms/games/achievement/Achievement;

    if-nez v0, :cond_8

    move v1, v3

    :cond_7
    :goto_7
    return v1

    :cond_8
    if-eq p0, p1, :cond_7

    check-cast p1, Lcom/google/android/gms/games/achievement/Achievement;

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v0

    if-ne v0, v1, :cond_d1

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_3a
    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getXpValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getLastUpdatedTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-interface {p1}, Lcom/google/android/gms/games/achievement/Achievement;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v4

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    if-eqz v2, :cond_ce

    if-nez v0, :cond_7

    :cond_ce
    move v1, v3

    goto/16 :goto_7

    :cond_d1
    move v0, v1

    move v2, v1

    goto/16 :goto_3a
.end method

.method static zzb(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Id"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getAchievementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Type"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Name"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Description"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Player"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getPlayer()Lcom/google/android/gms/games/Player;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "State"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_69

    const-string v1, "CurrentSteps"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getCurrentSteps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    const-string v1, "TotalSteps"

    invoke-interface {p0}, Lcom/google/android/gms/games/achievement/Achievement;->getTotalSteps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    :cond_69
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zza(Lcom/google/android/gms/games/achievement/Achievement;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/achievement/Achievement;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->freeze()Lcom/google/android/gms/games/achievement/Achievement;

    move-result-object v0

    return-object v0
.end method

.method public getAchievementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RL:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSteps()I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_f

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzbgs()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzcvi:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription(Landroid/database/CharArrayBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzcvi:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzg;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getFormattedCurrentSteps()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_f

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzbgt()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFormattedCurrentSteps(Landroid/database/CharArrayBuffer;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RU:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzg;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFormattedTotalSteps()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_f

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzbgr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getFormattedTotalSteps(Landroid/database/CharArrayBuffer;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RR:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzg;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getLastUpdatedTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RV:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/util/zzg;->zzb(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getPlayer()Lcom/google/android/gms/games/Player;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RS:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0
.end method

.method public getRevealedImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RO:Landroid/net/Uri;

    return-object v0
.end method

.method public getRevealedImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RP:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mState:I

    return v0
.end method

.method public getTotalSteps()I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->getType()I

    move-result v1

    if-ne v1, v0, :cond_f

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzbm(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzbgq()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->it:I

    return v0
.end method

.method public getUnlockedImageUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RM:Landroid/net/Uri;

    return-object v0
.end method

.method public getUnlockedImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RN:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->mVersionCode:I

    return v0
.end method

.method public getXpValue()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RW:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zza(Lcom/google/android/gms/games/achievement/Achievement;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/achievement/AchievementEntity;->zzb(Lcom/google/android/gms/games/achievement/Achievement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/achievement/AchievementEntityCreator;->zza(Lcom/google/android/gms/games/achievement/AchievementEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbgq()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RQ:I

    return v0
.end method

.method public zzbgr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RR:Ljava/lang/String;

    return-object v0
.end method

.method public zzbgs()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RT:I

    return v0
.end method

.method public zzbgt()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/achievement/AchievementEntity;->RU:Ljava/lang/String;

    return-object v0
.end method
