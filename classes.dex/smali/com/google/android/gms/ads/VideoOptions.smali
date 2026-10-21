###### Class com.google.android.gms.ads.VideoOptions (com.google.android.gms.ads.VideoOptions)
.class public final Lcom/google/android/gms/ads/VideoOptions;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoOptions$Builder;
    }
.end annotation


# instance fields
.field private final zzaio:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/VideoOptions$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->zza(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzaio:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/VideoOptions$Builder;Lcom/google/android/gms/ads/VideoOptions$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/VideoOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public getStartMuted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions;->zzaio:Z

    return v0
.end method

###### Class com.google.android.gms.ads.VideoOptions.AnonymousClass1 (com.google.android.gms.ads.VideoOptions$1)
.class synthetic Lcom/google/android/gms/ads/VideoOptions$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.ads.VideoOptions.Builder (com.google.android.gms.ads.VideoOptions$Builder)
.class public final Lcom/google/android/gms/ads/VideoOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzaio:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzaio:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/VideoOptions$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzaio:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/VideoOptions;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/VideoOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/VideoOptions;-><init>(Lcom/google/android/gms/ads/VideoOptions$Builder;Lcom/google/android/gms/ads/VideoOptions$1;)V

    return-object v0
.end method

.method public setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/VideoOptions$Builder;->zzaio:Z

    return-object p0
.end method
