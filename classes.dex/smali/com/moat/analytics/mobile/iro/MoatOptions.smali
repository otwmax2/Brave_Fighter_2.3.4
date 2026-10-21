###### Class com.moat.analytics.mobile.iro.MoatOptions (com.moat.analytics.mobile.iro.MoatOptions)
.class public Lcom/moat/analytics/mobile/iro/MoatOptions;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public autoTrackGMAInterstitials:Z

.field public disableAdIdCollection:Z

.field public disableLocationServices:Z

.field public loggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/MoatOptions;->disableAdIdCollection:Z

    .line 22
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/MoatOptions;->autoTrackGMAInterstitials:Z

    .line 32
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/MoatOptions;->disableLocationServices:Z

    .line 39
    iput-boolean v0, p0, Lcom/moat/analytics/mobile/iro/MoatOptions;->loggingEnabled:Z

    return-void
.end method
