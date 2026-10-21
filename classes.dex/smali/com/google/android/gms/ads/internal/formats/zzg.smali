###### Class com.google.android.gms.ads.internal.formats.zzg (com.google.android.gms.ads.internal.formats.zzg)
.class public Lcom/google/android/gms/ads/internal/formats/zzg;
.super Lcom/google/android/gms/ads/internal/formats/zzi;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private zzail:Ljava/lang/Object;

.field private zzbfz:Lcom/google/android/gms/internal/zzgr;

.field private zzbga:Lcom/google/android/gms/internal/zzgs;

.field private final zzbgb:Lcom/google/android/gms/ads/internal/zzq;

.field private zzbgc:Lcom/google/android/gms/ads/internal/formats/zzh;

.field private zzbgd:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)V
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/ads/internal/formats/zzi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzil;Lcom/google/android/gms/internal/zzas;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgd:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgb:Lcom/google/android/gms/ads/internal/zzq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzgr;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Lcom/google/android/gms/internal/zzgr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;Lcom/google/android/gms/internal/zzgs;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/ads/internal/formats/zzg;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbga:Lcom/google/android/gms/internal/zzgs;

    return-void
.end method


# virtual methods
.method public recordImpression()V
    .registers 4

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzq(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgc:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgc:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->recordImpression()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgb:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->recordImpression()V

    :cond_1a
    :goto_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_3a

    return-void

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Lcom/google/android/gms/internal/zzgr;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Lcom/google/android/gms/internal/zzgr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgr;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Lcom/google/android/gms/internal/zzgr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgr;->recordImpression()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgb:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->recordImpression()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_32} :catch_33
    .catchall {:try_start_1c .. :try_end_32} :catchall_3a

    goto :goto_1a

    :catch_33
    move-exception v0

    :try_start_34
    const-string v2, "Failed to call recordImpression"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbga:Lcom/google/android/gms/internal/zzgs;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbga:Lcom/google/android/gms/internal/zzgs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgs;->getOverrideImpressionRecording()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbga:Lcom/google/android/gms/internal/zzgs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgs;->recordImpression()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgb:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->recordImpression()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_53} :catch_33
    .catchall {:try_start_3d .. :try_end_53} :catchall_3a

    goto :goto_1a
.end method

.method public zza(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/zzb;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgd:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_2d

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Lcom/google/android/gms/internal/zzgr;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Lcom/google/android/gms/internal/zzgr;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgr;->zzl(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_26
    .catchall {:try_start_6 .. :try_end_13} :catchall_2d

    :cond_13
    :goto_13
    const/4 v0, 0x0

    :try_start_14
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgd:Z

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_2d

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbga:Lcom/google/android/gms/internal/zzgs;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbga:Lcom/google/android/gms/internal/zzgs;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgs;->zzl(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26
    .catchall {:try_start_18 .. :try_end_25} :catchall_2d

    goto :goto_13

    :catch_26
    move-exception v0

    :try_start_27
    const-string v2, "Failed to call prepareAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v6

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgc:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgc:Lcom/google/android/gms/ads/internal/formats/zzh;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgb:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->onAdClicked()V

    :cond_1b
    :goto_1b
    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_59

    return-void

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Lcom/google/android/gms/internal/zzgr;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Lcom/google/android/gms/internal/zzgr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgr;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Lcom/google/android/gms/internal/zzgr;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgr;->zzk(Lcom/google/android/gms/dynamic/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgb:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->onAdClicked()V

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbga:Lcom/google/android/gms/internal/zzgs;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbga:Lcom/google/android/gms/internal/zzgs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgs;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbga:Lcom/google/android/gms/internal/zzgs;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzgs;->zzk(Lcom/google/android/gms/dynamic/zzd;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgb:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzq;->onAdClicked()V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_51} :catch_52
    .catchall {:try_start_1d .. :try_end_51} :catchall_59

    goto :goto_1b

    :catch_52
    move-exception v0

    :try_start_53
    const-string v1, "Failed to call performClick"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    :catchall_59
    move-exception v0

    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public zzb(Landroid/view/View;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Lcom/google/android/gms/internal/zzgr;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbfz:Lcom/google/android/gms/internal/zzgr;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgr;->zzm(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_20
    .catchall {:try_start_3 .. :try_end_10} :catchall_27

    :cond_10
    :goto_10
    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_27

    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbga:Lcom/google/android/gms/internal/zzgs;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbga:Lcom/google/android/gms/internal/zzgs;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zzgs;->zzm(Lcom/google/android/gms/dynamic/zzd;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_20
    .catchall {:try_start_12 .. :try_end_1f} :catchall_27

    goto :goto_10

    :catch_20
    move-exception v0

    :try_start_21
    const-string v2, "Failed to call untrackView"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public zzc(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgc:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzlb()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgd:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzlc()Lcom/google/android/gms/ads/internal/formats/zzh;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzg;->zzbgc:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzld()Lcom/google/android/gms/internal/zzll;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
