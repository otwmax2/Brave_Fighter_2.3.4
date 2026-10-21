###### Class com.google.android.gms.ads.internal.client.zzak (com.google.android.gms.ads.internal.client.zzak)
.class public Lcom/google/android/gms/ads/internal/client/zzak;
.super Lcom/google/android/gms/ads/internal/client/zzu$zza;


# instance fields
.field private zzald:Lcom/google/android/gms/ads/internal/client/zzq;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzu$zza;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/client/zzak;)Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzak;->zzald:Lcom/google/android/gms/ads/internal/client/zzq;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public showInterstitial()V
    .registers 1

    return-void
.end method

.method public stopLoading()V
    .registers 1

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzp;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzak;->zzald:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzw;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzy;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzdo;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzhs;)V
    .registers 2

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzhw;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .registers 4

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzak$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/client/zzak$1;-><init>(Lcom/google/android/gms/ads/internal/client/zzak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public zzdn()Lcom/google/android/gms/dynamic/zzd;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzdo()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzdq()V
    .registers 1

    return-void
.end method

.method public zzdr()Lcom/google/android/gms/ads/internal/client/zzab;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.client.zzak.AnonymousClass1 (com.google.android.gms.ads.internal.client.zzak$1)
.class Lcom/google/android/gms/ads/internal/client/zzak$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/client/zzak;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzawu:Lcom/google/android/gms/ads/internal/client/zzak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzak;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzak$1;->zzawu:Lcom/google/android/gms/ads/internal/client/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzak$1;->zzawu:Lcom/google/android/gms/ads/internal/client/zzak;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzak;->zza(Lcom/google/android/gms/ads/internal/client/zzak;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_12

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzak$1;->zzawu:Lcom/google/android/gms/ads/internal/client/zzak;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzak;->zza(Lcom/google/android/gms/ads/internal/client/zzak;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method
