###### Class com.ironsource.mediationsdk.model.Placement (com.ironsource.mediationsdk.model.Placement)
.class public Lcom/ironsource/mediationsdk/model/Placement;
.super Ljava/lang/Object;
.source "Placement.java"


# instance fields
.field private mPlacementAvailabilitySettings:Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

.field private mPlacementId:I

.field private mPlacementName:Ljava/lang/String;

.field private mRewardAmount:I

.field private mRewardName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    .registers 6
    .param p1, "placementId"    # I
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "rewardName"    # Ljava/lang/String;
    .param p4, "rewardAmount"    # I
    .param p5, "placementAvailabilitySettings"    # Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/ironsource/mediationsdk/model/Placement;->mPlacementId:I

    .line 17
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/Placement;->mPlacementName:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/ironsource/mediationsdk/model/Placement;->mRewardName:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/ironsource/mediationsdk/model/Placement;->mRewardAmount:I

    .line 20
    iput-object p5, p0, Lcom/ironsource/mediationsdk/model/Placement;->mPlacementAvailabilitySettings:Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    .line 21
    return-void
.end method


# virtual methods
.method public getPlacementAvailabilitySettings()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/Placement;->mPlacementAvailabilitySettings:Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    return-object v0
.end method

.method public getPlacementId()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/ironsource/mediationsdk/model/Placement;->mPlacementId:I

    return v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/Placement;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardAmount()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/ironsource/mediationsdk/model/Placement;->mRewardAmount:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/Placement;->mRewardName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placement name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/Placement;->mPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reward name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/Placement;->mRewardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , amount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ironsource/mediationsdk/model/Placement;->mRewardAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
