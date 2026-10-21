###### Class com.google.android.gms.ads.internal.zzq (com.google.android.gms.ads.internal.zzq)
.class public Lcom/google/android/gms/ads/internal/zzq;
.super Lcom/google/android/gms/ads/internal/zzb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzd;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzgr;)Lcom/google/android/gms/ads/internal/formats/zzd;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgr;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgr;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgr;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgr;->zzkw()Lcom/google/android/gms/internal/zzdu;

    move-result-object v4

    if-eqz v4, :cond_31

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgr;->zzkw()Lcom/google/android/gms/internal/zzdu;

    move-result-object v4

    :goto_19
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgr;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgr;->getStarRating()D

    move-result-wide v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgr;->getStore()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgr;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgr;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/formats/zzd;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzdu;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    return-object v0

    :cond_31
    move-object v4, v10

    goto :goto_19
.end method

.method private static zza(Lcom/google/android/gms/internal/zzgs;)Lcom/google/android/gms/ads/internal/formats/zze;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgs;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgs;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgs;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgs;->zzla()Lcom/google/android/gms/internal/zzdu;

    move-result-object v4

    if-eqz v4, :cond_29

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgs;->zzla()Lcom/google/android/gms/internal/zzdu;

    move-result-object v4

    :goto_19
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgs;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgs;->getAdvertiser()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzgs;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zze;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzdu;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V

    return-object v0

    :cond_29
    move-object v4, v7

    goto :goto_19
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzq$2;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/formats/zzd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzq$3;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/formats/zze;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzjy;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzq$4;-><init>(Lcom/google/android/gms/ads/internal/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/zzjy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public pause()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resume()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showInterstitial()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzeh;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy;->zzcii:Lorg/json/JSONObject;

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->zzsv()Lcom/google/android/gms/internal/zzcg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzcg;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzjy;Lcom/google/android/gms/ads/internal/formats/zzh;)Lcom/google/android/gms/internal/zzcd;

    :cond_1b
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzdo;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhs;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzjy$zza;Lcom/google/android/gms/internal/zzdk;)V
    .registers 13

    iget-object v0, p1, Lcom/google/android/gms/internal/zzjy$zza;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzjy$zza;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_a
    iget v0, p1, Lcom/google/android/gms/internal/zzjy$zza;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1a

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzq$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzq$1;-><init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzjy$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapu:I

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfp()Lcom/google/android/gms/internal/zzig;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v2, Lcom/google/android/gms/ads/internal/zzv;->zzaot:Lcom/google/android/gms/internal/zzas;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajz:Lcom/google/android/gms/internal/zzgn;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p0

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zzig;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzjy$zza;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzll;Lcom/google/android/gms/internal/zzgn;Lcom/google/android/gms/internal/zzig$zza;Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzkn;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/internal/zzkn;

    const-string v1, "AdRenderer: "

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/internal/zzkn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_56
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    goto :goto_19

    :cond_5a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_56
.end method

.method protected zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzjy;Z)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajr:Lcom/google/android/gms/ads/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzr;->zzfc()Z

    move-result v0

    return v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzjy;Lcom/google/android/gms/internal/zzjy;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzv;->zzgp()Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-boolean v1, p2, Lcom/google/android/gms/internal/zzjy;->zzccc:Z

    if-eqz v1, :cond_85

    :try_start_19
    iget-object v1, p2, Lcom/google/android/gms/internal/zzjy;->zzbos:Lcom/google/android/gms/internal/zzgo;

    if-eqz v1, :cond_51

    iget-object v1, p2, Lcom/google/android/gms/internal/zzjy;->zzbos:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzgo;->zzmq()Lcom/google/android/gms/internal/zzgr;

    move-result-object v1

    :goto_23
    iget-object v3, p2, Lcom/google/android/gms/internal/zzjy;->zzbos:Lcom/google/android/gms/internal/zzgo;

    if-eqz v3, :cond_2d

    iget-object v0, p2, Lcom/google/android/gms/internal/zzjy;->zzbos:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->zzmr()Lcom/google/android/gms/internal/zzgs;

    move-result-object v0

    :cond_2d
    if-eqz v1, :cond_53

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzapi:Lcom/google/android/gms/internal/zzee;

    if-eqz v3, :cond_53

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzgr;)Lcom/google/android/gms/ads/internal/formats/zzd;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzv;->zzaot:Lcom/google/android/gms/internal/zzas;

    invoke-direct {v2, v3, p0, v4, v1}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzgr;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/formats/zzd;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_4c} :catch_73

    :goto_4c
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzb;->zza(Lcom/google/android/gms/internal/zzjy;Lcom/google/android/gms/internal/zzjy;)Z

    move-result v0

    :goto_50
    return v0

    :cond_51
    move-object v1, v0

    goto :goto_23

    :cond_53
    if-eqz v0, :cond_7a

    :try_start_55
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzef;

    if-eqz v1, :cond_7a

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzgs;)Lcom/google/android/gms/ads/internal/formats/zze;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzv;->zzaot:Lcom/google/android/gms/internal/zzas;

    invoke-direct {v2, v3, p0, v4, v0}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzgs;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/formats/zze;->zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_72} :catch_73

    goto :goto_4c

    :catch_73
    move-exception v0

    const-string v1, "Failed to get native ad mapper"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c

    :cond_7a
    :try_start_7a
    const-string v0, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzh(I)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_83} :catch_73

    move v0, v2

    goto :goto_50

    :cond_85
    iget-object v1, p2, Lcom/google/android/gms/internal/zzjy;->zzciq:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zze;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzef;

    if-eqz v0, :cond_99

    iget-object v0, p2, Lcom/google/android/gms/internal/zzjy;->zzciq:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V

    goto :goto_4c

    :cond_99
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zzd;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapi:Lcom/google/android/gms/internal/zzee;

    if-eqz v0, :cond_ab

    iget-object v0, p2, Lcom/google/android/gms/internal/zzjy;->zzciq:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V

    goto :goto_4c

    :cond_ab
    instance-of v0, v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzf;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d1

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/formats/zzf;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzjy;Ljava/lang/String;)V

    goto/16 :goto_4c

    :cond_d1
    const-string v0, "No matching listener for retrieved native ad template."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zzq;->zzh(I)V

    move v0, v2

    goto/16 :goto_50
