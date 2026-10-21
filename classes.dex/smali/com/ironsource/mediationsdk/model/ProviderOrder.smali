###### Class com.ironsource.mediationsdk.model.ProviderOrder (com.ironsource.mediationsdk.model.ProviderOrder)
.class public Lcom/ironsource/mediationsdk/model/ProviderOrder;
.super Ljava/lang/Object;
.source "ProviderOrder.java"


# instance fields
.field private mBannerProviderOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mISBackFillProvider:Ljava/lang/String;

.field private mISPremiumProvider:Ljava/lang/String;

.field private mInterstitialProviderOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRVBackFillProvider:Ljava/lang/String;

.field private mRVPremiumProvider:Ljava/lang/String;

.field private mRewardedVideoProviderOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mRewardedVideoProviderOrder:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mInterstitialProviderOrder:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mBannerProviderOrder:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public addBannerProvider(Ljava/lang/String;)V
    .registers 3
    .param p1, "bannerProvider"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 53
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mBannerProviderOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_b
    return-void
.end method

.method public addInterstitialProvider(Ljava/lang/String;)V
    .registers 3
    .param p1, "interstitialProvider"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 48
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mInterstitialProviderOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_b
    return-void
.end method

.method public addRewardedVideoProvider(Ljava/lang/String;)V
    .registers 3
    .param p1, "rewardedVideoProvider"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 43
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mRewardedVideoProviderOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_b
    return-void
.end method

.method public getBannerProviderOrder()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mBannerProviderOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getISBackFillProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mISBackFillProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getISPremiumProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mISPremiumProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getInterstitialProviderOrder()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mInterstitialProviderOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRVBackFillProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mRVBackFillProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getRVPremiumProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mRVPremiumProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoProviderOrder()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mRewardedVideoProviderOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setISBackFillProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "isBackFillProvider"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mISBackFillProvider:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setISPremiumProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "isPremiumProvider"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mISPremiumProvider:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setRVBackFillProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "rvBackFillProvider"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mRVBackFillProvider:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setRVPremiumProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "rvPremiumProvider"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/ProviderOrder;->mRVPremiumProvider:Ljava/lang/String;

    .line 70
    return-void
.end method
