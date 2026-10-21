###### Class com.google.android.gms.ads.internal.reward.client.zzf (com.google.android.gms.ads.internal.reward.client.zzf)
.class public Lcom/google/android/gms/ads/internal/reward/client/zzf;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/ads/internal/reward/client/zzc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public zzb(Landroid/content/Context;Lcom/google/android/gms/internal/zzgn;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .registers 6

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/reward/client/zzf;->zzcr(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/reward/client/zzc;

    const v2, 0x8d3c40

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/ads/internal/reward/client/zzc;->zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/internal/zzgn;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->zzbf(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_14} :catch_1e

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    :goto_17
    const-string v1, "Could not get remote RewardedVideoAd."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_15

    :catch_1e
    move-exception v0

    goto :goto_17
.end method

.method protected zzbi(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzc;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/reward/client/zzc$zza;->zzbg(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzc;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/reward/client/zzf;->zzbi(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzc;

    move-result-object v0

    return-object v0
.end method
