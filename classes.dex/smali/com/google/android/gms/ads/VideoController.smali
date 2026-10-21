###### Class com.google.android.gms.ads.VideoController (com.google.android.gms.ads.VideoController)
.class public final Lcom/google/android/gms/ads/VideoController;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private zzaim:Lcom/google/android/gms/ads/internal/client/zzab;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzain:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzail:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getVideoLifecycleCallbacks()Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzain:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public hasVideoContent()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzaim:Lcom/google/android/gms/ads/internal/client/zzab;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .registers 5

    const-string v0, "VideoLifecycleCallbacks may not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzain:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzaim:Lcom/google/android/gms/ads/internal/client/zzab;

    if-nez v0, :cond_10

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_1c

    :goto_f
    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzaim:Lcom/google/android/gms/ads/internal/client/zzab;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzap;

    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/internal/client/zzap;-><init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/client/zzab;->zza(Lcom/google/android/gms/ads/internal/client/zzac;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1a} :catch_1f
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1c

    :goto_1a
    :try_start_1a
    monitor-exit v1

    goto :goto_f

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0

    :catch_1f
    move-exception v0

    :try_start_20
    const-string v2, "Unable to call setVideoLifecycleCallbacks on video controller."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1c

    goto :goto_1a
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzab;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/VideoController;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/VideoController;->zzaim:Lcom/google/android/gms/ads/internal/client/zzab;

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzain:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/VideoController;->zzain:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/VideoController;->setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

###### Class com.google.android.gms.ads.VideoController.VideoLifecycleCallbacks (com.google.android.gms.ads.VideoController$VideoLifecycleCallbacks)
.class public abstract Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VideoLifecycleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoEnd()V
    .registers 1

    return-void
.end method
