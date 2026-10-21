###### Class com.ironsource.sdk.agent.IronSourceAdsPublisherAgent (com.ironsource.sdk.agent.IronSourceAdsPublisherAgent)
.class public final Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Lcom/ironsource/sdk/SSAPublisher;
.implements Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;
.implements Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;
.implements Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "IronSourceAdsPublisherAgent"

.field private static mutableContextWrapper:Landroid/content/MutableContextWrapper;

.field private static sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;


# instance fields
.field private mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

.field private session:Lcom/ironsource/sdk/data/SSASession;

.field private wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method private constructor <init>(Landroid/app/Activity;I)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "debugMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    .line 59
    new-instance v0, Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-direct {v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    .line 60
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getDebugMode()I

    move-result v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/Logger;->enableLogging(I)V

    .line 62
    const-string v0, "IronSourceAdsPublisherAgent"

    const-string v1, "C\'tor"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    .line 66
    new-instance v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->startSession(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    .param p1, "x1"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    return-object p1
.end method

.method static synthetic access$100()Landroid/content/MutableContextWrapper;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/DemandSourceManager;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    return-object v0
.end method

.method private endSession()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    if-eqz v0, :cond_15

    .line 142
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSASession;->endSession()V

    .line 143
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->addSession(Lcom/ironsource/sdk/data/SSASession;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    .line 146
    :cond_15
    return-void
.end method

.method private getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    .registers 3
    .param p1, "demandSource"    # Lcom/ironsource/sdk/data/DemandSource;

    .prologue
    .line 123
    if-nez p1, :cond_4

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getListener()Lcom/ironsource/sdk/listeners/OnAdProductListener;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    goto :goto_3
.end method

.method private getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    .registers 3
    .param p1, "demandSource"    # Lcom/ironsource/sdk/data/DemandSource;

    .prologue
    .line 116
    if-nez p1, :cond_4

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/DemandSource;->getListener()Lcom/ironsource/sdk/listeners/OnAdProductListener;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    goto :goto_3
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    const-class v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;I)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;I)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "debugMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const-class v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    monitor-enter v1

    :try_start_3
    const-string v0, "IronSourceAdsPublisherAgent"

    const-string v2, "getInstance()"

    invoke-static {v0, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    if-nez v0, :cond_19

    .line 95
    new-instance v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .line 104
    :goto_15
    sget-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1f

    monitor-exit v1

    return-object v0

    .line 101
    :cond_19
    :try_start_19
    sget-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    goto :goto_15

    .line 92
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startSession(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    new-instance v0, Lcom/ironsource/sdk/data/SSASession;

    sget-object v1, Lcom/ironsource/sdk/data/SSASession$SessionType;->launched:Lcom/ironsource/sdk/data/SSASession$SessionType;

    invoke-direct {v0, p1, v1}, Lcom/ironsource/sdk/data/SSASession;-><init>(Landroid/content/Context;Lcom/ironsource/sdk/data/SSASession$SessionType;)V

    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    .line 134
    return-void
.end method


# virtual methods
.method public getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;
    .registers 4
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 494
    const/4 v0, 0x0

    .line 496
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    goto :goto_7
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .registers 5
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    .line 186
    return-void
.end method

.method public getWebViewController()Lcom/ironsource/sdk/controller/IronSourceWebView;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    return-object v0
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnInterstitialListener;)V
    .registers 9
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "demandSourceName"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p4, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1, v2, p3, p4, p5}, Lcom/ironsource/sdk/controller/DemandSourceManager;->createDemandSource(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 199
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1, p1, p2, v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    .line 200
    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .registers 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    .line 176
    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;)V
    .registers 9
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "demandSourceName"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    .local p4, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1, v2, p3, p4, p5}, Lcom/ironsource/sdk/controller/DemandSourceManager;->createDemandSource(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 160
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1, p1, p2, v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V

    .line 161
    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .registers 3
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadInterstitial(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "loadParams"    # Lorg/json/JSONObject;

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "demandSourceName":Ljava/lang/String;
    if-eqz p1, :cond_9

    .line 206
    const-string v1, "demandSourceName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_9
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadInterstitial(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onAdProductClick(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 388
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_13

    .line 389
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v2, :cond_14

    .line 390
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 391
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_13

    .line 392
    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdClicked()V

    .line 403
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    :cond_13
    :goto_13
    return-void

    .line 394
    :cond_14
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v2, :cond_13

    .line 395
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    .line 396
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    if-eqz v1, :cond_13

    .line 397
    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialClick()V

    goto :goto_13
.end method

.method public onAdProductClose(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 359
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_13

    .line 360
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v2, :cond_14

    .line 361
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 362
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_13

    .line 363
    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdClosed()V

    .line 372
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    :cond_13
    :goto_13
    return-void

    .line 365
    :cond_14
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v2, :cond_13

    .line 366
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    .line 367
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    if-eqz v1, :cond_13

    .line 368
    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialClose()V

    goto :goto_13
.end method

.method public onAdProductEventNotificationReceived(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "extData"    # Lorg/json/JSONObject;

    .prologue
    .line 407
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 408
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_18

    .line 410
    :try_start_6
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v3, :cond_19

    .line 411
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v2

    .line 412
    .local v2, "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    if-eqz v2, :cond_18

    .line 413
    const-string v3, "demandSourceName"

    invoke-virtual {p4, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    invoke-interface {v2, p3, p4}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 427
    .end local v2    # "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    :cond_18
    :goto_18
    return-void

    .line 416
    :cond_19
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v3, :cond_18

    .line 417
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object v2

    .line 418
    .local v2, "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    if-eqz v2, :cond_18

    .line 419
    const-string v3, "demandSourceName"

    invoke-virtual {p4, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    invoke-interface {v2, p3, p4}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_2b} :catch_2c

    goto :goto_18

    .line 423
    .end local v2    # "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    :catch_2c
    move-exception v1

    .line 424
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_18
.end method

.method public onAdProductInitFailed(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 317
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_17

    .line 318
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 320
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v2, :cond_18

    .line 321
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 322
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_17

    .line 323
    invoke-interface {v1, p3}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVInitFail(Ljava/lang/String;)V

    .line 332
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    :cond_17
    :goto_17
    return-void

    .line 325
    :cond_18
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v2, :cond_17

    .line 326
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    .line 327
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    if-eqz v1, :cond_17

    .line 328
    invoke-interface {v1, p3}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialInitFailed(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public onAdProductInitSuccess(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Lcom/ironsource/sdk/data/AdUnitsReady;)V
    .registers 7
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;
    .param p3, "adUnitsReady"    # Lcom/ironsource/sdk/data/AdUnitsReady;

    .prologue
    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 297
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_17

    .line 298
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 300
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v2, :cond_18

    .line 301
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 302
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_17

    .line 303
    invoke-interface {v1, p3}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVInitSuccess(Lcom/ironsource/sdk/data/AdUnitsReady;)V

    .line 312
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    :cond_17
    :goto_17
    return-void

    .line 305
    :cond_18
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v2, :cond_17

    .line 306
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    .line 307
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    if-eqz v1, :cond_17

    .line 308
    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialInitSuccess()V

    goto :goto_17
.end method

.method public onAdProductOpen(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 432
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_13

    .line 433
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v2, :cond_14

    .line 434
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    .line 435
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    if-eqz v1, :cond_13

    .line 436
    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialOpen()V

    .line 446
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    :cond_13
    :goto_13
    return-void

    .line 438
    :cond_14
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v2, :cond_13

    .line 439
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 440
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_13

    .line 441
    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdOpened()V

    goto :goto_13
.end method

.method public onInterstitialLoadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "demandSourceName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 461
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p0, v2, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 462
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_11

    .line 463
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    .line 464
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    if-eqz v1, :cond_11

    .line 465
    invoke-interface {v1, p2}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialLoadFailed(Ljava/lang/String;)V

    .line 468
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    :cond_11
    return-void
.end method

.method public onInterstitialLoadSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 450
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p0, v2, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 451
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_11

    .line 452
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    .line 453
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    if-eqz v1, :cond_11

    .line 454
    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialLoadSuccess()V

    .line 457
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    :cond_11
    return-void
.end method

.method public onInterstitialShowFailed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "demandSourceName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 483
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p0, v2, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 484
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_11

    .line 485
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    .line 486
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    if-eqz v1, :cond_11

    .line 487
    invoke-interface {v1, p2}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialShowFailed(Ljava/lang/String;)V

    .line 490
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    :cond_11
    return-void
.end method

.method public onInterstitialShowSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 472
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p0, v2, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 473
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_11

    .line 474
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsISListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    move-result-object v1

    .line 475
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    if-eqz v1, :cond_11

    .line 476
    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialShowSuccess()V

    .line 479
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    :cond_11
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 243
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->enterBackground()V

    .line 247
    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 249
    invoke-direct {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->endSession()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    .line 255
    :goto_e
    return-void

    .line 250
    :catch_f
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_e
.end method

.method public onRVAdCredited(Ljava/lang/String;I)V
    .registers 6
    .param p1, "demandSourceName"    # Ljava/lang/String;
    .param p2, "credits"    # I

    .prologue
    .line 347
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p0, v2, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 348
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_11

    .line 349
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 350
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_11

    .line 351
    invoke-interface {v1, p2}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVAdCredited(I)V

    .line 354
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    :cond_11
    return-void
.end method

.method public onRVNoMoreOffers(Ljava/lang/String;)V
    .registers 5
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 336
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p0, v2, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 337
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_11

    .line 338
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 339
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_11

    .line 340
    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVNoMoreOffers()V

    .line 343
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    :cond_11
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "demandSourceName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 376
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {p0, v2, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 377
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_11

    .line 378
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getAdProductListenerAsRVListener(Lcom/ironsource/sdk/data/DemandSource;)Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 379
    .local v1, "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_11

    .line 380
    invoke-interface {v1, p2}, Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;->onRVShowFail(Ljava/lang/String;)V

    .line 383
    .end local v1    # "listener":Lcom/ironsource/sdk/listeners/OnRewardedVideoListener;
    :cond_11
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 227
    sget-object v0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 229
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->enterForeground()V

    .line 233
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 235
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    if-nez v0, :cond_16

    .line 236
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->resumeSession(Landroid/content/Context;)V

    .line 238
    :cond_16
    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 260
    :try_start_1
    const-string v2, "IronSourceAdsPublisherAgent"

    const-string v3, "release()"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->release()V

    .line 263
    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 266
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 268
    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->destroy()V

    .line 269
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_3e

    .line 287
    :goto_26
    sput-object v4, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->sInstance:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .line 289
    invoke-direct {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->endSession()V

    .line 290
    return-void

    .line 272
    :cond_2c
    :try_start_2c
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 273
    .local v0, "uiHandler":Landroid/os/Handler;
    new-instance v1, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;-><init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)V

    .line 280
    .local v1, "uiRunnable":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3d} :catch_3e

    goto :goto_26

    .line 282
    .end local v0    # "uiHandler":Landroid/os/Handler;
    .end local v1    # "uiRunnable":Ljava/lang/Runnable;
    :catch_3e
    move-exception v2

    goto :goto_26
.end method

.method public resumeSession(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    new-instance v0, Lcom/ironsource/sdk/data/SSASession;

    sget-object v1, Lcom/ironsource/sdk/data/SSASession$SessionType;->backFromBG:Lcom/ironsource/sdk/data/SSASession$SessionType;

    invoke-direct {v0, p1, v1}, Lcom/ironsource/sdk/data/SSASession;-><init>(Landroid/content/Context;Lcom/ironsource/sdk/data/SSASession$SessionType;)V

    iput-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->session:Lcom/ironsource/sdk/data/SSASession;

    .line 138
    return-void
.end method

.method public setMediationState(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "productType"    # Ljava/lang/String;
    .param p2, "demandSourceName"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 501
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 502
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->getProductType(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v1

    .line 503
    .local v1, "product":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    if-eqz v1, :cond_1d

    .line 504
    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v2, v1, p2}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 505
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_1d

    .line 506
    invoke-virtual {v0, p3}, Lcom/ironsource/sdk/data/DemandSource;->setMediationState(I)V

    .line 510
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    .end local v1    # "product":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :cond_1d
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "showParams"    # Lorg/json/JSONObject;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->showInterstitial(Lorg/json/JSONObject;)V

    .line 220
    return-void
.end method

.method public showOfferWall(Ljava/util/Map;)V
    .registers 3
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
    .line 179
    .local p1, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->showOfferWall(Ljava/util/Map;)V

    .line 180
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "showParams"    # Lorg/json/JSONObject;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->showRewardedVideo(Lorg/json/JSONObject;)V

    .line 166
    return-void
.end method

.method public updateConsentInfo(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "consentParams"    # Lorg/json/JSONObject;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    if-eqz v0, :cond_9

    .line 514
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->wvc:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->updateConsentInfo(Lorg/json/JSONObject;)V

    .line 516
    :cond_9
    return-void
.end method

###### Class com.ironsource.sdk.agent.IronSourceAdsPublisherAgent.AnonymousClass1 (com.ironsource.sdk.agent.IronSourceAdsPublisherAgent$1)
.class Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;-><init>(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    iput-object p2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$100()Landroid/content/MutableContextWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v3}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$200(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;-><init>(Landroid/content/Context;Lcom/ironsource/sdk/controller/DemandSourceManager;)V

    invoke-static {v0, v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$002(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    .line 69
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    new-instance v1, Lcom/ironsource/sdk/controller/MOATJSAdapter;

    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/sdk/controller/MOATJSAdapter;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->addMoatJSInterface(Lcom/ironsource/sdk/controller/MOATJSAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    new-instance v1, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    iget-object v2, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->addPermissionsJSInterface(Lcom/ironsource/sdk/controller/PermissionsJSAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getDebugMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setDebugMode(I)V

    .line 73
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$1;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadController()V

    .line 74
    return-void
.end method

###### Class com.ironsource.sdk.agent.IronSourceAdsPublisherAgent.AnonymousClass2 (com.ironsource.sdk.agent.IronSourceAdsPublisherAgent$2)
.class Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;
.super Ljava/lang/Object;
.source "IronSourceAdsPublisherAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->release(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    invoke-static {v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$000(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->destroy()V

    .line 277
    iget-object v0, p0, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent$2;->this$0:Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->access$002(Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView;

    .line 278
    return-void
.end method
