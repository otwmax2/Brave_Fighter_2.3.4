###### Class com.google.android.gms.internal.zzks (com.google.android.gms.internal.zzks)
.class public Lcom/google/android/gms/internal/zzks;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final zzail:Ljava/lang/Object;

.field private zzcmq:Landroid/os/HandlerThread;

.field private zzcmr:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmq:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzks;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmr:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzks;->zzail:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzks;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzks;->zzail:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzks;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmr:I

    return v0
.end method


# virtual methods
.method public zztr()Landroid/os/Looper;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzks;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmr:I

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmq:Landroid/os/HandlerThread;

    if-nez v0, :cond_3e

    const-string v0, "Starting the looper thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "LooperProvider"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmq:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmq:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzks;->zzcmq:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzks;->mHandler:Landroid/os/Handler;

    const-string v0, "Looper thread started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    :goto_30
    iget v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmq:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_3e
    const-string v0, "Resuming the looper thread"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzks;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_30

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v0

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmq:Landroid/os/HandlerThread;

    const-string v2, "Invalid state: mHandlerThread should already been initialized."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_49

    goto :goto_30
.end method

.method public zzts()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzks;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmr:I

    if-lez v0, :cond_21

    const/4 v0, 0x1

    :goto_8
    const-string v2, "Invalid state: release() called more times than expected."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzks;->zzcmr:I

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzks;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzks$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzks$1;-><init>(Lcom/google/android/gms/internal/zzks;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    monitor-exit v1

    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_8

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

###### Class com.google.android.gms.internal.zzks.AnonymousClass1 (com.google.android.gms.internal.zzks$1)
.class Lcom/google/android/gms/internal/zzks$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzks;->zzts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcms:Lcom/google/android/gms/internal/zzks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzks;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzks$1;->zzcms:Lcom/google/android/gms/internal/zzks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzks$1;->zzcms:Lcom/google/android/gms/internal/zzks;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzks;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    const-string v0, "Suspending the looper thread"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzks$1;->zzcms:Lcom/google/android/gms/internal/zzks;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzks;->zzb(Lcom/google/android/gms/internal/zzks;)I
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2a

    move-result v0

    if-nez v0, :cond_2d

    :try_start_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzks$1;->zzcms:Lcom/google/android/gms/internal/zzks;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzks;->zza(Lcom/google/android/gms/internal/zzks;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const-string v0, "Looper thread resumed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_22} :catch_23
    .catchall {:try_start_14 .. :try_end_22} :catchall_2a

    goto :goto_c

    :catch_23
    move-exception v0

    :try_start_24
    const-string v0, "Looper thread interrupted."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    goto :goto_c

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    return-void
.end method
