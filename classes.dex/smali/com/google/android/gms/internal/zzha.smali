###### Class com.google.android.gms.internal.zzha (com.google.android.gms.internal.zzha)
.class public final Lcom/google/android/gms/internal/zzha;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerListener;
.implements Lcom/google/ads/mediation/MediationInterstitialListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/mediation/NetworkExtras;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/MediationServerParameters;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerListener;",
        "Lcom/google/ads/mediation/MediationInterstitialListener;"
    }
.end annotation


# instance fields
.field private final zzbpo:Lcom/google/android/gms/internal/zzgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzgp;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    return-object v0
.end method


# virtual methods
.method public onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onClick."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzty()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "onClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzha$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzha$1;-><init>(Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdClicked()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1e

    :catch_25
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzty()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "onDismissScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzha$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzha$4;-><init>(Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdClosed()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1e

    :catch_25
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzty()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "onDismissScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzha$9;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzha$9;-><init>(Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdClosed()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1e

    :catch_25
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Adapter called onFailedToReceiveAd with error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzty()Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzha$5;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzha$5;-><init>(Lcom/google/android/gms/internal/zzha;Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3d
    return-void

    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzhb;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgp;->onAdFailedToLoad(I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_47} :catch_48

    goto :goto_3d

    :catch_48
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;",
            "Lcom/google/ads/AdRequest$ErrorCode;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Adapter called onFailedToReceiveAd with error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzty()Z

    move-result v0

    if-nez v0, :cond_44

    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzha$10;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzha$10;-><init>(Lcom/google/android/gms/internal/zzha;Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_43
    return-void

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzhb;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgp;->onAdFailedToLoad(I)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_43

    :catch_4e
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method public onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzty()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "onLeaveApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzha$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzha$6;-><init>(Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdLeftApplication()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1e

    :catch_25
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzty()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "onLeaveApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzha$11;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzha$11;-><init>(Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdLeftApplication()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1e

    :catch_25
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzty()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "onPresentScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzha$7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzha$7;-><init>(Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdOpened()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1e

    :catch_25
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzty()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "onPresentScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzha$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzha$2;-><init>(Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdOpened()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1e

    :catch_25
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationBannerAdapter",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzty()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "onReceivedAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzha$8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzha$8;-><init>(Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdLoaded()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1e

    :catch_25
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/MediationInterstitialAdapter",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcw(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzty()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "onReceivedAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzcy(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcnf:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzha$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzha$3;-><init>(Lcom/google/android/gms/internal/zzha;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha;->zzbpo:Lcom/google/android/gms/internal/zzgp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdLoaded()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_1e

    :catch_25
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

###### Class com.google.android.gms.internal.zzha.AnonymousClass1 (com.google.android.gms.internal.zzha$1)
.class Lcom/google/android/gms/internal/zzha$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzha;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpu:Lcom/google/android/gms/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzha;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha$1;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha$1;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzha;->zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdClicked()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

###### Class com.google.android.gms.internal.zzha.AnonymousClass10 (com.google.android.gms.internal.zzha$10)
.class Lcom/google/android/gms/internal/zzha$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzha;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpu:Lcom/google/android/gms/internal/zzha;

.field final synthetic zzbpv:Lcom/google/ads/AdRequest$ErrorCode;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzha;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha$10;->zzbpu:Lcom/google/android/gms/internal/zzha;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzha$10;->zzbpv:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha$10;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzha;->zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzha$10;->zzbpv:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhb;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgp;->onAdFailedToLoad(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

###### Class com.google.android.gms.internal.zzha.AnonymousClass11 (com.google.android.gms.internal.zzha$11)
.class Lcom/google/android/gms/internal/zzha$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzha;->onLeaveApplication(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpu:Lcom/google/android/gms/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzha;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha$11;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha$11;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzha;->zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdLeftApplication()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

###### Class com.google.android.gms.internal.zzha.AnonymousClass2 (com.google.android.gms.internal.zzha$2)
.class Lcom/google/android/gms/internal/zzha$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzha;->onPresentScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpu:Lcom/google/android/gms/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzha;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha$2;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha$2;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzha;->zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdOpened()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

###### Class com.google.android.gms.internal.zzha.AnonymousClass3 (com.google.android.gms.internal.zzha$3)
.class Lcom/google/android/gms/internal/zzha$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzha;->onReceivedAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpu:Lcom/google/android/gms/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzha;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha$3;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha$3;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzha;->zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdLoaded()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

###### Class com.google.android.gms.internal.zzha.AnonymousClass4 (com.google.android.gms.internal.zzha$4)
.class Lcom/google/android/gms/internal/zzha$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzha;->onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpu:Lcom/google/android/gms/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzha;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha$4;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha$4;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzha;->zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdClosed()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

###### Class com.google.android.gms.internal.zzha.AnonymousClass5 (com.google.android.gms.internal.zzha$5)
.class Lcom/google/android/gms/internal/zzha$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzha;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpu:Lcom/google/android/gms/internal/zzha;

.field final synthetic zzbpv:Lcom/google/ads/AdRequest$ErrorCode;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzha;Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha$5;->zzbpu:Lcom/google/android/gms/internal/zzha;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzha$5;->zzbpv:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha$5;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzha;->zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzha$5;->zzbpv:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzhb;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgp;->onAdFailedToLoad(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

###### Class com.google.android.gms.internal.zzha.AnonymousClass6 (com.google.android.gms.internal.zzha$6)
.class Lcom/google/android/gms/internal/zzha$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzha;->onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpu:Lcom/google/android/gms/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzha;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha$6;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha$6;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzha;->zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdLeftApplication()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

###### Class com.google.android.gms.internal.zzha.AnonymousClass7 (com.google.android.gms.internal.zzha$7)
.class Lcom/google/android/gms/internal/zzha$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzha;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpu:Lcom/google/android/gms/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzha;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha$7;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha$7;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzha;->zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdOpened()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

###### Class com.google.android.gms.internal.zzha.AnonymousClass8 (com.google.android.gms.internal.zzha$8)
.class Lcom/google/android/gms/internal/zzha$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzha;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpu:Lcom/google/android/gms/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzha;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha$8;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha$8;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzha;->zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdLoaded()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

###### Class com.google.android.gms.internal.zzha.AnonymousClass9 (com.google.android.gms.internal.zzha$9)
.class Lcom/google/android/gms/internal/zzha$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzha;->onDismissScreen(Lcom/google/ads/mediation/MediationInterstitialAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbpu:Lcom/google/android/gms/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzha;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzha$9;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzha$9;->zzbpu:Lcom/google/android/gms/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzha;->zza(Lcom/google/android/gms/internal/zzha;)Lcom/google/android/gms/internal/zzgp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgp;->onAdClosed()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method
