###### Class com.google.android.gms.games.video.VideoEntity (com.google.android.gms.games.video.VideoEntity)
.class public final Lcom/google/android/gms/games/video/VideoEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/video/Video;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/video/VideoEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aQ:Ljava/lang/String;

.field private final aap:Ljava/lang/String;

.field private final aaq:J

.field private final mVersionCode:I

.field private final wH:I

.field private final zzboy:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/video/VideoEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/video/VideoEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/video/VideoEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;JJLjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoEntity;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/games/video/VideoEntity;->wH:I

    iput-object p3, p0, Lcom/google/android/gms/games/video/VideoEntity;->aap:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/games/video/VideoEntity;->aaq:J

    iput-wide p6, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzboy:J

    iput-object p8, p0, Lcom/google/android/gms/games/video/VideoEntity;->aQ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/video/Video;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->mVersionCode:I

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->wH:I

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->zzblq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->aap:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->aaq:J

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzboy:J

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->aQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->aap:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzw(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->aQ:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzw(Ljava/lang/Object;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/video/Video;)I
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->zzblq()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/video/Video;Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/video/Video;

    if-nez v2, :cond_8

    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-eq p0, p1, :cond_7

    check-cast p1, Lcom/google/android/gms/games/video/Video;

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->zzblq()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->zzblq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {p1}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6a
    move v0, v1

    goto :goto_7
.end method

.method static zzb(Lcom/google/android/gms/games/video/Video;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Duration"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "File path"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->zzblq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "File size"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Start time"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Package name"

    invoke-interface {p0}, Lcom/google/android/gms/games/video/Video;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/video/VideoEntity;->zza(Lcom/google/android/gms/games/video/Video;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/video/VideoEntity;->zzblx()Lcom/google/android/gms/games/video/Video;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->wH:I

    return v0
.end method

.method public getFileSize()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->aaq:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->aQ:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->zzboy:J

    return-wide v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/video/VideoEntity;->zza(Lcom/google/android/gms/games/video/Video;)I

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

    invoke-static {p0}, Lcom/google/android/gms/games/video/VideoEntity;->zzb(Lcom/google/android/gms/games/video/Video;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/video/VideoEntityCreator;->zza(Lcom/google/android/gms/games/video/VideoEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzblq()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoEntity;->aap:Ljava/lang/String;

    return-object v0
.end method

.method public zzblx()Lcom/google/android/gms/games/video/Video;
    .registers 1

    return-object p0
.end method
