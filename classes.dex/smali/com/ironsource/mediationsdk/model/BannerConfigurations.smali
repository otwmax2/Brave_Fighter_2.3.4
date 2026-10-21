###### Class com.ironsource.mediationsdk.model.BannerConfigurations (com.ironsource.mediationsdk.model.BannerConfigurations)
.class public Lcom/ironsource/mediationsdk/model/BannerConfigurations;
.super Ljava/lang/Object;
.source "BannerConfigurations.java"


# static fields
.field private static final DEFAULT_BN_PLACEMENT_ID:I


# instance fields
.field private mBNAdaptersSmartLoadAmount:I

.field private mBNAdaptersTimeOutInMilliseconds:J

.field private mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

.field private mBNPlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/model/BannerPlacement;",
            ">;"
        }
    .end annotation
.end field

.field private mBNRefreshInterval:I

.field private mDefaultBNPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public constructor <init>(IJLcom/ironsource/mediationsdk/model/ApplicationEvents;I)V
    .registers 8
    .param p1, "adaptersSmartLoadAmount"    # I
    .param p2, "adaptersSmartLoadTimeoutInMillis"    # J
    .param p4, "events"    # Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .param p5, "refreshInterval"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    .line 27
    iput p1, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersSmartLoadAmount:I

    .line 28
    iput-wide p2, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersTimeOutInMilliseconds:J

    .line 29
    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    .line 30
    iput p5, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNRefreshInterval:I

    .line 31
    return-void
.end method


# virtual methods
.method public addBannerPlacement(Lcom/ironsource/mediationsdk/model/BannerPlacement;)V
    .registers 3
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .prologue
    .line 46
    if-eqz p1, :cond_f

    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementId()I

    move-result v0

    if-nez v0, :cond_f

    .line 50
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mDefaultBNPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .line 53
    :cond_f
    return-void
.end method

.method public getBannerAdaptersSmartLoadAmount()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersSmartLoadAmount:I

    return v0
.end method

.method public getBannerAdaptersSmartLoadTimeout()J
    .registers 3

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNAdaptersTimeOutInMilliseconds:J

    return-wide v0
.end method

.method public getBannerEventsConfigurations()Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNEvents:Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    return-object v0
.end method

.method public getBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .registers 5
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNPlacements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .line 57
    .local v0, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 61
    .end local v0    # "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getBannerRefreshInterval()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mBNRefreshInterval:I

    return v0
.end method

.method public getDefaultBannerPlacement()Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->mDefaultBNPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    return-object v0
.end method
