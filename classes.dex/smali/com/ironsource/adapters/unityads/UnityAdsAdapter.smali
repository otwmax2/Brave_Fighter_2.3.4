###### Class com.ironsource.adapters.unityads.UnityAdsAdapter (com.ironsource.adapters.unityads.UnityAdsAdapter)
.class Lcom/ironsource/adapters/unityads/UnityAdsAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "UnityAdsAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsListener;


# static fields
.field private static final VERSION:Ljava/lang/String; = "4.1.1"


# instance fields
.field private final GAME_ID:Ljava/lang/String;

.field private final PLACEMENT_ID:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mDidCallLoad:Z

.field private mDidInit:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    .line 30
    iput-boolean v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mDidInit:Z

    .line 31
    iput-boolean v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mDidCallLoad:Z

    .line 33
    const-string v0, "sourceId"

    iput-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->GAME_ID:Ljava/lang/String;

    .line 34
    const-string v0, "zoneId"

    iput-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->PLACEMENT_ID:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    new-instance v0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v1, "UnityAds"

    const-string v2, "4.1.1"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .local v0, "ret":Lcom/ironsource/mediationsdk/IntegrationData;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.unity3d.ads.adunit.AdUnitActivity"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.unity3d.ads.adunit.AdUnitSoftwareActivity"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    .line 47
    return-object v0
.end method

