###### Class com.google.android.gms.internal.zzpt (com.google.android.gms.internal.zzpt)
.class public abstract Lcom/google/android/gms/internal/zzpt;
.super Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzpt$zzb;,
        Lcom/google/android/gms/internal/zzpt$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;"
    }
.end annotation


# static fields
.field static final sI:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final sJ:Ljava/lang/Object;

.field protected final sK:Lcom/google/android/gms/internal/zzpt$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpt$zza",
            "<TR;>;"
        }
    .end annotation
.end field

.field protected final sL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private final sM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult$zza;",
            ">;"
        }
    .end annotation
.end field

.field private sN:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private sO:Lcom/google/android/gms/internal/zzpt$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpt$zzb;"
        }
    .end annotation
.end field

.field private volatile sP:Z

.field private sQ:Z

.field private sR:Lcom/google/android/gms/common/internal/zzr;

.field private volatile sS:Lcom/google/android/gms/internal/zzrc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrc",
            "<TR;>;"
        }
    .end annotation
.end field

.field private sT:Z

.field private sc:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private zzak:Z

.field private final zzalc:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzpt$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzpt$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpt;->sI:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->zzalc:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sM:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sT:Z

    new-instance v0, Lcom/google/android/gms/internal/zzpt$zza;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzpt$zza;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sK:Lcom/google/android/gms/internal/zzpt$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sL:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->zzalc:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sM:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sT:Z

    new-instance v0, Lcom/google/android/gms/internal/zzpt$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzpt$zza;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sK:Lcom/google/android/gms/internal/zzpt$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sL:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->zzalc:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sM:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sT:Z

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_22
    new-instance v1, Lcom/google/android/gms/internal/zzpt$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzpt$zza;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sK:Lcom/google/android/gms/internal/zzpt$zza;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sL:Ljava/lang/ref/WeakReference;

    return-void

    :cond_31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_22
.end method

