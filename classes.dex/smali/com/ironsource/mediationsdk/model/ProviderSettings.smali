###### Class com.ironsource.mediationsdk.model.ProviderSettings (com.ironsource.mediationsdk.model.ProviderSettings)
.class public Lcom/ironsource/mediationsdk/model/ProviderSettings;
.super Ljava/lang/Object;
.source "ProviderSettings.java"


# instance fields
.field private mApplicationSettings:Lorg/json/JSONObject;

.field private mBannerSettings:Lorg/json/JSONObject;

.field private mInterstitialSettings:Lorg/json/JSONObject;

.field private mIsMultipleInstances:Z

.field private mProviderBNPriority:I

.field private mProviderISPriority:I

.field private mProviderInstanceName:Ljava/lang/String;

.field private mProviderName:Ljava/lang/String;

.field private mProviderRVPriority:I

.field private mProviderTypeForReflection:Ljava/lang/String;

.field private mRewardedVideoSettings:Lorg/json/JSONObject;

.field private mSubProviderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V
    .registers 3
    .param p1, "other"    # Lcom/ironsource/mediationsdk/model/ProviderSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderInstanceName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderTypeForReflection:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    .line 56
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    .line 57
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mBannerSettings:Lorg/json/JSONObject;

    .line 58
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getApplicationSettings()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mApplicationSettings:Lorg/json/JSONObject;

    .line 59
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoPriority()I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderRVPriority:I

    .line 60
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialPriority()I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderISPriority:I

    .line 61
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerPriority()I

    move-result v0

    iput v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderBNPriority:I

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderName:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderInstanceName:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderTypeForReflection:Ljava/lang/String;

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mBannerSettings:Lorg/json/JSONObject;

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mApplicationSettings:Lorg/json/JSONObject;

    .line 33
    iput v1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderRVPriority:I

    .line 34
    iput v1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderISPriority:I

    .line 35
    iput v1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderBNPriority:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 8
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "providerType"    # Ljava/lang/String;
    .param p3, "applicationSettings"    # Lorg/json/JSONObject;
    .param p4, "rewardedVideoSettings"    # Lorg/json/JSONObject;
    .param p5, "interstitialSettings"    # Lorg/json/JSONObject;
    .param p6, "bannerSettings"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderInstanceName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderTypeForReflection:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    .line 43
    iput-object p5, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    .line 44
    iput-object p6, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mBannerSettings:Lorg/json/JSONObject;

    .line 45
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mApplicationSettings:Lorg/json/JSONObject;

    .line 46
    iput v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderRVPriority:I

    .line 47
    iput v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderISPriority:I

    .line 48
    iput v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderBNPriority:I

    .line 49
    return-void
.end method


# virtual methods
.method public getApplicationSettings()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mApplicationSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getBannerPriority()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderBNPriority:I

    return v0
.end method

.method public getBannerSettings()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mBannerSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getInterstitialPriority()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderISPriority:I

    return v0
.end method

.method public getInterstitialSettings()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getProviderInstanceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderInstanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderTypeForReflection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderTypeForReflection:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoPriority()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderRVPriority:I

    return v0
.end method

.method public getRewardedVideoSettings()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSubProviderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mSubProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public isMultipleInstances()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mIsMultipleInstances:Z

    return v0
.end method

.method public setBannerPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderBNPriority:I

    .line 138
    return-void
.end method

.method public setBannerSettings(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "bannerSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mBannerSettings:Lorg/json/JSONObject;

    .line 110
    return-void
.end method

.method public setInterstitialPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderISPriority:I

    .line 142
    return-void
.end method

.method public setInterstitialSettings(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 102
    :goto_5
    return-void

    .line 99
    :catch_6
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method public setInterstitialSettings(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "interstitialSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mInterstitialSettings:Lorg/json/JSONObject;

    .line 94
    return-void
.end method

.method public setIsMultipleInstances(Z)V
    .registers 2
    .param p1, "isMultipleInstances"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mIsMultipleInstances:Z

    .line 122
    return-void
.end method

.method public setRewardedVideoPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mProviderRVPriority:I

    .line 146
    return-void
.end method

.method public setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 86
    :goto_5
    return-void

    .line 83
    :catch_6
    move-exception v0

    .line 84
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method public setRewardedVideoSettings(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "rewardedVideoSettings"    # Lorg/json/JSONObject;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mRewardedVideoSettings:Lorg/json/JSONObject;

    .line 78
    return-void
.end method

.method public setSubProviderId(Ljava/lang/String;)V
    .registers 2
    .param p1, "subProviderId"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderSettings;->mSubProviderId:Ljava/lang/String;

    .line 114
    return-void
.end method
