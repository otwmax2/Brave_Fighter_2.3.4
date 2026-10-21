###### Class com.google.android.gms.ads.internal.client.zzae (com.google.android.gms.ads.internal.client.zzae)
.class public Lcom/google/android/gms/ads/internal/client/zzae;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final zzahz:Lcom/google/android/gms/ads/internal/client/zzh;

.field private zzakp:Z

.field private zzall:Ljava/lang/String;

.field private zzati:Lcom/google/android/gms/ads/internal/client/zza;

.field private zzatj:Lcom/google/android/gms/ads/AdListener;

.field private zzauv:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private zzauw:[Lcom/google/android/gms/ads/AdSize;

.field private final zzavz:Lcom/google/android/gms/internal/zzgm;

.field private final zzawa:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzawb:Lcom/google/android/gms/ads/VideoController;

.field final zzawc:Lcom/google/android/gms/ads/internal/client/zzo;

.field private zzawd:Lcom/google/android/gms/ads/Correlator;

.field private zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

.field private zzawf:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

.field private zzawg:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private zzawh:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private zzawi:Lcom/google/android/gms/ads/VideoOptions;

.field private zzawj:Ljava/lang/String;

.field private zzawk:Landroid/view/ViewGroup;

.field private zzawl:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzih()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .registers 10

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzih()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Lcom/google/android/gms/ads/internal/client/zzu;Z)V
    .registers 12

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzgm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzgm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzavz:Lcom/google/android/gms/internal/zzgm;

    new-instance v0, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {v0}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawb:Lcom/google/android/gms/ads/VideoController;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzae$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzae$1;-><init>(Lcom/google/android/gms/ads/internal/client/zzae;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawc:Lcom/google/android/gms/ads/internal/client/zzo;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawk:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzahz:Lcom/google/android/gms/ads/internal/client/zzh;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawa:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawl:Z

    if-eqz p2, :cond_58

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_2e
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzk;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/ads/internal/client/zzk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/client/zzk;->zzl(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauw:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzk;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzall:Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_3f} :catch_59

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauw:[Lcom/google/android/gms/ads/AdSize;

    aget-object v2, v2, v3

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawl:Z

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    const-string v2, "Ads by Google"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)V

    :cond_58
    :goto_58
    return-void

    :catch_59
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Lcom/google/android/gms/ads/internal/client/zzu;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZZ)V
    .registers 11

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzih()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzih()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zzae;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/ads/internal/client/zzh;Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/client/zzae;)Lcom/google/android/gms/ads/VideoController;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawb:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzk(Z)V

    return-object v0
.end method

.method private static zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzk(Z)V

    return-object v0
.end method

.method private zzjl()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zzdn()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawk:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_8

    :catch_15
    move-exception v0

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method


