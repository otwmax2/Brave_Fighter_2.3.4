###### Class com.chartboost.sdk.ChartboostDelegate (com.chartboost.sdk.ChartboostDelegate)
.class public abstract Lcom/chartboost/sdk/ChartboostDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInPlay(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 408
    return-void
.end method

.method public didCacheInterstitial(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public didCacheMoreApps(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 300
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 120
    return-void
.end method

.method public didClickMoreApps(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 354
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 107
    return-void
.end method

.method public didCloseMoreApps(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 222
    return-void
.end method

.method public didCloseRewardedVideo(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 341
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .registers 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 367
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 94
    return-void
.end method

.method public didDismissMoreApps(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 208
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 328
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 133
    return-void
.end method

.method public didDisplayMoreApps(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 250
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 380
    return-void
.end method

.method public didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 423
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 71
    return-void
.end method

.method public didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 194
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 315
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .prologue
    .line 264
    return-void
.end method

.method public didInitialize()V
    .registers 1

    .prologue
    .line 431
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .registers 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps(Ljava/lang/String;)Z
    .registers 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayRewardedVideo(Ljava/lang/String;)Z
    .registers 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .registers 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps(Ljava/lang/String;)Z
    .registers 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public willDisplayInterstitial(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 81
    return-void
.end method

.method public willDisplayVideo(Ljava/lang/String;)V
    .registers 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 390
    return-void
.end method
