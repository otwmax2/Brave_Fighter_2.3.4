###### Class com.ironsource.mediationsdk.model.Configurations (com.ironsource.mediationsdk.model.Configurations)
.class public Lcom/ironsource/mediationsdk/model/Configurations;
.super Ljava/lang/Object;
.source "Configurations.java"


# instance fields
.field private mApplicationConfig:Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

.field private mBannerConfig:Lcom/ironsource/mediationsdk/model/BannerConfigurations;

.field private mInterstitialConfig:Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

.field private mOfferwallConfig:Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

.field private mRewardedVideoConfig:Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;Lcom/ironsource/mediationsdk/model/BannerConfigurations;Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;)V
    .registers 6
    .param p1, "rewardedVideoConfigurations"    # Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;
    .param p2, "interstitialConfigurations"    # Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;
    .param p3, "offerwallConfigurations"    # Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;
    .param p4, "bannerConfigurations"    # Lcom/ironsource/mediationsdk/model/BannerConfigurations;
    .param p5, "applicationConfigurations"    # Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-eqz p1, :cond_7

    .line 23
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/Configurations;->mRewardedVideoConfig:Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    .line 25
    :cond_7
    if-eqz p2, :cond_b

    .line 26
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/Configurations;->mInterstitialConfig:Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    .line 28
    :cond_b
    if-eqz p3, :cond_f

    .line 29
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/Configurations;->mOfferwallConfig:Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    .line 32
    :cond_f
    if-eqz p4, :cond_13

    .line 33
    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/Configurations;->mBannerConfig:Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    .line 36
    :cond_13
    iput-object p5, p0, Lcom/ironsource/mediationsdk/model/Configurations;->mApplicationConfig:Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    .line 37
    return-void
.end method


# virtual methods
.method public getApplicationConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/Configurations;->mApplicationConfig:Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    return-object v0
.end method

.method public getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/Configurations;->mBannerConfig:Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    return-object v0
.end method

.method public getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/Configurations;->mInterstitialConfig:Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    return-object v0
.end method

.method public getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/Configurations;->mOfferwallConfig:Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    return-object v0
.end method

.method public getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/Configurations;->mRewardedVideoConfig:Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    return-object v0
.end method
