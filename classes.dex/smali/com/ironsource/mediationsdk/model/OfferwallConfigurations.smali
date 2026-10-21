###### Class com.ironsource.mediationsdk.model.OfferwallConfigurations (com.ironsource.mediationsdk.model.OfferwallConfigurations)
.class public Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;
.super Ljava/lang/Object;
.source "OfferwallConfigurations.java"


# static fields
.field private static final DEFAULT_OW_PLACEMENT_ID:I


# instance fields
.field private mDefaultOWPlacement:Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

.field private mOWPlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/model/OfferwallPlacement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->mOWPlacements:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public addOfferwallPlacement(Lcom/ironsource/mediationsdk/model/OfferwallPlacement;)V
    .registers 3
    .param p1, "placement"    # Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    .prologue
    .line 19
    if-eqz p1, :cond_f

    .line 20
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->mOWPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementId()I

    move-result v0

    if-nez v0, :cond_f

    .line 22
    iput-object p1, p0, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->mDefaultOWPlacement:Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    .line 25
    :cond_f
    return-void
.end method

.method public getDefaultOfferwallPlacement()Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->mDefaultOWPlacement:Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    return-object v0
.end method

.method public getOfferwallPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    .registers 5
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->mOWPlacements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    .line 29
    .local v0, "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 32
    .end local v0    # "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
