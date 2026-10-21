###### Class com.google.android.gms.internal.zzkz (com.google.android.gms.internal.zzkz)
.class public Lcom/google/android/gms/internal/zzkz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzlc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private zzbpb:Z

.field private zzcnr:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zzcns:Z

.field private final zzcnt:Lcom/google/android/gms/internal/zzld;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzail:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzld;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzld;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzcnt:Lcom/google/android/gms/internal/zzld;

    return-void
.end method

.method private zztz()Z
    .registers 2

    const/4 v0, 0x0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkz;->zzcns:Z

    if-eqz v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzkz;->zzail:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkz;->zztz()Z

    move-result v3

    if-eqz v3, :cond_13

    monitor-exit v2

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0

    :cond_13
    const/4 v0, 0x1

    :try_start_14
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkz;->zzbpb:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkz;->zzcns:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzcnt:Lcom/google/android/gms/internal/zzld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzld;->zzua()V

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_10

    move v0, v1

    goto :goto_4
.end method

.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkz;->zztz()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    move-result v0

    if-nez v0, :cond_e

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_1d
    .catchall {:try_start_9 .. :try_end_e} :catchall_1a

    :cond_e
    :try_start_e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkz;->zzbpb:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v2, "CallbackFuture was cancelled."

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    :catch_1d
    move-exception v0

    :try_start_1e
    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzcnr:Ljava/lang/Object;

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_1a

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkz;->zztz()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_24

    move-result v0

    if-nez v0, :cond_18

    :try_start_9
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzail:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_18} :catch_27
    .catchall {:try_start_9 .. :try_end_18} :catchall_24

    :cond_18
    :try_start_18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkz;->zzcns:Z

    if-nez v0, :cond_29

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "CallbackFuture timed out."

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v0

    :catch_27
    move-exception v0

    :try_start_28
    throw v0

    :cond_29
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkz;->zzbpb:Z

    if-eqz v0, :cond_35

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v2, "CallbackFuture was cancelled."

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzcnr:Ljava/lang/Object;

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_24

    return-object v0
.end method

.method public isCancelled()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkz;->zzbpb:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isDone()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkz;->zztz()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public zzb(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzcnt:Lcom/google/android/gms/internal/zzld;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzld;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzc(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzcnt:Lcom/google/android/gms/internal/zzld;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzld;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzi(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkz;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkz;->zzbpb:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkz;->zztz()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Provided CallbackFuture with multiple values."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    const/4 v0, 0x1

    :try_start_1b
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkz;->zzcns:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkz;->zzcnr:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkz;->zzcnt:Lcom/google/android/gms/internal/zzld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzld;->zzua()V

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_17

    goto :goto_8
.end method
