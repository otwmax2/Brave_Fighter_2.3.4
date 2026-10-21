###### Class com.google.android.gms.internal.zzji (com.google.android.gms.internal.zzji)
.class public Lcom/google/android/gms/internal/zzji;
.super Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private final zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzchj:Lcom/google/android/gms/internal/zzjj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzji;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/zzjj;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzii()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzjj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzchj:Lcom/google/android/gms/internal/zzjj;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzail:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzji;->zzh(Lcom/google/android/gms/dynamic/zzd;)V

    return-void
.end method

.method public isLoaded()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzchj:Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjj;->isLoaded()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzji;->zzf(Lcom/google/android/gms/dynamic/zzd;)V

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzji;->zzg(Lcom/google/android/gms/dynamic/zzd;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "RewardedVideoAd.setUserId() is deprecated. Please do not call this method."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    return-void
.end method

.method public show()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzchj:Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjj;->zzrr()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzchj:Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzjj;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzchj:Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzjj;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zzf(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzchj:Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjj;->pause()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zzg(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji;->zzail:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_14

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_d

    :try_start_8
    iget-object v2, p0, Lcom/google/android/gms/internal/zzji;->zzchj:Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzjj;->onContextChanged(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_1b
    .catchall {:try_start_8 .. :try_end_d} :catchall_22

    :cond_d
    :goto_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzchj:Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjj;->resume()V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_22

    return-void

    :cond_14
    :try_start_14
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_1b
    .catchall {:try_start_14 .. :try_end_1a} :catchall_22

    goto :goto_6

    :catch_1b
    move-exception v0

    :try_start_1c
    const-string v2, "Unable to extract updated context."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_22

    throw v0
.end method

.method public zzh(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzji;->zzchj:Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjj;->destroy()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
