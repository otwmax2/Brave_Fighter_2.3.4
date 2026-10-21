###### Class com.facebook.ads.InterstitialAd (com.facebook.ads.InterstitialAd)
.class public Lcom/facebook/ads/InterstitialAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/Ad;


# static fields
.field private static final a:Lcom/facebook/ads/internal/protocol/d;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private d:Lcom/facebook/ads/internal/DisplayAdController;

.field private e:Z

.field private f:Z

.field private g:Lcom/facebook/ads/InterstitialAdListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/protocol/d;->a:Lcom/facebook/ads/internal/protocol/d;

    sput-object v0, Lcom/facebook/ads/InterstitialAd;->a:Lcom/facebook/ads/internal/protocol/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/InterstitialAd;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->g:Lcom/facebook/ads/InterstitialAdListener;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/DisplayAdController;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    return-object p1
.end method

.method private a(Ljava/util/EnumSet;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAd;->e:Z

    iget-boolean v0, p0, Lcom/facebook/ads/InterstitialAd;->f:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InterstitialAd cannot be loaded while being displayed. Make sure your adapter calls adapterListener.onInterstitialDismissed()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    :cond_1c
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/InterstitialAd;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/ads/internal/protocol/g;->a(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/internal/protocol/f;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v5, Lcom/facebook/ads/internal/protocol/e;->b:Lcom/facebook/ads/internal/protocol/e;

    sget-object v6, Lcom/facebook/ads/InterstitialAd;->a:Lcom/facebook/ads/internal/protocol/d;

    move v8, v7

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/internal/DisplayAdController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/f;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/d;IZLjava/util/EnumSet;)V

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    new-instance v1, Lcom/facebook/ads/InterstitialAd$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/InterstitialAd$1;-><init>(Lcom/facebook/ads/InterstitialAd;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/a;)V

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/DisplayAdController;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/InterstitialAd;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/InterstitialAd;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/internal/DisplayAdController;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/InterstitialAd;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/InterstitialAd;->f:Z

    return p1
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    :cond_d
    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isAdLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/InterstitialAd;->e:Z

    return v0
.end method

.method public loadAd()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/InterstitialAd;->loadAd(Ljava/util/EnumSet;)V

    return-void
.end method

.method public loadAd(Ljava/util/EnumSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/InterstitialAd;->a(Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/InterstitialAd;->a(Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/util/EnumSet;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/InterstitialAd;->a(Ljava/util/EnumSet;Ljava/lang/String;)V

    return-void
.end method

.method public setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd;->g:Lcom/facebook/ads/InterstitialAdListener;

    return-void
.end method

.method public show()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/facebook/ads/InterstitialAd;->e:Z

    if-nez v2, :cond_12

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd;->g:Lcom/facebook/ads/InterstitialAdListener;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd;->g:Lcom/facebook/ads/InterstitialAdListener;

    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v2}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v2, p0, Lcom/facebook/ads/InterstitialAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/DisplayAdController;->b()V

    iput-boolean v1, p0, Lcom/facebook/ads/InterstitialAd;->f:Z

    iput-boolean v0, p0, Lcom/facebook/ads/InterstitialAd;->e:Z

    move v0, v1

    goto :goto_11
.end method

###### Class com.facebook.ads.InterstitialAd.AnonymousClass1 (com.facebook.ads.InterstitialAd$1)
.class Lcom/facebook/ads/InterstitialAd$1;
.super Lcom/facebook/ads/internal/adapters/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InterstitialAd;->a(Ljava/util/EnumSet;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InterstitialAd;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    :cond_13
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    :cond_19
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {p1}, Lcom/facebook/ads/AdError;->getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/InterstitialAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_17
    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    :cond_13
    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V

    :cond_13
    return-void
.end method

.method public e()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAd;->b(Lcom/facebook/ads/InterstitialAd;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->b(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->b(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->c()V

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/DisplayAdController;

    :cond_1d
    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-static {v0}, Lcom/facebook/ads/InterstitialAd;->a(Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InterstitialAd$1;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAdListener;->onInterstitialDismissed(Lcom/facebook/ads/Ad;)V

    :cond_30
    return-void
.end method
