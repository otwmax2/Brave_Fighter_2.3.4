###### Class com.ironsource.mediationsdk.IronSourceBannerLayout (com.ironsource.mediationsdk.IronSourceBannerLayout)
.class public Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
.super Landroid/widget/FrameLayout;
.source "IronSourceBannerLayout.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerLayoutListener;


# instance fields
.field private isAdLoaded:Z

.field private isDestroyed:Z

.field private isImpressionReported:Z

.field private mActivity:Landroid/app/Activity;

.field private mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

.field private mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

.field private mBannerView:Landroid/view/View;

.field private mCurrentlyDisplayedSmash:Lcom/ironsource/mediationsdk/BannerSmash;

.field private mIsBannerDisplayed:Z

.field private mPlacementName:Ljava/lang/String;

.field private mSize:Lcom/ironsource/mediationsdk/EBannerSize;

.field private mSmash:Lcom/ironsource/mediationsdk/BannerSmash;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;
    .param p3, "bannerManager"    # Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mCurrentlyDisplayedSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    .line 35
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isImpressionReported:Z

    .line 36
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isAdLoaded:Z

    .line 38
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed:Z

    .line 39
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mIsBannerDisplayed:Z

    .line 43
    iput-object p3, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .line 44
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    .line 45
    if-nez p2, :cond_17

    .line 46
    sget-object p2, Lcom/ironsource/mediationsdk/EBannerSize;->BANNER:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 48
    :cond_17
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSize:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isAdLoaded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->reportFirstBannerImpression()V

    return-void
.end method