.method private get()Lcom/google/android/gms/common/api/Result;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpt;->sP:Z

    if-nez v2, :cond_26

    :goto_8
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isReady()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sc:Lcom/google/android/gms/common/api/Result;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpt;->sc:Lcom/google/android/gms/common/api/Result;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpt;->sN:Lcom/google/android/gms/common/api/ResultCallback;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzpt;->sP:Z

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_28

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzaop()V

    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_8

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzpt;)Lcom/google/android/gms/common/api/Result;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sc:Lcom/google/android/gms/common/api/Result;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/common/api/Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt;->sc:Lcom/google/android/gms/common/api/Result;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpt;->sR:Lcom/google/android/gms/common/internal/zzr;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->zzalc:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sc:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->zzak:Z

    if-eqz v0, :cond_2c

    iput-object v2, p0, Lcom/google/android/gms/internal/zzpt;->sN:Lcom/google/android/gms/common/api/ResultCallback;

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/PendingResult$zza;->zzv(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1c

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sN:Lcom/google/android/gms/common/api/ResultCallback;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sc:Lcom/google/android/gms/common/api/Result;

    instance-of v0, v0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/zzpt$zzb;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/zzpt$zzb;-><init>(Lcom/google/android/gms/internal/zzpt;Lcom/google/android/gms/internal/zzpt$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sO:Lcom/google/android/gms/internal/zzpt$zzb;

    goto :goto_16

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sK:Lcom/google/android/gms/internal/zzpt$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpt$zza;->zzaow()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sK:Lcom/google/android/gms/internal/zzpt$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpt;->sN:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpt;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzpt$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_16

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static zze(Lcom/google/android/gms/common/api/Result;)V
    .registers 7

    instance-of v1, p0, Lcom/google/android/gms/common/api/Releasable;

    if-eqz v1, :cond_b

    :try_start_4
    move-object v0, p0

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

    const-string v2, "BasePendingResult"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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


# virtual methods
.method public final await()Lcom/google/android/gms/common/api/Result;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_38

    move v0, v1

    :goto_d
    const-string v3, "await must not be called on the UI thread"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sP:Z

    if-nez v0, :cond_3a

    move v0, v1

    :goto_17
    const-string v3, "Result has already been consumed"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sS:Lcom/google/android/gms/internal/zzrc;

    if-nez v0, :cond_3c

    :goto_20
    const-string v0, "Cannot await if then() has been called."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->zzalc:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2a} :catch_3e

    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpt;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_38
    move v0, v2

    goto :goto_d

    :cond_3a
    move v0, v2

    goto :goto_17

    :cond_3c
    move v1, v2

    goto :goto_20

    :catch_3e
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sh:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpt;->zzaa(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2a
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-lez v0, :cond_12

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v0, v3, :cond_46

    :cond_12
    move v0, v2

    :goto_13
    const-string v3, "await must not be called on the UI thread when time is greater than zero."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sP:Z

    if-nez v0, :cond_48

    move v0, v2

    :goto_1d
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sS:Lcom/google/android/gms/internal/zzrc;

    if-nez v0, :cond_4a

    :goto_26
    const-string v0, "Cannot await if then() has been called."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    :try_start_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->zzalc:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_38

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sj:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpt;->zzaa(Lcom/google/android/gms/common/api/Status;)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_38} :catch_4c

    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpt;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_46
    move v0, v1

    goto :goto_13

    :cond_48
    move v0, v1

    goto :goto_1d

    :cond_4a
    move v2, v1

    goto :goto_26

    :catch_4c
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sh:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpt;->zzaa(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_38
.end method

.method public cancel()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->zzak:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sP:Z

    if-eqz v0, :cond_d

    :cond_b
    monitor-exit v1

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sR:Lcom/google/android/gms/common/internal/zzr;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_29

    if-eqz v0, :cond_16

    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sR:Lcom/google/android/gms/common/internal/zzr;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/zzr;->cancel()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_2c
    .catchall {:try_start_11 .. :try_end_16} :catchall_29

    :cond_16
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sc:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpt;->zze(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->zzak:Z

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sk:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpt;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpt;->zzd(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v1

    goto :goto_c

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_29

    throw v0

    :catch_2c
    move-exception v0

    goto :goto_16
.end method

.method public isCanceled()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->zzak:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final isReady()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->zzalc:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_c

    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sN:Lcom/google/android/gms/common/api/ResultCallback;

    monitor-exit v3

    :goto_b
    return-void

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpt;->sP:Z

    if-nez v2, :cond_2a

    move v2, v0

    :goto_11
    const-string v4, "Result has already been consumed."

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpt;->sS:Lcom/google/android/gms/internal/zzrc;

    if-nez v2, :cond_2c

    :goto_1a
    const-string v1, "Cannot set callbacks if then() has been called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2e

    monitor-exit v3

    goto :goto_b

    :catchall_27
    move-exception v0

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    move v2, v1

    goto :goto_11

    :cond_2c
    move v0, v1

    goto :goto_1a

    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sK:Lcom/google/android/gms/internal/zzpt$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpt;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzpt$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_3d
    monitor-exit v3

    goto :goto_b

    :cond_3f
    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt;->sN:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_27

    goto :goto_3d
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_c

    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sN:Lcom/google/android/gms/common/api/ResultCallback;

    monitor-exit v3

    :goto_b
    return-void

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpt;->sP:Z

    if-nez v2, :cond_2a

    move v2, v0

    :goto_11
    const-string v4, "Result has already been consumed."

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpt;->sS:Lcom/google/android/gms/internal/zzrc;

    if-nez v2, :cond_2c

    :goto_1a
    const-string v1, "Cannot set callbacks if then() has been called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2e

    monitor-exit v3

    goto :goto_b

    :catchall_27
    move-exception v0

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    move v2, v1

    goto :goto_11

    :cond_2c
    move v0, v1

    goto :goto_1a

    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sK:Lcom/google/android/gms/internal/zzpt$zza;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpt;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzpt$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_3d
    monitor-exit v3

    goto :goto_b

    :cond_3f
    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt;->sN:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sK:Lcom/google/android/gms/internal/zzpt$zza;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, p0, v4, v5}, Lcom/google/android/gms/internal/zzpt$zza;->zza(Lcom/google/android/gms/internal/zzpt;J)V
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_27

    goto :goto_3d
.end method

.method public then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;
    .registers 7
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

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sP:Z

    if-nez v0, :cond_47

    move v0, v1

    :goto_7
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sS:Lcom/google/android/gms/internal/zzrc;

    if-nez v0, :cond_49

    move v0, v1

    :goto_14
    const-string v4, "Cannot call then() twice."

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sN:Lcom/google/android/gms/common/api/ResultCallback;

    if-nez v0, :cond_4b

    :goto_1d
    const-string v0, "Cannot call then() if callbacks are set."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sT:Z

    new-instance v0, Lcom/google/android/gms/internal/zzrc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sL:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzrc;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sS:Lcom/google/android/gms/internal/zzrc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sS:Lcom/google/android/gms/internal/zzrc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzrc;->then(Lcom/google/android/gms/common/api/ResultTransform;)Lcom/google/android/gms/common/api/TransformedResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isReady()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sK:Lcom/google/android/gms/internal/zzpt$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpt;->sS:Lcom/google/android/gms/internal/zzrc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpt;->get()Lcom/google/android/gms/common/api/Result;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/zzpt$zza;->zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_45
    monitor-exit v3

    return-object v0

    :cond_47
    move v0, v2

    goto :goto_7

    :cond_49
    move v0, v2

    goto :goto_14

    :cond_4b
    move v1, v2

    goto :goto_1d

    :cond_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sS:Lcom/google/android/gms/internal/zzrc;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sN:Lcom/google/android/gms/common/api/ResultCallback;

    goto :goto_45

    :catchall_52
    move-exception v0

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_f .. :try_end_54} :catchall_52

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sP:Z

    if-nez v0, :cond_27

    move v0, v1

    :goto_7
    const-string v3, "Result has already been consumed."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    if-eqz p1, :cond_29

    :goto_e
    const-string v0, "Callback cannot be null."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sc:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/PendingResult$zza;->zzv(Lcom/google/android/gms/common/api/Status;)V

    :goto_25
    monitor-exit v1

    return-void

    :cond_27
    move v0, v2

    goto :goto_7

    :cond_29
    move v1, v2

    goto :goto_e

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_31

    throw v0
.end method

.method protected final zza(Lcom/google/android/gms/common/internal/zzr;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt;->sR:Lcom/google/android/gms/common/internal/zzr;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final zzaa(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isReady()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpt;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpt;->zzc(Lcom/google/android/gms/common/api/Result;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sQ:Z

    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public zzaog()Ljava/lang/Integer;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected zzaop()V
    .registers 1

    return-void
.end method

.method public zzaos()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt;->sL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sT:Z

    if-nez v0, :cond_14

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->cancel()V

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isCanceled()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public zzaot()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sT:Z

    if-nez v0, :cond_12

    sget-object v0, Lcom/google/android/gms/internal/zzpt;->sI:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_12
    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzpt;->sT:Z

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method zzaou()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final zzc(Lcom/google/android/gms/common/api/Result;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpt;->sJ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpt;->sQ:Z

    if-nez v2, :cond_19

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpt;->zzak:Z

    if-nez v2, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isReady()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->zzaou()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_19
    invoke-static {p1}, Lcom/google/android/gms/internal/zzpt;->zze(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v3

    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt;->isReady()Z

    move-result v2

    if-nez v2, :cond_3b

    move v2, v0

    :goto_25
    const-string v4, "Results have already been set"

    invoke-static {v2, v4}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpt;->sP:Z

    if-nez v2, :cond_3d

    :goto_2e
    const-string v1, "Result has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpt;->zzd(Lcom/google/android/gms/common/api/Result;)V

    monitor-exit v3

    goto :goto_1d

    :catchall_38
    move-exception v0

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v0

    :cond_3b
    move v2, v1

    goto :goto_25

    :cond_3d
    move v0, v1

    goto :goto_2e
.end method

###### Class com.google.android.gms.internal.zzpt.AnonymousClass1 (com.google.android.gms.internal.zzpt$1)
.class final Lcom/google/android/gms/internal/zzpt$1;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzpt$1;->zzaov()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected zzaov()Ljava/lang/Boolean;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzpt.zza (com.google.android.gms.internal.zzpt$zza)
.class public Lcom/google/android/gms/internal/zzpt$zza;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Landroid/os/Handler;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzpt$zza;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    const-string v0, "BasePendingResult"

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Don\'t know how to handle message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return-void

    :pswitch_27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/Result;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzpt$zza;->zzb(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    goto :goto_26

    :pswitch_37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/zzpt;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->sj:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzpt;->zzaa(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_26

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_27
        :pswitch_37
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;TR;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzpt$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpt$zza;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzpt;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpt",
            "<TR;>;J)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzpt$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/gms/internal/zzpt$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public zzaow()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzpt$zza;->removeMessages(I)V

    return-void
.end method

.method protected zzb(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;TR;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzpt;->zze(Lcom/google/android/gms/common/api/Result;)V

    throw v0
.end method

###### Class com.google.android.gms.internal.zzpt.zzb (com.google.android.gms.internal.zzpt$zzb)
.class final Lcom/google/android/gms/internal/zzpt$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzb"
.end annotation


# instance fields
.field final synthetic sU:Lcom/google/android/gms/internal/zzpt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzpt;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpt$zzb;->sU:Lcom/google/android/gms/internal/zzpt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzpt;Lcom/google/android/gms/internal/zzpt$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzpt$zzb;-><init>(Lcom/google/android/gms/internal/zzpt;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpt$zzb;->sU:Lcom/google/android/gms/internal/zzpt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpt;->zza(Lcom/google/android/gms/internal/zzpt;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpt;->zze(Lcom/google/android/gms/common/api/Result;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
