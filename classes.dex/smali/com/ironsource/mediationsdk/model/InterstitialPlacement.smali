###### Class com.ironsource.mediationsdk.model.InterstitialPlacement (com.ironsource.mediationsdk.model.InterstitialPlacement)
.class public Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
.super Ljava/lang/Object;
.source "InterstitialPlacement.java"


# instance fields
.field private mPlacementAvailabilitySettings:Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

.field private mPlacementId:I

.field private mPlacementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    .registers 4
    .param p1, "placementId"    # I
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "placementAvailabilitySettings"    # Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->mPlacementId:I

    .line 15
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->mPlacementName:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->mPlacementAvailabilitySettings:Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    .line 17
    return-void
.end method


# virtual methods
.method public getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->mPlacementAvailabilitySettings:Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    return-object v0
.end method

.method public getPlacementId()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->mPlacementId:I

    return v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placement name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;->mPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
