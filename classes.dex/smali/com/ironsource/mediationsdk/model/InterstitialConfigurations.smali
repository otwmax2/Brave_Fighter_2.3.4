###### Class com.ironsource.mediationsdk.model.InterstitialConfigurations (com.ironsource.mediationsdk.model.InterstitialConfigurations)
.class public Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;
.super Ljava/lang/Object;
.source "InterstitialConfigurations.java"


# static fields
.field private static final DEFAULT_IS_PLACEMENT_ID:I


# instance fields
.field private mBackFillProviderName:Ljava/lang/String;

.field private mDefaultISPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

.field private mISAdaptersSmartLoadAmount:I

.field private mISAdaptersTimeOutInSeconds:I

.field private mISEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

.field private mISPlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/model/InterstitialPlacement;",
            ">;"
        }
    .end annotation
.end field

.field private mPremiumProviderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mISPlacements:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mISEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .line 24
    return-void
.end method

.method public constructor <init>(IILcom/ironsource/mediationsdk/model/ApplicationEvents;)V
    .registers 5
    .param p1, "adaptersSmartLoadAmount"    # I
    .param p2, "adaptersSmartLoadTimeout"    # I
    .param p3, "events"    # Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mISPlacements:Ljava/util/ArrayList;

    .line 28
    iput p1, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mISAdaptersSmartLoadAmount:I

    .line 29
    iput p2, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mISAdaptersTimeOutInSeconds:I

    .line 30
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mISEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .line 31
    return-void
.end method


# virtual methods
.method public addInterstitialPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V
    .registers 3
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    .prologue
    .line 34
    if-eqz p1, :cond_f

    .line 35
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mISPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementId()I

    move-result v0

    if-nez v0, :cond_f

    .line 38
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mDefaultISPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    .line 41
    :cond_f
    return-void
.end method

.method public getBackFillProviderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mBackFillProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultInterstitialPlacement()Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mDefaultISPlacement:Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    return-object v0
.end method

.method public getInterstitialAdaptersSmartLoadAmount()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mISAdaptersSmartLoadAmount:I

    return v0
.end method

.method public getInterstitialAdaptersSmartLoadTimeout()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mISAdaptersTimeOutInSeconds:I

    return v0
.end method

.method public getInterstitialEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mISEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    return-object v0
.end method

.method public getInterstitialPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 5
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mISPlacements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    .line 45
    .local v0, "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 49
    .end local v0    # "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getPremiumProviderName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mPremiumProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public setBackFillProviderName(Ljava/lang/String;)V
    .registers 2
    .param p1, "backFillProviderName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mBackFillProviderName:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPremiumProviderName(Ljava/lang/String;)V
    .registers 2
    .param p1, "premiumProviderName"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->mPremiumProviderName:Ljava/lang/String;

    .line 82
    return-void
.end method
