###### Class com.google.android.gms.internal.zzgg (com.google.android.gms.internal.zzgg)
.class public final Lcom/google/android/gms/internal/zzgg;
.super Lcom/google/android/gms/internal/zzgp$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private zzboe:Lcom/google/android/gms/internal/zzgi$zza;

.field private zzbof:Lcom/google/android/gms/internal/zzgf;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzgp$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgf;->zzea()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onAdClosed()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgf;->zzeb()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onAdFailedToLoad(I)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzboe:Lcom/google/android/gms/internal/zzgi$zza;

    if-eqz v0, :cond_13

    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    const/4 v0, 0x1

    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzgg;->zzboe:Lcom/google/android/gms/internal/zzgi$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzgi$zza;->zzy(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzboe:Lcom/google/android/gms/internal/zzgi$zza;

    :cond_13
    monitor-exit v1

    return-void

    :cond_15
    const/4 v0, 0x2

    goto :goto_b

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onAdImpression()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgf;->zzef()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onAdLeftApplication()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgf;->zzec()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public onAdLoaded()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzboe:Lcom/google/android/gms/internal/zzgi$zza;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzboe:Lcom/google/android/gms/internal/zzgi$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgi$zza;->zzy(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzboe:Lcom/google/android/gms/internal/zzgi$zza;

    monitor-exit v1

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgf;->zzee()V

    :cond_1b
    monitor-exit v1

    goto :goto_11

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onAdOpened()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgf;->zzed()V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzgf;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/zzgf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzgi$zza;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzgg;->zzboe:Lcom/google/android/gms/internal/zzgi$zza;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzgq;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzboe:Lcom/google/android/gms/internal/zzgi$zza;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzboe:Lcom/google/android/gms/internal/zzgi$zza;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/zzgi$zza;->zza(ILcom/google/android/gms/internal/zzgq;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzboe:Lcom/google/android/gms/internal/zzgi$zza;

    monitor-exit v1

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbof:Lcom/google/android/gms/internal/zzgf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgf;->zzee()V

    :cond_1b
    monitor-exit v1

    goto :goto_11

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method
