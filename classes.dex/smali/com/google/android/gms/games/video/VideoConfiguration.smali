###### Class com.google.android.gms.games.video.VideoConfiguration (com.google.android.gms.games.video.VideoConfiguration)
.class public final Lcom/google/android/gms/games/video/VideoConfiguration;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CAPTURE_MODE_FILE:I = 0x0

.field public static final CAPTURE_MODE_STREAM:I = 0x1

.field public static final CAPTURE_MODE_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/video/VideoConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUM_CAPTURE_MODE:I = 0x2

.field public static final NUM_QUALITY_LEVEL:I = 0x4

.field public static final QUALITY_LEVEL_FULLHD:I = 0x3

.field public static final QUALITY_LEVEL_HD:I = 0x1

.field public static final QUALITY_LEVEL_SD:I = 0x0

.field public static final QUALITY_LEVEL_UNKNOWN:I = -0x1

.field public static final QUALITY_LEVEL_XHD:I = 0x2


# instance fields
.field private final aac:I

.field private final aaj:I

.field private final aak:Ljava/lang/String;

.field private final aal:Ljava/lang/String;

.field private final aam:Ljava/lang/String;

.field private final aan:Ljava/lang/String;

.field private final aao:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/video/VideoConfigurationCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/video/VideoConfigurationCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/video/VideoConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->mVersionCode:I

    invoke-static {p2, v2}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidQualityLevel(IZ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    invoke-static {p3, v2}, Lcom/google/android/gms/games/video/VideoConfiguration;->isValidCaptureMode(IZ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbn(Z)V

    iput p2, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aaj:I

    iput p3, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aac:I

    iput-boolean p8, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aao:Z

    if-ne p3, v1, :cond_27

    iput-object p5, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aal:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aak:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aam:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aan:Ljava/lang/String;

    :goto_26
    return-void

    :cond_27
    if-nez p5, :cond_4f

    move v0, v1

    :goto_2a
    const-string v3, "Stream key should be null when not streaming"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    if-nez p4, :cond_51

    move v0, v1

    :goto_32
    const-string v3, "Stream url should be null when not streaming"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    if-nez p6, :cond_53

    move v0, v1

    :goto_3a
    const-string v3, "Stream title should be null when not streaming"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    if-nez p7, :cond_55

    :goto_41
    const-string v0, "Stream description should be null when not streaming"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iput-object v4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aal:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aak:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aam:Ljava/lang/String;

    iput-object v4, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aan:Ljava/lang/String;

    goto :goto_26

    :cond_4f
    move v0, v2

    goto :goto_2a

    :cond_51
    move v0, v2

    goto :goto_32

    :cond_53
    move v0, v2

    goto :goto_3a

    :cond_55
    move v1, v2

    goto :goto_41
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 17

    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/games/video/VideoConfiguration;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/games/video/VideoConfiguration$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/games/video/VideoConfiguration;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static isValidCaptureMode(IZ)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 p1, 0x0

    :goto_4
    :pswitch_4
    return p1

    :pswitch_5
    const/4 p1, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch -0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static isValidQualityLevel(IZ)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 p1, 0x0

    :goto_4
    :pswitch_4
    return p1

    :pswitch_5
    const/4 p1, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch -0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCaptureMode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aac:I

    return v0
.end method

.method public getQualityLevel()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aaj:I

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aak:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/video/VideoConfigurationCreator;->zza(Lcom/google/android/gms/games/video/VideoConfiguration;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzblt()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aal:Ljava/lang/String;

    return-object v0
.end method

.method public zzblu()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aam:Ljava/lang/String;

    return-object v0
.end method

.method public zzblv()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aan:Ljava/lang/String;

    return-object v0
.end method

.method public zzblw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration;->aao:Z

    return v0
.end method

###### Class com.google.android.gms.games.video.VideoConfiguration.AnonymousClass1 (com.google.android.gms.games.video.VideoConfiguration$1)
.class synthetic Lcom/google/android/gms/games/video/VideoConfiguration$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/VideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.games.video.VideoConfiguration.Builder (com.google.android.gms.games.video.VideoConfiguration$Builder)
.class public final Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/VideoConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private aac:I

.field private aaj:I

.field private aak:Ljava/lang/String;

.field private aal:Ljava/lang/String;

.field private aam:Ljava/lang/String;

.field private aan:Ljava/lang/String;

.field private aao:Z


# direct methods
.method public constructor <init>(II)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aaj:I

    iput p2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aac:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aao:Z

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aak:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aal:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aam:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aan:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/video/VideoConfiguration;
    .registers 10

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/games/video/VideoConfiguration;

    iget v1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aaj:I

    iget v2, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aac:I

    iget-boolean v7, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aao:Z

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/games/video/VideoConfiguration;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/games/video/VideoConfiguration$1;)V

    return-object v0
.end method

.method public setCaptureMode(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aac:I

    return-object p0
.end method

.method public setQualityLevel(I)Lcom/google/android/gms/games/video/VideoConfiguration$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/games/video/VideoConfiguration$Builder;->aaj:I

    return-object p0
.end method
