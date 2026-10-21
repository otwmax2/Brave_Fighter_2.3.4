###### Class com.ironsource.adapters.ris.RISAdapter (com.ironsource.adapters.ris.RISAdapter)
.class public Lcom/ironsource/adapters/ris/RISAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "RISAdapter.java"

# interfaces
.implements Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;


# instance fields
.field private final AD_VISIBLE_EVENT_NAME:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

.field private hasAdAvailable:Z

.field private mConsent:Z

.field private mDidReportInitStatus:Z

.field private mDidSetConsent:Z

.field private mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    .line 35
    iput-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    .line 36
    iput-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    .line 38
    const-string v0, "controllerUrl"

    iput-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

    .line 39
    const-string v0, "debugMode"

    iput-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

    .line 40
    const-string v0, "controllerConfig"

    iput-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

    .line 42
    const-string v0, "impressions"

    iput-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->AD_VISIBLE_EVENT_NAME:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/ironsource/adapters/ris/RISAdapter;Lcom/ironsource/sdk/SSAPublisher;)Lcom/ironsource/sdk/SSAPublisher;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/ris/RISAdapter;
    .param p1, "x1"    # Lcom/ironsource/sdk/SSAPublisher;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ironsource/adapters/ris/RISAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/ris/RISAdapter;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidSetConsent:Z

    return v0
.end method

