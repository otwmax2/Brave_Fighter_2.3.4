###### Class com.ironsource.mediationsdk.RewardedVideoSmash (com.ironsource.mediationsdk.RewardedVideoSmash)
.class public Lcom/ironsource/mediationsdk/RewardedVideoSmash;
.super Lcom/ironsource/mediationsdk/AbstractSmash;
.source "RewardedVideoSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashApi;


# instance fields
.field private final REQUEST_URL_KEY:Ljava/lang/String;

.field private mRequestUrl:Ljava/lang/String;

.field private mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

.field private mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

.field private mTimeout:I


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V
    .registers 6
    .param p1, "adapterConfigs"    # Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .param p2, "timeout"    # I

    .prologue
    const/16 v2, 0x63

    .line 31
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    .line 28
    const-string v0, "requestUrl"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->REQUEST_URL_KEY:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    const-string v1, "maxAdsPerIteration"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mMaxAdsPerIteration:I

    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    const-string v1, "maxAdsPerSession"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mMaxAdsPerSession:I

    .line 35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    const-string v1, "maxAdsPerDay"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mMaxAdsPerDay:I

    .line 36
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    const-string v1, "requestUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRequestUrl:Ljava/lang/String;

    .line 37
    iput p2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mTimeout:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    return-object v0
.end method


# virtual methods
.method completeIteration()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mIterationShowCounter:I

    .line 45
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isRewardedVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    :goto_b
    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 46
    return-void

    .line 45
    :cond_f
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    goto :goto_b
.end method

.method public fetchRewardedVideo()V
    .registers 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_2a

    .line 96
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":fetchRewardedVideo()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 97
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->fetchRewardedVideo(Lorg/json/JSONObject;)V

    .line 99
    :cond_2a
    return-void
.end method

.method protected getAdUnitString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    const-string v0, "rewardedvideo"

    return-object v0
.end method

.method getRequestUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->startInitTimer()V

    .line 86
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_36

    .line 87
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->addRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    .line 88
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":initRewardedVideo()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 89
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    .line 91
    :cond_36
    return-void
.end method

.method public isRewardedVideoAvailable()Z
    .registers 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_2c

    .line 113
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":isRewardedVideoAvailable()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable(Lorg/json/JSONObject;)Z

    move-result v0

    .line 117
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public onRewardedVideoAdClicked()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_9

    .line 182
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 183
    :cond_9
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_9

    .line 142
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdClosed(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 144
    :cond_9
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->fetchRewardedVideo()V

    .line 145
    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdEnded(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 171
    :cond_9
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_9

    .line 136
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdOpened(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 137
    :cond_9
    return-void
.end method

.method public onRewardedVideoAdRewarded()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_9

    .line 176
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 177
    :cond_9
    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 131
    :cond_9
    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_9

    .line 164
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdStarted(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 165
    :cond_9
    return-void
.end method

.method public onRewardedVideoAdVisible()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_9

    .line 188
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdVisible(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 189
    :cond_9
    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .registers 4
    .param p1, "available"    # Z

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->stopInitTimer()V

    .line 151
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->isMediationAvailable()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 152
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_19

    :cond_11
    if-nez p1, :cond_29

    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v0, v1, :cond_29

    .line 153
    :cond_19
    if-eqz p1, :cond_2a

    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    :goto_1d
    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 155
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_29

    .line 156
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 159
    :cond_29
    return-void

    .line 153
    :cond_2a
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    goto :goto_1d
.end method

.method public setRewardedVideoManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    .line 123
    return-void
.end method

.method public showRewardedVideo()V
    .registers 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_2d

    .line 104
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":showRewardedVideo()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 105
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->preShow()V

    .line 106
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mRewardedVideoAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    .line 108
    :cond_2d
    return-void
.end method

.method startInitTimer()V
    .registers 7

    .prologue
    .line 51
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;-><init>(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mInitTimerTask:Ljava/util/TimerTask;

    .line 62
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 64
    .local v1, "timer":Ljava/util/Timer;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mInitTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_1a

    .line 65
    iget-object v2, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mInitTimerTask:Ljava/util/TimerTask;

    iget v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mTimeout:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 69
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_1a
    :goto_1a
    return-void

    .line 66
    :catch_1b
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method startLoadTimer()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

###### Class com.ironsource.mediationsdk.RewardedVideoSmash.AnonymousClass1 (com.ironsource.mediationsdk.RewardedVideoSmash$1)
.class Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;
.super Ljava/util/TimerTask;
.source "RewardedVideoSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/RewardedVideoSmash;->startInitTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$000(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 55
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 57
    iget-object v0, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->access$000(Lcom/ironsource/mediationsdk/RewardedVideoSmash;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/RewardedVideoSmash$1;->this$0:Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    invoke-interface {v0, v4, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAvailabilityChanged(ZLcom/ironsource/mediationsdk/RewardedVideoSmash;)V

    .line 59
    :cond_3d
    return-void
.end method
