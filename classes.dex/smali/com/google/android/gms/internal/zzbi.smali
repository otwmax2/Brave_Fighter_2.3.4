###### Class com.google.android.gms.internal.zzbi (com.google.android.gms.internal.zzbi)
.class public Lcom/google/android/gms/internal/zzbi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzaey:Lcom/google/android/gms/internal/zzax;

.field private final zzaha:Lcom/google/android/gms/internal/zzae$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzax;Lcom/google/android/gms/internal/zzae$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbi;->zzaey:Lcom/google/android/gms/internal/zzax;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbi;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbi;->zzcy()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public zzcy()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzax;->zzcn()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzax;->zzcn()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzax;->zzcm()Lcom/google/android/gms/internal/zzae$zza;

    move-result-object v0

    if-eqz v0, :cond_26

    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbi;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    monitor-enter v1
    :try_end_1c
    .catch Lcom/google/android/gms/internal/zzapb; {:try_start_19 .. :try_end_1c} :catch_2b

    :try_start_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbi;->zzaha:Lcom/google/android/gms/internal/zzae$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapc;->zzf(Lcom/google/android/gms/internal/zzapc;)[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzapc;[B)Lcom/google/android/gms/internal/zzapc;

    monitor-exit v1

    :cond_26
    :goto_26
    const/4 v0, 0x0

    return-object v0

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0
    :try_end_2b
    .catch Lcom/google/android/gms/internal/zzapb; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    goto :goto_26
.end method
