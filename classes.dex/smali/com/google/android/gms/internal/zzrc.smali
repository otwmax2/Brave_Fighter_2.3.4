###### Class com.google.android.gms.internal.zzrc (com.google.android.gms.internal.zzrc)
.class public Lcom/google/android/gms/internal/zzrc;
.super Lcom/google/android/gms/common/api/TransformedResult;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/TransformedResult",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final sJ:Ljava/lang/Object;

.field private final sL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private vk:Lcom/google/android/gms/common/api/ResultTransform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultTransform",
            "<-TR;+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private vl:Lcom/google/android/gms/internal/zzrc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrc",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation
.end field

.field private volatile vm:Lcom/google/android/gms/common/api/ResultCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallbacks",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private vn:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TR;>;"
        }
    .end annotation
.end field

.field private vo:Lcom/google/android/gms/common/api/Status;

.field private final vp:Lcom/google/android/gms/internal/zzrc$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrc$zza;"
        }
    .end annotation
.end field

.field private vq:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/TransformedResult;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrc;->vk:Lcom/google/android/gms/common/api/ResultTransform;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrc;->vl:Lcom/google/android/gms/internal/zzrc;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrc;->vm:Lcom/google/android/gms/common/api/ResultCallbacks;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrc;->vn:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc;->sJ:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrc;->vo:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrc;->vq:Z

    const-string v0, "GoogleApiClient reference must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrc;->sL:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->sL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v1, Lcom/google/android/gms/internal/zzrc$zza;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_2f
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzrc$zza;-><init>(Lcom/google/android/gms/internal/zzrc;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzrc;->vp:Lcom/google/android/gms/internal/zzrc$zza;

    return-void

    :cond_35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_2f
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/common/api/Result;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrc;->zze(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrc;->zzac(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private zzac(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->sJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzrc;->vo:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrc;->zzad(Lcom/google/android/gms/common/api/Status;)V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private zzad(Lcom/google/android/gms/common/api/Status;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->sJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vk:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vk:Lcom/google/android/gms/common/api/ResultTransform;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ResultTransform;->onFailure(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    const-string v2, "onFailure must not return null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc;->vl:Lcom/google/android/gms/internal/zzrc;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzrc;->zzac(Lcom/google/android/gms/common/api/Status;)V

    :cond_17
    :goto_17
    monitor-exit v1

    return-void

    :cond_19
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrc;->zzaqu()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vm:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onFailure(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_17

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private zzaqs()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vk:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vm:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->sL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzrc;->vq:Z

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->vk:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzrc;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzrc;->vq:Z

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vo:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrc;->zzad(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_8

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vn:Lcom/google/android/gms/common/api/PendingResult;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vn:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_8
.end method

.method private zzaqu()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->sL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->vm:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzrc;)Lcom/google/android/gms/common/api/ResultTransform;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vk:Lcom/google/android/gms/common/api/ResultTransform;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzrc;)Lcom/google/android/gms/internal/zzrc$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vp:Lcom/google/android/gms/internal/zzrc$zza;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzrc;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->sL:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private zze(Lcom/google/android/gms/common/api/Result;)V
    .registers 8

    instance-of v1, p1, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v1, :cond_b

    :try_start_4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/Releasable;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Releasable;->release()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v1

    const-string v2, "TransformedResultImpl"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unable to release "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzrc;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->sJ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzrc;)Lcom/google/android/gms/internal/zzrc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vl:Lcom/google/android/gms/internal/zzrc;

    return-object v0
.end method


# virtual methods
.method public andFinally(Lcom/google/android/gms/common/api/ResultCallbacks;)V
    .registers 7
    .param p1    # Lcom/google/android/gms/common/api/ResultCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallbacks",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrc;->sJ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc;->vm:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v2, :cond_1f

    move v2, v0

    :goto_a
    const-string v4, "Cannot call andFinally() twice."

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc;->vk:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v2, :cond_21

    :goto_13
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrc;->vm:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrc;->zzaqs()V

    monitor-exit v3

    return-void

    :cond_1f
    move v2, v1

    goto :goto_a

    :cond_21
    move v0, v1

    goto :goto_13

    :catchall_23
    move-exception v0

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->sJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vk:Lcom/google/android/gms/common/api/ResultTransform;

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/google/android/gms/internal/zzqw;->zzapz()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzrc$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzrc$1;-><init>(Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/common/api/Result;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1d
    :goto_1d
    monitor-exit v1

    return-void

    :cond_1f
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrc;->zzaqu()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vm:Lcom/google/android/gms/common/api/ResultCallbacks;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/ResultCallbacks;->onSuccess(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1d

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :try_start_2e
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzrc;->zzac(Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrc;->zze(Lcom/google/android/gms/common/api/Result;)V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_2b

    goto :goto_1d
.end method

.method public then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .registers 7
    .param p1    # Lcom/google/android/gms/common/api/ResultTransform;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/Result;",
            ">(",
            "Lcom/google/android/gms/common/api/ResultTransform",
            "<-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/TransformedResult",
            "<TS;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrc;->sJ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc;->vk:Lcom/google/android/gms/common/api/ResultTransform;

    if-nez v2, :cond_28

    move v2, v0

    :goto_a
    const-string v4, "Cannot call then() twice."

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc;->vm:Lcom/google/android/gms/common/api/ResultCallbacks;

    if-nez v2, :cond_2a

    :goto_13
    const-string v1, "Cannot call then() and andFinally() on the same TransformedResult."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrc;->vk:Lcom/google/android/gms/common/api/ResultTransform;

    new-instance v0, Lcom/google/android/gms/internal/zzrc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->sL:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzrc;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vl:Lcom/google/android/gms/internal/zzrc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrc;->zzaqs()V

    monitor-exit v3

    return-object v0

    :cond_28
    move v2, v1

    goto :goto_a

    :cond_2a
    move v0, v1

    goto :goto_13

    :catchall_2c
    move-exception v0

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public zza(Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc;->sJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzrc;->vn:Lcom/google/android/gms/common/api/PendingResult;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzrc;->zzaqs()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method zzaqt()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrc;->vm:Lcom/google/android/gms/common/api/ResultCallbacks;

    return-void
.end method

###### Class com.google.android.gms.internal.zzrc.AnonymousClass1 (com.google.android.gms.internal.zzrc$1)
.class Lcom/google/android/gms/internal/zzrc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrc;->onResult(Lcom/google/android/gms/common/api/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vr:Lcom/google/android/gms/common/api/Result;

.field final synthetic vs:Lcom/google/android/gms/internal/zzrc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/common/api/Result;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrc$1;->vr:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v4, 0x0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/zzpt;->sI:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrc;->zzc(Lcom/google/android/gms/internal/zzrc;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$1;->vr:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrc;->zzd(Lcom/google/android/gms/internal/zzrc;)Lcom/google/android/gms/internal/zzrc$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrc;->zzd(Lcom/google/android/gms/internal/zzrc;)Lcom/google/android/gms/internal/zzrc$zza;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzrc$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrc$zza;->sendMessage(Landroid/os/Message;)Z
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_2b} :catch_4f
    .catchall {:try_start_1 .. :try_end_2b} :catchall_88

    sget-object v0, Lcom/google/android/gms/internal/zzpt;->sI:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$1;->vr:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrc;->zza(Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrc;->zze(Lcom/google/android/gms/internal/zzrc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzrc;)V

    :cond_4e
    :goto_4e
    return-void

    :catch_4f
    move-exception v0

    :try_start_50
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrc;->zzd(Lcom/google/android/gms/internal/zzrc;)Lcom/google/android/gms/internal/zzrc$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrc;->zzd(Lcom/google/android/gms/internal/zzrc;)Lcom/google/android/gms/internal/zzrc$zza;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzrc$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrc$zza;->sendMessage(Landroid/os/Message;)Z
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_88

    sget-object v0, Lcom/google/android/gms/internal/zzpt;->sI:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$1;->vr:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzrc;->zza(Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrc;->zze(Lcom/google/android/gms/internal/zzrc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzrc;)V

    goto :goto_4e

    :catchall_88
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/google/android/gms/internal/zzpt;->sI:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$1;->vr:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzrc;->zza(Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrc;->zze(Lcom/google/android/gms/internal/zzrc;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_ad

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$1;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/internal/zzrc;)V

    :cond_ad
    throw v1
.end method

###### Class com.google.android.gms.internal.zzrc.zza (com.google.android.gms.internal.zzrc$zza)
.class final Lcom/google/android/gms/internal/zzrc$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field final synthetic vs:Lcom/google/android/gms/internal/zzrc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzrc;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrc$zza;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_88

    const-string v0, "TransformedResultImpl"

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x46

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TransformationResultHandler received unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void

    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrc$zza;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrc;->zzf(Lcom/google/android/gms/internal/zzrc;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-nez v0, :cond_46

    :try_start_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrc$zza;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrc;->zzg(Lcom/google/android/gms/internal/zzrc;)Lcom/google/android/gms/internal/zzrc;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0xd

    const-string v4, "Transform returned null"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzrc;->zza(Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/common/api/Status;)V

    :goto_41
    monitor-exit v1

    goto :goto_21

    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    :try_start_46
    instance-of v2, v0, Lcom/google/android/gms/internal/zzqx;

    if-eqz v2, :cond_5a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrc;->zzg(Lcom/google/android/gms/internal/zzrc;)Lcom/google/android/gms/internal/zzrc;

    move-result-object v2

    check-cast v0, Lcom/google/android/gms/internal/zzqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqx;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzrc;->zza(Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_41

    :cond_5a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrc$zza;->vs:Lcom/google/android/gms/internal/zzrc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrc;->zzg(Lcom/google/android/gms/internal/zzrc;)Lcom/google/android/gms/internal/zzrc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzrc;->zza(Lcom/google/android/gms/common/api/PendingResult;)V
    :try_end_63
    .catchall {:try_start_46 .. :try_end_63} :catchall_43

    goto :goto_41

    :pswitch_64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/RuntimeException;

    const-string v2, "TransformedResultImpl"

    const-string v3, "Runtime exception on the transformation worker thread: "

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_82

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_7e
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_82
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7e

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_22
        :pswitch_64
    .end packed-switch
.end method