.method static synthetic access$200(Lcom/ironsource/adapters/ris/RISAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/ris/RISAdapter;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mConsent:Z

    return v0
.end method

.method static synthetic access$300(Lcom/ironsource/adapters/ris/RISAdapter;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/ris/RISAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ris/RISAdapter;->applyConsent(Z)V

    return-void
.end method

.method private applyConsent(Z)V
    .registers 6
    .param p1, "consent"    # Z

    .prologue
    .line 299
    iget-object v2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-nez v2, :cond_5

    .line 312
    :goto_4
    return-void

    .line 304
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 306
    .local v0, "consentParams":Lorg/json/JSONObject;
    :try_start_a
    const-string v2, "gdprConsentStatus"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v2, "demandSourceName"

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_1c} :catch_22

    .line 311
    :goto_1c
    iget-object v2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v2, v0}, Lcom/ironsource/sdk/SSAPublisher;->updateConsentInfo(Lorg/json/JSONObject;)V

    goto :goto_4

    .line 308
    :catch_22
    move-exception v1

    .line 309
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1c
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/ris/RISAdapter;
    .registers 2
    .param p0, "providerName"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lcom/ironsource/adapters/ris/RISAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/ris/RISAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 89
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 105
    const-string v0, "controllerUrl"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerUrl(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->isAdaptersDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 108
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    .line 115
    :goto_13
    const-string v0, "controllerConfig"

    const-string v1, ""

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setControllerConfig(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/ironsource/adapters/ris/RISAdapter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ironsource/adapters/ris/RISAdapter$1;-><init>(Lcom/ironsource/adapters/ris/RISAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    return-void

    .line 110
    :cond_27
    const-string v0, "debugMode"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->setDebugMode(I)V

    goto :goto_13
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 84
    return-void
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 3
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    return v0
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 3
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 6
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 138
    iget-boolean v1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    if-eqz v1, :cond_1c

    .line 139
    iget-object v1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 140
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    if-eqz v0, :cond_a

    .line 141
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_a

    .line 144
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    :cond_1c
    iget-object v1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 145
    .restart local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    if-eqz v0, :cond_22

    .line 146
    const-string v2, "No Ads to Load"

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_22

    .line 149
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    :cond_3a
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_9

    .line 76
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/SSAPublisher;->onPause(Landroid/app/Activity;)V

    .line 77
    :cond_9
    return-void
.end method

.method public onRVAdClicked()V
    .registers 4

    .prologue
    .line 265
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onRVAdClicked()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 267
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_26

    .line 268
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    .line 269
    :cond_26
    return-void
.end method

.method public onRVAdClosed()V
    .registers 4

    .prologue
    .line 239
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onRVAdClosed()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 241
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_26

    .line 242
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    .line 243
    :cond_26
    return-void
.end method

.method public onRVAdCredited(I)V
    .registers 5
    .param p1, "credits"    # I

    .prologue
    .line 231
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onRVAdCredited()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 233
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mRewardedInterstitial:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    if-eqz v0, :cond_26

    .line 234
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mRewardedInterstitial:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;->onInterstitialAdRewarded()V

    .line 235
    :cond_26
    return-void
.end method

.method public onRVAdOpened()V
    .registers 4

    .prologue
    .line 247
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onRVAdOpened()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 249
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_2b

    .line 250
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    .line 251
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    .line 253
    :cond_2b
    return-void
.end method

.method public onRVEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "extData"    # Lorg/json/JSONObject;

    .prologue
    .line 273
    if-eqz p2, :cond_4c

    .line 274
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onRISEventNotificationReceived: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 274
    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "impressions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_4c

    .line 279
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdVisible()V

    .line 282
    :cond_4c
    return-void
.end method

.method public onRVInitFail(Ljava/lang/String;)V
    .registers 7
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 204
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRVInitFail()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    .line 207
    iget-boolean v1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    if-nez v1, :cond_44

    .line 208
    iput-boolean v4, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    .line 209
    iget-object v1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 210
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    if-eqz v0, :cond_2c

    .line 211
    const-string v2, "Interstitial"

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_2c

    .line 214
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    :cond_44
    return-void
.end method

.method public onRVInitSuccess(Lcom/ironsource/sdk/data/AdUnitsReady;)V
    .registers 9
    .param p1, "adUnitsReady"    # Lcom/ironsource/sdk/data/AdUnitsReady;

    .prologue
    const/4 v4, 0x1

    .line 182
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":onRVInitSuccess()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5, v4}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 184
    const/4 v1, 0x0

    .line 186
    .local v1, "numOfAdUnits":I
    :try_start_1e
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsReady;->getNumOfAdUnits()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_25} :catch_49

    move-result v1

    .line 191
    :goto_26
    if-lez v1, :cond_56

    move v3, v4

    :goto_29
    iput-boolean v3, p0, Lcom/ironsource/adapters/ris/RISAdapter;->hasAdAvailable:Z

    .line 193
    iget-boolean v3, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    if-nez v3, :cond_58

    .line 194
    iput-boolean v4, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    .line 195
    iget-object v3, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 196
    .local v2, "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    if-eqz v2, :cond_37

    .line 197
    invoke-interface {v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_37

    .line 187
    .end local v2    # "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    :catch_49
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "onRVInitSuccess:parseInt()"

    invoke-virtual {v3, v5, v6, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    .line 191
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_56
    const/4 v3, 0x0

    goto :goto_29

    .line 200
    :cond_58
    return-void
.end method

.method public onRVNoMoreOffers()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 218
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRVNoMoreOffers()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 220
    iget-boolean v1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    if-nez v1, :cond_3b

    .line 221
    iput-boolean v4, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidReportInitStatus:Z

    .line 222
    iget-object v1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mAllInterstitialSmashes:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 223
    .local v0, "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    if-eqz v0, :cond_29

    .line 224
    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_29

    .line 227
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    :cond_3b
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;)V
    .registers 6
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 257
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onRVShowFail()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/ris/RISAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 259
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v0, :cond_2f

    .line 260
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x1fd

    const-string v3, "Show Failed"

    invoke-direct {v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 261
    :cond_2f
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/SSAPublisher;->onResume(Landroid/app/Activity;)V

    .line 71
    :cond_9
    return-void
.end method

.method protected setConsent(Z)V
    .registers 3
    .param p1, "consent"    # Z

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mConsent:Z

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mDidSetConsent:Z

    .line 294
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/ris/RISAdapter;->applyConsent(Z)V

    .line 295
    return-void
.end method

.method protected setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;Ljava/lang/String;)V
    .registers 7
    .param p1, "state"    # Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;
    .param p2, "adUnit"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v0, :cond_5a

    .line 286
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :setMediationState(RIS:(rewardedvideo)):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 287
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    const-string v1, "rewardedvideo"

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->getValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/sdk/SSAPublisher;->setMediationState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    :cond_5a
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 10
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 153
    iput-object p2, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .line 155
    iget-object v3, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    if-eqz v3, :cond_2d

    .line 156
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getInstance()Lcom/ironsource/mediationsdk/utils/SessionDepthManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/utils/SessionDepthManager;->getSessionDepth(I)I

    move-result v1

    .line 158
    .local v1, "sessionDepth":I
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .local v2, "showParams":Lorg/json/JSONObject;
    :try_start_14
    const-string v3, "demandSourceName"

    invoke-virtual {p0}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v3, "sessionDepth"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_22} :catch_28

    .line 166
    :goto_22
    iget-object v3, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mSSAPublisher:Lcom/ironsource/sdk/SSAPublisher;

    invoke-interface {v3, v2}, Lcom/ironsource/sdk/SSAPublisher;->showRewardedVideo(Lorg/json/JSONObject;)V

    .line 171
    .end local v1    # "sessionDepth":I
    .end local v2    # "showParams":Lorg/json/JSONObject;
    :cond_27
    :goto_27
    return-void

    .line 162
    .restart local v1    # "sessionDepth":I
    .restart local v2    # "showParams":Lorg/json/JSONObject;
    :catch_28
    move-exception v0

    .line 163
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_22

    .line 168
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "sessionDepth":I
    .end local v2    # "showParams":Lorg/json/JSONObject;
    :cond_2d
    iget-object v3, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    if-eqz v3, :cond_27

    .line 169
    iget-object v3, p0, Lcom/ironsource/adapters/ris/RISAdapter;->mActiveInterstitialSmash:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x1fd

    const-string v6, "Please call init before calling showRewardedVideo"

    invoke-direct {v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_27
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 3
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 99
    return-void
.end method

###### Class com.ironsource.adapters.ris.RISAdapter.AnonymousClass1 (com.ironsource.adapters.ris.RISAdapter$1)
.class Lcom/ironsource/adapters/ris/RISAdapter$1;
.super Ljava/lang/Object;
.source "RISAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/ris/RISAdapter;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/ris/RISAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/ris/RISAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/ironsource/adapters/ris/RISAdapter;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$appKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/ironsource/sdk/SSAFactory;->getPublisherInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/SSAPublisher;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ris/RISAdapter;->access$002(Lcom/ironsource/adapters/ris/RISAdapter;Lcom/ironsource/sdk/SSAPublisher;)Lcom/ironsource/sdk/SSAPublisher;

    .line 123
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/ris/RISAdapter;->access$100(Lcom/ironsource/adapters/ris/RISAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 124
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    invoke-static {v1}, Lcom/ironsource/adapters/ris/RISAdapter;->access$200(Lcom/ironsource/adapters/ris/RISAdapter;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/ironsource/adapters/ris/RISAdapter;->access$300(Lcom/ironsource/adapters/ris/RISAdapter;Z)V

    .line 127
    :cond_1e
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/sdk/SSAFactory;->getPublisherInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/SSAPublisher;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$appKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    invoke-virtual {v3}, Lcom/ironsource/adapters/ris/RISAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    invoke-interface/range {v0 .. v5}, Lcom/ironsource/sdk/SSAPublisher;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    .line 131
    :goto_38
    return-void

    .line 128
    :catch_39
    move-exception v6

    .line 129
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/ironsource/adapters/ris/RISAdapter$1;->this$0:Lcom/ironsource/adapters/ris/RISAdapter;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adapters/ris/RISAdapter;->onRVInitFail(Ljava/lang/String;)V

    goto :goto_38
.end method
