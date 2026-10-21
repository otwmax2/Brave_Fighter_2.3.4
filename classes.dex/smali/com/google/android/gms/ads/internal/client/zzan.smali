###### Class com.google.android.gms.ads.internal.client.zzan (com.google.android.gms.ads.internal.client.zzan)
.class public Lcom/google/android/gms/ads/internal/client/zzan;
.super Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;


# instance fields
.field private zzawv:Lcom/google/android/gms/ads/internal/reward/client/zzd;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/client/zzan;)Lcom/google/android/gms/ads/internal/reward/client/zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzan;->zzawv:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public isLoaded()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public resume()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public show()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzan$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzan$1;-><init>(Lcom/google/android/gms/ads/internal/client/zzan;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzan;->zzawv:Lcom/google/android/gms/ads/internal/reward/client/zzd;

    return-void
.end method

.method public zzf(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zzg(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zzh(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

###### Class com.google.android.gms.ads.internal.client.zzan.AnonymousClass1 (com.google.android.gms.ads.internal.client.zzan$1)
.class Lcom/google/android/gms/ads/internal/client/zzan$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzan;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaww:Lcom/google/android/gms/ads/internal/client/zzan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzan;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzan$1;->zzaww:Lcom/google/android/gms/ads/internal/client/zzan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzan$1;->zzaww:Lcom/google/android/gms/ads/internal/client/zzan;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzan;->zza(Lcom/google/android/gms/ads/internal/client/zzan;)Lcom/google/android/gms/ads/internal/reward/client/zzd;

    move-result-object v0

    if-eqz v0, :cond_12

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzan$1;->zzaww:Lcom/google/android/gms/ads/internal/client/zzan;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzan;->zza(Lcom/google/android/gms/ads/internal/client/zzan;)Lcom/google/android/gms/ads/internal/reward/client/zzd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/reward/client/zzd;->onRewardedVideoAdFailedToLoad(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v1, "Could not notify onRewardedVideoAdFailedToLoad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method
