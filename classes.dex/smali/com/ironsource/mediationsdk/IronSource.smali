###### Class com.ironsource.mediationsdk.IronSource (com.ironsource.mediationsdk.IronSource)
.class public abstract Lcom/ironsource/mediationsdk/IronSource;
.super Ljava/lang/Object;
.source "IronSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRewardedVideoServerParameters()V
    .registers 1

    .prologue
    .line 301
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->clearRewardedVideoServerParameters()V

    .line 302
    return-void
.end method

.method public static createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;

    .prologue
    .line 527
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    return-object v0
.end method

.method public static destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 2
    .param p0, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 554
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 555
    return-void
.end method

.method public static getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 2
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInterstitialPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v0

    return-object v0
.end method

.method public static getOfferwallCredits()V
    .registers 1

    .prologue
    .line 500
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getOfferwallCredits()V

    .line 501
    return-void
.end method

.method public static getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 2
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getRewardedVideoPlacementInfo(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    check-cast v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {p0, p1, v0}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 66
    return-void
.end method

.method public static varargs init(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "adUnits"    # [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    .line 76
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->init(Landroid/app/Activity;Ljava/lang/String;Z[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 77
    return-void
.end method

.method public static varargs initISDemandOnly(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "adUnits"    # [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .prologue
    .line 88
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->initISDemandOnly(Landroid/app/Activity;Ljava/lang/String;[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    .line 89
    return-void
.end method

.method public static isBannerPlacementCapped(Ljava/lang/String;)Z
    .registers 2
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isBannerPlacementCapped(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z
    .registers 2
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isISDemandOnlyInterstitialReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z
    .registers 2
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isISDemandOnlyRewardedVideoAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInterstitialPlacementCapped(Ljava/lang/String;)Z
    .registers 2
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialPlacementCapped(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInterstitialReady()Z
    .registers 1

    .prologue
    .line 382
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isInterstitialReady()Z

    move-result v0

    return v0
.end method

.method public static isOfferwallAvailable()Z
    .registers 1

    .prologue
    .line 493
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isOfferwallAvailable()Z

    move-result v0

    return v0
.end method

.method public static isRewardedVideoAvailable()Z
    .registers 1

    .prologue
    .line 260
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoAvailable()Z

    move-result v0

    return v0
.end method

.method public static isRewardedVideoPlacementCapped(Ljava/lang/String;)Z
    .registers 2
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->isRewardedVideoPlacementCapped(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 2
    .param p0, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 536
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 537
    return-void
.end method

.method public static loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .registers 3
    .param p0, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public static loadISDemandOnlyInterstitial(Ljava/lang/String;)V
    .registers 2
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadISDemandOnlyInterstitial(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public static loadInterstitial()V
    .registers 1

    .prologue
    .line 357
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->loadInterstitial()V

    .line 358
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->onPause(Landroid/app/Activity;)V

    .line 107
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->onResume(Landroid/app/Activity;)V

    .line 98
    return-void
.end method

.method public static removeInterstitialListener()V
    .registers 1

    .prologue
    .line 165
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->removeInterstitialListener()V

    .line 166
    return-void
.end method

.method public static removeOfferwallListener()V
    .registers 1

    .prologue
    .line 172
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->removeOfferwallListener()V

    .line 173
    return-void
.end method

.method public static removeRewardedVideoListener()V
    .registers 1

    .prologue
    .line 158
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->removeRewardedVideoListener()V

    .line 159
    return-void
.end method

.method public static setAdaptersDebug(Z)V
    .registers 2
    .param p0, "enabled"    # Z

    .prologue
    .line 231
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setAdaptersDebug(Z)V

    .line 232
    return-void
.end method

.method public static declared-synchronized setAge(I)V
    .registers 3
    .param p0, "age"    # I

    .prologue
    .line 115
    const-class v1, Lcom/ironsource/mediationsdk/IronSource;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setAge(I)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 116
    monitor-exit v1

    return-void

    .line 115
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setConsent(Z)V
    .registers 2
    .param p0, "consent"    # Z

    .prologue
    .line 574
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setConsent(Z)V

    .line 575
    return-void
.end method

.method public static setDynamicUserId(Ljava/lang/String;)Z
    .registers 2
    .param p0, "dynamicUserId"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setDynamicUserId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized setGender(Ljava/lang/String;)V
    .registers 3
    .param p0, "gender"    # Ljava/lang/String;

    .prologue
    .line 124
    const-class v1, Lcom/ironsource/mediationsdk/IronSource;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setGender(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 125
    monitor-exit v1

    return-void

    .line 124
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;

    .prologue
    .line 463
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setISDemandOnlyInterstitialListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyInterstitialListener;)V

    .line 464
    return-void
.end method

.method public static setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;

    .prologue
    .line 346
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setISDemandOnlyRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/ISDemandOnlyRewardedVideoListener;)V

    .line 347
    return-void
.end method

.method public static setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    .prologue
    .line 394
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 395
    return-void
.end method

.method public static setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/logger/LogListener;

    .prologue
    .line 222
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 223
    return-void
.end method

.method public static setMediationSegment(Ljava/lang/String;)V
    .registers 2
    .param p0, "segment"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setMediationSegment(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static setMediationType(Ljava/lang/String;)V
    .registers 2
    .param p0, "mediationType"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setMediationType(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    .prologue
    .line 512
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setOfferwallListener(Lcom/ironsource/mediationsdk/sdk/OfferwallListener;)V

    .line 513
    return-void
.end method

.method public static setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    .prologue
    .line 398
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V

    .line 399
    return-void
.end method

.method public static setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    .line 272
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 273
    return-void
.end method

.method public static setRewardedVideoServerParameters(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setRewardedVideoServerParameters(Ljava/util/Map;)V

    .line 294
    return-void
.end method

.method public static setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 2
    .param p0, "segment"    # Lcom/ironsource/mediationsdk/IronSourceSegment;

    .prologue
    .line 137
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setSegment(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    .line 138
    return-void
.end method

.method public static setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/ironsource/mediationsdk/sdk/SegmentListener;

    .prologue
    .line 570
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setSegmentListener(Lcom/ironsource/mediationsdk/sdk/SegmentListener;)V

    .line 571
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .registers 2
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->setIronSourceUserId(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "track"    # Z

    .prologue
    .line 213
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->shouldTrackNetworkState(Landroid/content/Context;Z)V

    .line 214
    return-void
.end method

.method public static showISDemandOnlyInterstitial(Ljava/lang/String;)V
    .registers 2
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showISDemandOnlyInterstitial(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public static showISDemandOnlyInterstitial(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->showISDemandOnlyInterstitial(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public static showISDemandOnlyRewardedVideo(Ljava/lang/String;)V
    .registers 2
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showISDemandOnlyRewardedVideo(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public static showISDemandOnlyRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ironsource/mediationsdk/IronSourceObject;->showISDemandOnlyRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public static showInterstitial()V
    .registers 1

    .prologue
    .line 364
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showInterstitial()V

    .line 365
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .registers 2
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showInterstitial(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public static showOfferwall()V
    .registers 1

    .prologue
    .line 474
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showOfferwall()V

    .line 475
    return-void
.end method

.method public static showOfferwall(Ljava/lang/String;)V
    .registers 2
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 483
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showOfferwall(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public static showRewardedVideo()V
    .registers 1

    .prologue
    .line 242
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showRewardedVideo()V

    .line 243
    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .registers 2
    .param p0, "placementName"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/IronSourceObject;->showRewardedVideo(Ljava/lang/String;)V

    .line 252
    return-void
.end method

###### Class com.ironsource.mediationsdk.IronSource.AD_UNIT (com.ironsource.mediationsdk.IronSource$AD_UNIT)
.class public final enum Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
.super Ljava/lang/Enum;
.source "IronSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/IronSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AD_UNIT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field public static final enum BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field public static final enum INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field public static final enum OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field public static final enum REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v1, "REWARDED_VIDEO"

    const-string v2, "rewardedVideo"

    invoke-direct {v0, v1, v3, v2}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 29
    new-instance v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v1, "INTERSTITIAL"

    const-string v2, "interstitial"

    invoke-direct {v0, v1, v4, v2}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 30
    new-instance v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v1, "OFFERWALL"

    const-string v2, "offerwall"

    invoke-direct {v0, v1, v5, v2}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 31
    new-instance v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v1, "BANNER"

    const-string v2, "banner"

    invoke-direct {v0, v1, v6, v2}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->$VALUES:[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->mValue:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->$VALUES:[Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->mValue:Ljava/lang/String;

    return-object v0
.end method
