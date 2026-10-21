###### Class com.facebook.ads.RewardedVideoAd (com.facebook.ads.RewardedVideoAd)
.class public Lcom/facebook/ads/RewardedVideoAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/Ad;


# static fields
.field public static final UNSET_VIDEO_DURATION:I = -0x1

.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private d:Lcom/facebook/ads/internal/DisplayAdController;

.field private e:Z

.field private f:Lcom/facebook/ads/RewardedVideoAdListener;

.field private g:Lcom/facebook/ads/RewardData;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/RewardedVideoAd;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/RewardedVideoAd;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/RewardedVideoAd;->h:I

    iput-object p1, p0, Lcom/facebook/ads/RewardedVideoAd;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/RewardedVideoAd;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/RewardedVideoAd;I)I
    .registers 2

    iput p1, p0, Lcom/facebook/ads/RewardedVideoAd;->h:I

    return p1
.end method

.method static synthetic a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->f:Lcom/facebook/ads/RewardedVideoAdListener;

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 6

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/RewardedVideoAd;->b(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :cond_3
    :goto_3
    return-void

    :catch_4
    move-exception v0

    sget-object v1, Lcom/facebook/ads/RewardedVideoAd;->a:Ljava/lang/String;

    const-string v2, "Error loading rewarded video ad"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->f:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->f:Lcom/facebook/ads/RewardedVideoAdListener;

    sget-object v1, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_3
.end method

.method private final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    :cond_c
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/RewardedVideoAd;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/RewardedVideoAd;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardData;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->g:Lcom/facebook/ads/RewardData;

    return-object v0
.end method

.method private b(Ljava/lang/String;Z)V
    .registers 12

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Z)V

    iput-boolean v0, p0, Lcom/facebook/ads/RewardedVideoAd;->e:Z

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/RewardedVideoAd;->c:Ljava/lang/String;

    sget-object v3, Lcom/facebook/ads/internal/protocol/f;->k:Lcom/facebook/ads/internal/protocol/f;

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v5, Lcom/facebook/ads/internal/protocol/e;->b:Lcom/facebook/ads/internal/protocol/e;

    sget-object v6, Lcom/facebook/ads/internal/protocol/d;->a:Lcom/facebook/ads/internal/protocol/d;

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/internal/DisplayAdController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/f;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/d;IZ)V

    iput-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/DisplayAdController;->a(Z)V

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    new-instance v1, Lcom/facebook/ads/RewardedVideoAd$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/RewardedVideoAd$1;-><init>(Lcom/facebook/ads/RewardedVideoAd;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/a;)V

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Z)V

    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDuration()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/RewardedVideoAd;->h:I

    return v0
.end method

.method public isAdLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/RewardedVideoAd;->e:Z

    return v0
.end method

.method public loadAd()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/RewardedVideoAd;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadAd(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/RewardedVideoAd;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/RewardedVideoAd;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/RewardedVideoAd;->f:Lcom/facebook/ads/RewardedVideoAdListener;

    return-void
.end method

.method public setRewardData(Lcom/facebook/ads/RewardData;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/RewardedVideoAd;->g:Lcom/facebook/ads/RewardData;

    iget-boolean v0, p0, Lcom/facebook/ads/RewardedVideoAd;->e:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/RewardData;)V

    :cond_b
    return-void
.end method

.method public show()Z
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/RewardedVideoAd;->show(I)Z

    move-result v0

    return v0
.end method

.method public show(I)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/facebook/ads/RewardedVideoAd;->e:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd;->f:Lcom/facebook/ads/RewardedVideoAdListener;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd;->f:Lcom/facebook/ads/RewardedVideoAdListener;

    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v2}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v1, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(I)V

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/DisplayAdController;->b()V

    iput-boolean v0, p0, Lcom/facebook/ads/RewardedVideoAd;->e:Z

    const/4 v0, 0x1

    goto :goto_10
.end method

###### Class com.facebook.ads.RewardedVideoAd.AnonymousClass1 (com.facebook.ads.RewardedVideoAd$1)
.class Lcom/facebook/ads/RewardedVideoAd$1;
.super Lcom/facebook/ads/internal/adapters/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/RewardedVideoAd;->b(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/RewardedVideoAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/RewardedVideoAd;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    :cond_13
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .registers 4

    check-cast p1, Lcom/facebook/ads/internal/adapters/ae;

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->b(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardData;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->b(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/adapters/ae;->a(Lcom/facebook/ads/RewardData;)V

    :cond_13
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/ae;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;I)I

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    :cond_35
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {p1}, Lcom/facebook/ads/AdError;->getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_17
    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/RewardedVideoAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    :cond_13
    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoClosed()V

    :cond_11
    return-void
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerFailed()V

    :cond_15
    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerSuccess()V

    :cond_15
    return-void
.end method
