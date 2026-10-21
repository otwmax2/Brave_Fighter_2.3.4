###### Class com.ironsource.sdk.SSAFactory (com.ironsource.sdk.SSAFactory)
.class public Lcom/ironsource/sdk/SSAFactory;
.super Ljava/lang/Object;
.source "SSAFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertiserInstance()Lcom/ironsource/sdk/SSAAdvertiser;
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;->getInstance()Lcom/ironsource/sdk/agent/IronSourceAdsAdvertiserAgent;

    move-result-object v0

    return-object v0
.end method

.method public static getPublisherInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/SSAPublisher;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-static {p0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v0

    return-object v0
.end method

.method public static getPublisherTestInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/SSAPublisher;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_2:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;I)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v0

    return-object v0
.end method

.method public static getPublisherTestInstance(Landroid/app/Activity;I)Lcom/ironsource/sdk/SSAPublisher;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "debugMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;I)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v0

    return-object v0
.end method
