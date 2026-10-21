###### Class com.ironsource.mediationsdk.model.BannerPlacement (com.ironsource.mediationsdk.model.BannerPlacement)
.class public Lcom/ironsource/mediationsdk/model/BannerPlacement;
.super Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
.source "BannerPlacement.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V
    .registers 4
    .param p1, "placementId"    # I
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "placementAvailabilitySettings"    # Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;-><init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    .line 10
    return-void
.end method
