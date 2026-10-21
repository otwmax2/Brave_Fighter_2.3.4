###### Class com.google.android.gms.ads.internal.client.zzag (com.google.android.gms.ads.internal.client.zzag)
.class public Lcom/google/android/gms/ads/internal/client/zzag;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# static fields
.field private static final zzamp:Ljava/lang/Object;

.field private static zzawp:Lcom/google/android/gms/ads/internal/client/zzag;


# instance fields
.field private zzawq:Lcom/google/android/gms/ads/internal/client/zzz;

.field private zzawr:Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzag;->zzamp:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzjo()Lcom/google/android/gms/ads/internal/client/zzag;
    .registers 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzag;->zzamp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawp:Lcom/google/android/gms/ads/internal/client/zzag;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawp:Lcom/google/android/gms/ads/internal/client/zzag;

    :cond_e
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawp:Lcom/google/android/gms/ads/internal/client/zzag;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 5

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzag;->zzamp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawr:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawr:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v1

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/zzgm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgm;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzix()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzgn;)Lcom/google/android/gms/ads/internal/reward/client/zzb;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/reward/client/zzi;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/ads/internal/reward/client/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/reward/client/zzb;)V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawr:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawr:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v1

    goto :goto_a

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public setAppMuted(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawq:Lcom/google/android/gms/ads/internal/client/zzz;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    const-string v1, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawq:Lcom/google/android/gms/ads/internal/client/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzz;->setAppMuted(Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_12

    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_5

    :catch_12
    move-exception v0

    const-string v1, "Unable to set app mute state."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public setAppVolume(F)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_22

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_22

    move v0, v1

    :goto_e
    const-string v3, "The app volume must be a value between 0 and 1 inclusive."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawq:Lcom/google/android/gms/ads/internal/client/zzz;

    if-eqz v0, :cond_24

    :goto_17
    const-string v0, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzab;->zza(ZLjava/lang/Object;)V

    :try_start_1c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawq:Lcom/google/android/gms/ads/internal/client/zzz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzz;->setAppVolume(F)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_26

    :goto_21
    return-void

    :cond_22
    move v0, v2

    goto :goto_e

    :cond_24
    move v1, v2

    goto :goto_17

    :catch_26
    move-exception v0

    const-string v1, "Unable to set app volume."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzah;)V
    .registers 7

    sget-object v1, Lcom/google/android/gms/ads/internal/client/zzag;->zzamp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawq:Lcom/google/android/gms/ads/internal/client/zzz;

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    if-nez p1, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :try_start_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzix()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzl;->zzl(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/zzz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawq:Lcom/google/android/gms/ads/internal/client/zzz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawq:Lcom/google/android/gms/ads/internal/client/zzz;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzz;->initialize()V

    if-eqz p2, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzawq:Lcom/google/android/gms/ads/internal/client/zzz;

    invoke-interface {v0, p2}, Lcom/google/android/gms/ads/internal/client/zzz;->zzu(Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2c} :catch_2e
    .catchall {:try_start_16 .. :try_end_2c} :catchall_13

    :cond_2c
    :goto_2c
    :try_start_2c
    monitor-exit v1

    goto :goto_8

    :catch_2e
    move-exception v0

    const-string v2, "Fail to initialize or set applicationCode on mobile ads setting manager"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_13

    goto :goto_2c
.end method
