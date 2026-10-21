###### Class com.ironsource.mediationsdk.model.OfferwallPlacement (com.ironsource.mediationsdk.model.OfferwallPlacement)
.class public Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
.super Ljava/lang/Object;
.source "OfferwallPlacement.java"


# instance fields
.field private mPlacementId:I

.field private mPlacementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "placementId"    # I
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->mPlacementId:I

    .line 12
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->mPlacementName:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getPlacementId()I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->mPlacementId:I

    return v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->mPlacementName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placement name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->mPlacementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", placement id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->mPlacementId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
