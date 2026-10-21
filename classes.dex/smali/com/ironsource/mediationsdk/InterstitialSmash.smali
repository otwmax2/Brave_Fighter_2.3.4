###### Class com.ironsource.mediationsdk.InterstitialSmash (com.ironsource.mediationsdk.InterstitialSmash)
.class public Lcom/ironsource/mediationsdk/InterstitialSmash;
.super Lcom/ironsource/mediationsdk/AbstractSmash;
.source "InterstitialSmash.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialSmashApi;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialSmashApi;


# instance fields
.field private mInterstitialAdapterConfigs:Lorg/json/JSONObject;

.field private mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

.field private mRewardedInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

.field private mTimeout:I


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;I)V
    .registers 6
    .param p1, "adapterConfigs"    # Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .param p2, "timeout"    # I

    .prologue
    const/16 v2, 0x63

    .line 34
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractSmash;-><init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    .line 35
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    .line 36
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    const-string v1, "maxAdsPerIteration"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMaxAdsPerIteration:I

    .line 37
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    const-string v1, "maxAdsPerSession"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMaxAdsPerSession:I

    .line 38
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    const-string v1, "maxAdsPerDay"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMaxAdsPerDay:I

    .line 39
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mIsMultipleInstances:Z

    .line 40
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getSubProviderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mSpId:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mTimeout:I

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/InterstitialSmash;)Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/InterstitialSmash;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    return-object v0
.end method


# virtual methods
.method completeIteration()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mIterationShowCounter:I

    .line 49
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 50
    return-void
.end method

.method protected getAdUnitString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    const-string v0, "interstitial"

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->startInitTimer()V

    .line 106
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_3f

    .line 107
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->addInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    .line 108
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mRewardedInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    if-eqz v0, :cond_15

    .line 109
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setRewardedInterstitialListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialListener;)V

    .line 110
    :cond_15
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":initInterstitial()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 111
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    .line 113
    :cond_3f
    return-void
.end method

.method public isInterstitialReady()Z
    .registers 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_2c

    .line 136
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":isInterstitialReady()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isInterstitialReady(Lorg/json/JSONObject;)Z

    move-result v0

    .line 140
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public loadInterstitial()V
    .registers 5

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->startLoadTimer()V

    .line 118
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_2d

    .line 119
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":loadInterstitial()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 120
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    .line 122
    :cond_2d
    return-void
.end method

.method public onInterstitialAdClicked()V
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_9

    .line 218
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdClicked(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 219
    :cond_9
    return-void
.end method

.method public onInterstitialAdClosed()V
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_9

    .line 200
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdClosed(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 201
    :cond_9
    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->stopLoadTimer()V

    .line 187
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_12

    .line 188
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 189
    :cond_12
    return-void
.end method

.method public onInterstitialAdOpened()V
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdOpened(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 195
    :cond_9
    return-void
.end method

.method public onInterstitialAdReady()V
    .registers 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->stopLoadTimer()V

    .line 180
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_12

    .line 181
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdReady(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 182
    :cond_12
    return-void
.end method

.method public onInterstitialAdRewarded()V
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mRewardedInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    if-eqz v0, :cond_9

    .line 230
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mRewardedInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;->onInterstitialAdRewarded(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 231
    :cond_9
    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_9

    .line 212
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 213
    :cond_9
    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_9

    .line 206
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdShowSucceeded(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 207
    :cond_9
    return-void
.end method

.method public onInterstitialAdVisible()V
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdVisible(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 225
    :cond_9
    return-void
.end method

.method public onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->stopInitTimer()V

    .line 169
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_17

    .line 170
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 172
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_17

    .line 173
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p1, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 175
    :cond_17
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .registers 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->stopInitTimer()V

    .line 158
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_17

    .line 159
    sget-object v0, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 161
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_17

    .line 162
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitSuccess(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 164
    :cond_17
    return-void
.end method

.method public setInterstitialManagerListener(Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    .line 146
    return-void
.end method

.method public setRewardedInterstitialManagerListener(Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mRewardedInterstitialManagerListener:Lcom/ironsource/mediationsdk/sdk/RewardedInterstitialManagerListener;

    .line 151
    return-void
.end method

.method public showInterstitial()V
    .registers 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    if-eqz v0, :cond_2d

    .line 127
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":showInterstitial()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 128
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->preShow()V

    .line 129
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mAdapter:Lcom/ironsource/mediationsdk/AbstractAdapter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInterstitialAdapterConfigs:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    .line 131
    :cond_2d
    return-void
.end method

.method startInitTimer()V
    .registers 7

    .prologue
    .line 55
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/InterstitialSmash$1;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/InterstitialSmash$1;-><init>(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInitTimerTask:Ljava/util/TimerTask;

    .line 65
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 67
    .local v1, "timer":Ljava/util/Timer;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInitTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_1a

    .line 68
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mInitTimerTask:Ljava/util/TimerTask;

    iget v3, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mTimeout:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 72
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_1a
    :goto_1a
    return-void

    .line 69
    :catch_1b
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method startLoadTimer()V
    .registers 7

    .prologue
    .line 77
    :try_start_0
    new-instance v2, Lcom/ironsource/mediationsdk/InterstitialSmash$2;

    invoke-direct {v2, p0}, Lcom/ironsource/mediationsdk/InterstitialSmash$2;-><init>(Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    iput-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoadTimerTask:Ljava/util/TimerTask;

    .line 87
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 89
    .local v1, "timer":Ljava/util/Timer;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoadTimerTask:Ljava/util/TimerTask;

    if-eqz v2, :cond_1a

    .line 90
    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mLoadTimerTask:Ljava/util/TimerTask;

    iget v3, p0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mTimeout:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 94
    .end local v1    # "timer":Ljava/util/Timer;
    :cond_1a
    :goto_1a
    return-void

    .line 91
    :catch_1b
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

###### Class com.ironsource.mediationsdk.InterstitialSmash.AnonymousClass1 (com.ironsource.mediationsdk.InterstitialSmash$1)
.class Lcom/ironsource/mediationsdk/InterstitialSmash$1;
.super Ljava/util/TimerTask;
.source "InterstitialSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/InterstitialSmash;->startInitTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/InterstitialSmash;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$1;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$1;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$1;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->access$000(Lcom/ironsource/mediationsdk/InterstitialSmash;)Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 59
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$1;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 60
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$1;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->access$000(Lcom/ironsource/mediationsdk/InterstitialSmash;)Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    move-result-object v0

    const-string v1, "Timeout"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$1;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 62
    :cond_2a
    return-void
.end method

###### Class com.ironsource.mediationsdk.InterstitialSmash.AnonymousClass2 (com.ironsource.mediationsdk.InterstitialSmash$2)
.class Lcom/ironsource/mediationsdk/InterstitialSmash$2;
.super Ljava/util/TimerTask;
.source "InterstitialSmash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/InterstitialSmash;->startLoadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/InterstitialSmash;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/InterstitialSmash;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$2;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$2;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    iget-object v0, v0, Lcom/ironsource/mediationsdk/InterstitialSmash;->mMediationState:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$2;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->access$000(Lcom/ironsource/mediationsdk/InterstitialSmash;)Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 81
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$2;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    sget-object v1, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 82
    iget-object v0, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$2;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/InterstitialSmash;->access$000(Lcom/ironsource/mediationsdk/InterstitialSmash;)Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;

    move-result-object v0

    const-string v1, "Timeout"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/InterstitialSmash$2;->this$0:Lcom/ironsource/mediationsdk/InterstitialSmash;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/InterstitialSmash;)V

    .line 84
    :cond_28
    return-void
.end method