.method private declared-synchronized reportFirstBannerImpression()V
    .registers 3

    .prologue
    .line 328
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isImpressionReported:Z

    if-nez v0, :cond_1e

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isImpressionReported:Z

    .line 330
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    if-eqz v0, :cond_1e

    .line 333
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-interface {v0, p0, v1}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onFirstBannerImpression(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/BannerSmash;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 336
    :cond_1e
    monitor-exit p0

    return-void

    .line 328
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetBannerImpression()V
    .registers 2

    .prologue
    .line 323
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isImpressionReported:Z

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isAdLoaded:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 325
    monitor-exit p0

    return-void

    .line 323
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/BannerSmash;)Z
    .registers 4
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public addViewWithFrameLayoutParams(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4
    .param p1, "adView"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->removeAllViews()V

    .line 340
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 342
    return-void
.end method

.method public bindSmash(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 4
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    .line 53
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->resetBannerImpression()V

    .line 55
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;-><init>(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 70
    return-void
.end method

.method public clearSmash()V
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mCurrentlyDisplayedSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    if-eqz v0, :cond_9

    .line 346
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mCurrentlyDisplayedSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/BannerSmash;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 347
    :cond_9
    return-void
.end method

.method protected destroyBanner()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed:Z

    .line 89
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    if-eqz v0, :cond_d

    .line 90
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/BannerSmash;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 92
    :cond_d
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->resetBannerImpression()V

    .line 94
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    .line 95
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    .line 96
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    .line 97
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSize:Lcom/ironsource/mediationsdk/EBannerSize;

    .line 98
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    .line 100
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBannerListener()Lcom/ironsource/mediationsdk/sdk/BannerListener;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    return-object v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/ironsource/mediationsdk/EBannerSize;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSize:Lcom/ironsource/mediationsdk/EBannerSize;

    return-object v0
.end method

.method public isDestroyed()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed:Z

    return v0
.end method

.method public onBannerAdClicked(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 11
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    const/4 v8, 0x0

    .line 240
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/BannerSmash;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 264
    :cond_7
    :goto_7
    return-void

    .line 245
    :cond_8
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBannerAdClicked() | internal | adapter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 246
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 249
    invoke-static {p1, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 251
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_2c
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 252
    .local v0, "bannerSizeData":I
    const-string v4, "bannerAdSize"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_39} :catch_5d

    .line 257
    .end local v0    # "bannerSizeData":I
    :goto_39
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x198

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 258
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 260
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v4, :cond_7

    .line 261
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "onBannerAdClicked()"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 262
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    invoke-interface {v4}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdClicked()V

    goto :goto_7

    .line 253
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_5d
    move-exception v2

    .line 254
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public onBannerAdLeftApplication(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 6
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/BannerSmash;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 315
    :cond_6
    :goto_6
    return-void

    .line 307
    :cond_7
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBannerAdLeftApplication() | internal | adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 308
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 307
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 311
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_6

    .line 312
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onBannerAdLeftApplication()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 313
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdLeftApplication()V

    goto :goto_6
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 13
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 192
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mIsBannerDisplayed:Z

    if-eqz v4, :cond_c

    .line 193
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v4, p1, p2}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdReloadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 236
    :cond_b
    :goto_b
    return-void

    .line 197
    :cond_c
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/BannerSmash;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 202
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBannerAdLoadFailed() | internal | adapter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 203
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 202
    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 207
    iput-object v9, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    .line 209
    :try_start_34
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    if-eqz v4, :cond_40

    .line 210
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->removeView(Landroid/view/View;)V

    .line 211
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerView:Landroid/view/View;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_40} :catch_7c

    .line 217
    :cond_40
    :goto_40
    invoke-virtual {p2, p0}, Lcom/ironsource/mediationsdk/BannerSmash;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 219
    invoke-static {p2, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 221
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_47
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 222
    .local v0, "bannerSizeData":I
    const-string v4, "status"

    const-string v5, "false"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v4, "errorCode"

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    const-string v4, "bannerAdSize"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_64} :catch_81

    .line 229
    .end local v0    # "bannerSizeData":I
    :goto_64
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x197

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 230
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 232
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v4, :cond_b

    .line 233
    iget-object v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v4, p1, p2}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;)V

    goto :goto_b

    .line 213
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_7c
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40

    .line 225
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_81
    move-exception v2

    .line 226
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_64
.end method

.method public onBannerAdLoaded(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 7
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    const/4 v4, 0x1

    .line 160
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mCurrentlyDisplayedSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mCurrentlyDisplayedSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    if-eq v0, p1, :cond_e

    .line 161
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mCurrentlyDisplayedSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/BannerSmash;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 163
    :cond_e
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mCurrentlyDisplayedSmash:Lcom/ironsource/mediationsdk/BannerSmash;

    .line 166
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/BannerSmash;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isAdLoaded:Z

    if-eqz v0, :cond_1b

    .line 188
    :cond_1a
    :goto_1a
    return-void

    .line 170
    :cond_1b
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBannerAdLoaded() | internal | adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 171
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 174
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isAdLoaded:Z

    .line 176
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 177
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->reportFirstBannerImpression()V

    .line 179
    :cond_47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_50

    .line 180
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdLoaded(Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 182
    :cond_50
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mIsBannerDisplayed:Z

    if-nez v0, :cond_68

    .line 183
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onBannerAdLoaded()"

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 184
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdLoaded()V

    .line 187
    :cond_68
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mIsBannerDisplayed:Z

    goto :goto_1a
.end method

.method public onBannerAdReloadFailed(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 4
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_a

    .line 83
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdReloadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 84
    :cond_a
    return-void
.end method

.method public onBannerAdReloaded(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 3
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    if-eqz v0, :cond_9

    .line 75
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerManager:Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;->onBannerAdReloaded(Lcom/ironsource/mediationsdk/BannerSmash;)V

    .line 77
    :cond_9
    return-void
.end method

.method public onBannerAdScreenDismissed(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 6
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/BannerSmash;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 298
    :cond_6
    :goto_6
    return-void

    .line 290
    :cond_7
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBannerAdScreenDismissed() | internal | adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 290
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 294
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_6

    .line 295
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onBannerAdScreenDismissed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 296
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdScreenDismissed()V

    goto :goto_6
.end method

.method public onBannerAdScreenPresented(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 6
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->shoudIgnoreThisCallback(Lcom/ironsource/mediationsdk/BannerSmash;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 281
    :cond_6
    :goto_6
    return-void

    .line 273
    :cond_7
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBannerAdScreenPresented() | internal | adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 273
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 277
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    if-eqz v0, :cond_6

    .line 278
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v2, "onBannerAdScreenPresented()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 279
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdScreenPresented()V

    goto :goto_6
.end method

.method public removeBannerListener()V
    .registers 5

    .prologue
    .line 147
    const-string v0, "removeBannerListener()"

    .line 148
    .local v0, "logMessage":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    .line 150
    return-void
.end method

.method public setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/BannerListener;

    .prologue
    .line 138
    const-string v0, "setBannerListener()"

    .line 139
    .local v0, "logMessage":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 140
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mBannerListener:Lcom/ironsource/mediationsdk/sdk/BannerListener;

    .line 141
    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .registers 2
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->mPlacementName:Ljava/lang/String;

    .line 124
    return-void
.end method

###### Class com.ironsource.mediationsdk.IronSourceBannerLayout.AnonymousClass1 (com.ironsource.mediationsdk.IronSourceBannerLayout$1)
.class Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;
.super Ljava/lang/Object;
.source "IronSourceBannerLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->bindSmash(Lcom/ironsource/mediationsdk/BannerSmash;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_25

    .line 60
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 64
    :goto_17
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$000(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 65
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->access$100(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 68
    :cond_24
    return-void

    .line 62
    :cond_25
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout$1;->this$0:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_17
.end method