.end method

.method public zzb(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzeg;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapk:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .registers 3

    const-string v0, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapm:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzee;)V
    .registers 3

    const-string v0, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapi:Lcom/google/android/gms/internal/zzee;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzef;)V
    .registers 3

    const-string v0, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzef;

    return-void
.end method

.method public zzb(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapq:Ljava/util/List;

    return-void
.end method

.method public zzfb()Landroid/support/v4/util/SimpleArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzeh;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method public zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzeg;
    .registers 3

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapk:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeg;

    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.zzq.AnonymousClass1 (com.google.android.gms.ads.internal.zzq$1)
.class Lcom/google/android/gms/ads/internal/zzq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzjy$zza;Lcom/google/android/gms/internal/zzdk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzake:Lcom/google/android/gms/internal/zzjy$zza;

.field final synthetic zzamv:Lcom/google/android/gms/ads/internal/zzq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzjy$zza;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq$1;->zzamv:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzq$1;->zzake:Lcom/google/android/gms/internal/zzjy$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzq$1;->zzamv:Lcom/google/android/gms/ads/internal/zzq;

    new-instance v0, Lcom/google/android/gms/internal/zzjy;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq$1;->zzake:Lcom/google/android/gms/internal/zzjy$zza;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzjy;-><init>(Lcom/google/android/gms/internal/zzjy$zza;Lcom/google/android/gms/internal/zzll;Lcom/google/android/gms/internal/zzgd;Lcom/google/android/gms/internal/zzgo;Ljava/lang/String;Lcom/google/android/gms/internal/zzgg;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzb(Lcom/google/android/gms/internal/zzjy;)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.zzq.AnonymousClass2 (com.google.android.gms.ads.internal.zzq$2)
.class Lcom/google/android/gms/ads/internal/zzq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zzd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamv:Lcom/google/android/gms/ads/internal/zzq;

.field final synthetic zzamw:Lcom/google/android/gms/ads/internal/formats/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/formats/zzd;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq$2;->zzamv:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzq$2;->zzamw:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq$2;->zzamv:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapi:Lcom/google/android/gms/internal/zzee;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq$2;->zzamv:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapi:Lcom/google/android/gms/internal/zzee;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq$2;->zzamw:Lcom/google/android/gms/ads/internal/formats/zzd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzee;->zza(Lcom/google/android/gms/internal/zzdy;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

###### Class com.google.android.gms.ads.internal.zzq.AnonymousClass3 (com.google.android.gms.ads.internal.zzq$3)
.class Lcom/google/android/gms/ads/internal/zzq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zze;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamv:Lcom/google/android/gms/ads/internal/zzq;

.field final synthetic zzamx:Lcom/google/android/gms/ads/internal/formats/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/ads/internal/formats/zze;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq$3;->zzamv:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzq$3;->zzamx:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq$3;->zzamv:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzef;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq$3;->zzamv:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapj:Lcom/google/android/gms/internal/zzef;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq$3;->zzamx:Lcom/google/android/gms/ads/internal/formats/zze;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzef;->zza(Lcom/google/android/gms/internal/zzea;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "Could not call OnContentAdLoadedListener.onContentAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

###### Class com.google.android.gms.ads.internal.zzq.AnonymousClass4 (com.google.android.gms.ads.internal.zzq$4)
.class Lcom/google/android/gms/ads/internal/zzq$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzjy;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakq:Lcom/google/android/gms/internal/zzjy;

.field final synthetic zzamv:Lcom/google/android/gms/ads/internal/zzq;

.field final synthetic zzamy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzq;Ljava/lang/String;Lcom/google/android/gms/internal/zzjy;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzq$4;->zzamv:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzq$4;->zzamy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzq$4;->zzakq:Lcom/google/android/gms/internal/zzjy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzq$4;->zzamv:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->zzajs:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq$4;->zzamy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzq$4;->zzakq:Lcom/google/android/gms/internal/zzjy;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzjy;->zzciq:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzeh;->zza(Lcom/google/android/gms/internal/zzec;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string v1, "Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method