.method private declared-synchronized initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "game_id"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 73
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mDidInit:Z

    .line 74
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    .line 76
    new-instance v1, Lcom/unity3d/ads/metadata/MediationMetaData;

    invoke-direct {v1, p1}, Lcom/unity3d/ads/metadata/MediationMetaData;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "mediationMetaData":Lcom/unity3d/ads/metadata/MediationMetaData;
    const-string v2, "IronSource"

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/metadata/MediationMetaData;->setName(Ljava/lang/String;)V

    .line 78
    const-string v2, "4.1.1"

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/metadata/MediationMetaData;->setVersion(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Lcom/unity3d/ads/metadata/MediationMetaData;->commit()V

    .line 81
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/unity3d/ads/UnityAds;->setDebugMode(Z)V

    .line 83
    invoke-static {p1, p2, p0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;)V
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_2b

    .line 85
    const/4 v0, 0x0

    .line 88
    .local v0, "isDebugEnabled":Z
    :try_start_20
    invoke-virtual {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->isAdaptersDebugEnabled()Z
    :try_end_23
    .catch Ljava/lang/NoSuchMethodError; {:try_start_20 .. :try_end_23} :catch_29
    .catchall {:try_start_20 .. :try_end_23} :catchall_2b

    move-result v0

    .line 93
    :goto_24
    :try_start_24
    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->setDebugMode(Z)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    .line 94
    monitor-exit p0

    return-void

    .line 89
    :catch_29
    move-exception v2

    goto :goto_24

    .line 73
    .end local v0    # "isDebugEnabled":Z
    .end local v1    # "mediationMetaData":Lcom/unity3d/ads/metadata/MediationMetaData;
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/unityads/UnityAdsAdapter;
    .registers 2
    .param p0, "providerName"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 120
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const-string v0, "4.1.1"

    return-object v0
.end method

.method public declared-synchronized initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    const-string v0, "sourceId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 150
    if-eqz p5, :cond_1a

    .line 151
    const-string v0, "Missing params"

    const-string v1, "Interstitial"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_48

    .line 163
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 155
    :cond_1c
    :try_start_1c
    const-string v0, "zoneId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    if-eqz p5, :cond_35

    .line 156
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "zoneId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_35
    iget-boolean v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mDidInit:Z

    if-nez v0, :cond_42

    .line 159
    const-string v0, "sourceId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_42
    if-eqz p5, :cond_1a

    .line 162
    invoke-interface {p5}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V
    :try_end_47
    .catchall {:try_start_1c .. :try_end_47} :catchall_48

    goto :goto_1a

    .line 149
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    const-string v0, "sourceId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 101
    if-eqz p5, :cond_13

    .line 102
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3c

    .line 115
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 106
    :cond_15
    :try_start_15
    const-string v0, "zoneId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    if-eqz p5, :cond_2e

    .line 107
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "zoneId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_2e
    iget-boolean v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mDidInit:Z

    if-nez v0, :cond_3f

    .line 110
    const-string v0, "sourceId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_3c

    goto :goto_13

    .line 100
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_3f
    if-eqz p5, :cond_13

    .line 113
    :try_start_41
    const-string v0, "zoneId"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p5, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_3c

    goto :goto_13
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 3
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 186
    const-string v0, "zoneId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 3
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 142
    const-string v0, "zoneId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 4
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 167
    const-string v0, "zoneId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 168
    if-eqz p2, :cond_11

    .line 169
    invoke-interface {p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    .line 172
    :cond_11
    :goto_11
    return-void

    .line 171
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mDidCallLoad:Z

    goto :goto_11
.end method

.method public onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .registers 7
    .param p1, "unityAdsError"    # Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnityAdsError(errorType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 245
    return-void
.end method

.method public onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .registers 7
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "finishState"    # Lcom/unity3d/ads/UnityAds$FinishState;

    .prologue
    .line 224
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnityAdsFinish(placementId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", finishState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 227
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 228
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 230
    sget-object v0, Lcom/unity3d/ads/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/UnityAds$FinishState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 231
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdEnded()V

    .line 232
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    .line 235
    :cond_68
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    .line 239
    :cond_73
    :goto_73
    return-void

    .line 236
    :cond_74
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 237
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    goto :goto_73
.end method

.method public onUnityAdsReady(Ljava/lang/String;)V
    .registers 7
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 193
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnityAdsReady(placementId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 196
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 197
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0, v4}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 205
    :cond_3c
    :goto_3c
    return-void

    .line 198
    :cond_3d
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 199
    iget-boolean v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mDidCallLoad:Z

    if-eqz v0, :cond_4c

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mDidCallLoad:Z

    .line 202
    :cond_4c
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_3c
.end method

.method public onUnityAdsStart(Ljava/lang/String;)V
    .registers 6
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnityAdsStart(placementId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 212
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 213
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    .line 214
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdStarted()V

    .line 220
    :cond_47
    :goto_47
    return-void

    .line 215
    :cond_48
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 216
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    .line 217
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    goto :goto_47
.end method

.method protected setConsent(Z)V
    .registers 5
    .param p1, "consent"    # Z

    .prologue
    .line 62
    iget-object v1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_5

    .line 69
    :goto_4
    return-void

    .line 65
    :cond_5
    new-instance v0, Lcom/unity3d/ads/metadata/MetaData;

    iget-object v1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/metadata/MetaData;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "gdprMetaData":Lcom/unity3d/ads/metadata/MetaData;
    const-string v1, "gdpr.consent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/ads/metadata/MetaData;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v0}, Lcom/unity3d/ads/metadata/MetaData;->commit()V

    goto :goto_4
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 176
    const-string v0, "zoneId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 177
    iget-object v0, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    const-string v1, "zoneId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 182
    :cond_17
    :goto_17
    return-void

    .line 179
    :cond_18
    if-eqz p2, :cond_17

    .line 180
    const-string v0, "Interstitial"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_17
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 6
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 124
    const-string v1, "zoneId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 125
    invoke-virtual {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 126
    new-instance v0, Lcom/unity3d/ads/metadata/PlayerMetaData;

    iget-object v1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/metadata/PlayerMetaData;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "playerMetaData":Lcom/unity3d/ads/metadata/PlayerMetaData;
    invoke-virtual {p0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->getDynamicUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/metadata/PlayerMetaData;->setServerId(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Lcom/unity3d/ads/metadata/PlayerMetaData;->commit()V

    .line 131
    .end local v0    # "playerMetaData":Lcom/unity3d/ads/metadata/PlayerMetaData;
    :cond_27
    iget-object v1, p0, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->mActivity:Landroid/app/Activity;

    const-string v2, "zoneId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 138
    :cond_32
    :goto_32
    return-void

    .line 133
    :cond_33
    if-eqz p2, :cond_32

    .line 134
    const-string v1, "Rewarded Video"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 135
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_32
.end method
