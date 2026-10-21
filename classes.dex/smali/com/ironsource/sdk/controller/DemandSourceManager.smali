###### Class com.ironsource.sdk.controller.DemandSourceManager (com.ironsource.sdk.controller.DemandSourceManager)
.class public Lcom/ironsource/sdk/controller/DemandSourceManager;
.super Ljava/lang/Object;
.source "DemandSourceManager.java"


# instance fields
.field private mInterstitialDemandSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/data/DemandSource;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoDemandSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/data/DemandSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/DemandSourceManager;->mRewardedVideoDemandSourceMap:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/DemandSourceManager;->mInterstitialDemandSourceMap:Ljava/util/Map;

    .line 21
    return-void
.end method

.method private getMapByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;
    .registers 4
    .param p1, "productType"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/SSAEnums$ProductType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/data/DemandSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 25
    iget-object v0, p0, Lcom/ironsource/sdk/controller/DemandSourceManager;->mRewardedVideoDemandSourceMap:Ljava/util/Map;

    .line 29
    :goto_12
    return-object v0

    .line 26
    :cond_13
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 27
    iget-object v0, p0, Lcom/ironsource/sdk/controller/DemandSourceManager;->mInterstitialDemandSourceMap:Ljava/util/Map;

    goto :goto_12

    .line 29
    :cond_26
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private put(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;)V
    .registers 6
    .param p1, "productType"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;
    .param p3, "demandSource"    # Lcom/ironsource/sdk/data/DemandSource;

    .prologue
    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz p3, :cond_11

    .line 53
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getMapByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object v0

    .line 54
    .local v0, "productDemandMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;>;"
    if-eqz v0, :cond_11

    .line 55
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v0    # "productDemandMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;>;"
    :cond_11
    return-void
.end method


# virtual methods
.method public createDemandSource(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)Lcom/ironsource/sdk/data/DemandSource;
    .registers 6
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ironsource/sdk/listeners/OnAdProductListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/SSAEnums$ProductType;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnAdProductListener;",
            ")",
            "Lcom/ironsource/sdk/data/DemandSource;"
        }
    .end annotation

    .prologue
    .line 61
    .local p3, "demandExtParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/ironsource/sdk/data/DemandSource;

    invoke-direct {v0, p2, p3, p4}, Lcom/ironsource/sdk/data/DemandSource;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnAdProductListener;)V

    .line 62
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->put(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;)V

    .line 63
    return-object v0
.end method

.method public getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;
    .registers 5
    .param p1, "productType"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 43
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getMapByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object v0

    .line 44
    .local v0, "productDemandMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;>;"
    if-eqz v0, :cond_13

    .line 45
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/sdk/data/DemandSource;

    .line 48
    .end local v0    # "productDemandMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;>;"
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;
    .registers 4
    .param p1, "productType"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/SSAEnums$ProductType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/ironsource/sdk/data/DemandSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getMapByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object v0

    .line 35
    .local v0, "productDemandMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;>;"
    if-eqz v0, :cond_b

    .line 36
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 38
    :goto_a
    return-object v1

    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a
.end method