# virtual methods
.method public destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->destroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzatj:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zzdo()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzij()Lcom/google/android/gms/ads/AdSize;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauw:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauw:[Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_10

    :cond_21
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauw:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzall:Ljava/lang/String;

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauv:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawf:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->getMediationAdapterClassName()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawb:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawi:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public isLoading()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->isLoading()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    const-string v1, "Failed to check if ad is loading."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public pause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->pause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public recordManualImpression()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawa:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zzdq()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_9

    :catch_14
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public resume()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzu;->resume()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzatj:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawc:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzo;->zza(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauw:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzae;->zza([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzall:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzall:Ljava/lang/String;

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauv:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzj;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzw;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    :catch_15
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public setCorrelator(Lcom/google/android/gms/ads/Correlator;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawd:Lcom/google/android/gms/ads/Correlator;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawd:Lcom/google/android/gms/ads/Correlator;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_d
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzy;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawd:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/Correlator;->zzde()Lcom/google/android/gms/ads/internal/client/zzn;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_d

    :catch_18
    move-exception v0

    const-string v1, "Failed to set correlator."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawh:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawf:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_1f

    new-instance v0, Lcom/google/android/gms/internal/zzhx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzhx;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    :goto_1b
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzhs;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1b

    :catch_21
    move-exception v0

    const-string v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public setManualImpressionsEnabled(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzakp:Z

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzakp:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->setManualImpressionsEnabled(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string v1, "Failed to set manual impressions."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/zzdp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdp;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzdo;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    :catch_15
    move-exception v0

    const-string v1, "Failed to set the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawf:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InAppPurchaseListener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawh:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawj:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_21

    new-instance v0, Lcom/google/android/gms/internal/zzib;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzib;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_1d
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzhw;Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_23

    :cond_20
    :goto_20
    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_1d

    :catch_23
    move-exception v0

    const-string v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method public setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawi:Lcom/google/android/gms/ads/VideoOptions;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-nez p1, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    new-instance v0, Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_b

    :catch_15
    move-exception v0

    const-string v1, "Failed to set video options."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zza;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzati:Lcom/google/android/gms/ads/internal/client/zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzb;-><init>(Lcom/google/android/gms/ads/internal/client/zza;)V

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzp;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    :catch_15
    move-exception v0

    const-string v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzad;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzae;->zzjm()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzahz:Lcom/google/android/gms/ads/internal/client/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawk:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/ads/internal/client/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzad;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzavz:Lcom/google/android/gms/internal/zzgm;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzad;->zzjg()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzgm;->zzh(Ljava/util/Map;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24
.end method

.method public varargs zza([Lcom/google/android/gms/ads/AdSize;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauw:[Lcom/google/android/gms/ads/AdSize;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawk:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauw:[Lcom/google/android/gms/ads/AdSize;

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawl:Z

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_19} :catch_1f

    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawk:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_1f
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Z
    .registers 4

    const-string v0, "search_v2"

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zzjk()Lcom/google/android/gms/ads/internal/client/zzab;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zzdr()Lcom/google/android/gms/ads/internal/client/zzab;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_5

    :catch_d
    move-exception v1

    const-string v2, "Failed to retrieve VideoController."

    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method zzjm()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauw:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzall:Ljava/lang/String;

    if-nez v0, :cond_14

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzae;->zzjn()Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawc:Lcom/google/android/gms/ads/internal/client/zzo;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzc;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzq;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzati:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzati:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzb;-><init>(Lcom/google/android/gms/ads/internal/client/zza;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzp;)V

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauv:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzj;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauv:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzj;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzw;)V

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawf:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/internal/zzhx;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawf:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzhx;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzhs;)V

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawh:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/internal/zzib;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawh:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzib;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawj:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzhw;Ljava/lang/String;)V

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/internal/zzdp;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawg:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzdp;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/internal/zzdo;)V

    :cond_78
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawd:Lcom/google/android/gms/ads/Correlator;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawd:Lcom/google/android/gms/ads/Correlator;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/Correlator;->zzde()Lcom/google/android/gms/ads/internal/client/zzn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/zzy;)V

    :cond_87
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawi:Lcom/google/android/gms/ads/VideoOptions;

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    new-instance v1, Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawi:Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->zza(Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;)V

    :cond_97
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawe:Lcom/google/android/gms/ads/internal/client/zzu;

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzakp:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzu;->setManualImpressionsEnabled(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzae;->zzjl()V

    return-void
.end method

.method protected zzjn()Lcom/google/android/gms/ads/internal/client/zzu;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawk:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzauw:[Lcom/google/android/gms/ads/AdSize;

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzawl:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;Z)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/client/zzae;->zzb(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzix()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzall:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    :goto_1e
    return-object v0

    :cond_1f
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzix()Lcom/google/android/gms/ads/internal/client/zzl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzall:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/client/zzae;->zzavz:Lcom/google/android/gms/internal/zzgm;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/google/android/gms/ads/internal/client/zzl;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgn;)Lcom/google/android/gms/ads/internal/client/zzu;

    move-result-object v0

    goto :goto_1e
.end method

###### Class com.google.android.gms.ads.internal.client.zzae.AnonymousClass1 (com.google.android.gms.ads.internal.client.zzae$1)
.class Lcom/google/android/gms/ads/internal/client/zzae$1;
.super Lcom/google/android/gms/ads/internal/client/zzo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/client/zzae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzawm:Lcom/google/android/gms/ads/internal/client/zzae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzae;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzae$1;->zzawm:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzo;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae$1;->zzawm:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Lcom/google/android/gms/ads/internal/client/zzae;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae$1;->zzawm:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/client/zzae;->zzjk()Lcom/google/android/gms/ads/internal/client/zzab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/ads/internal/client/zzab;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzae$1;->zzawm:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzae;->zza(Lcom/google/android/gms/ads/internal/client/zzae;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzae$1;->zzawm:Lcom/google/android/gms/ads/internal/client/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/client/zzae;->zzjk()Lcom/google/android/gms/ads/internal/client/zzab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/ads/internal/client/zzab;)V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/client/zzo;->onAdLoaded()V

    return-void
.end method
