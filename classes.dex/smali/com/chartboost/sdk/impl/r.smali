###### Class com.chartboost.sdk.impl.r (com.chartboost.sdk.impl.r)
.class public Lcom/chartboost/sdk/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/q;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field a:Lcom/moat/analytics/mobile/cha/WebAdTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/chartboost/sdk/impl/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/r;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->a:Lcom/moat/analytics/mobile/cha/WebAdTracker;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->a:Lcom/moat/analytics/mobile/cha/WebAdTracker;

    if-eqz v0, :cond_10

    .line 53
    sget-object v0, Lcom/chartboost/sdk/impl/r;->b:Ljava/lang/String;

    const-string v1, "start MOAT tracker"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->a:Lcom/moat/analytics/mobile/cha/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/cha/WebAdTracker;->startTracking()V

    .line 56
    :cond_10
    return-void
.end method

.method public a(Landroid/app/Application;ZZZ)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    sget-object v3, Lcom/chartboost/sdk/impl/r;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start MOAT provider, Debugging Enabled: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Location Enabled:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_46

    move v0, v1

    :goto_1c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "idfaCollectionEnabled:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p4, :cond_48

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/moat/analytics/mobile/cha/MoatOptions;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/cha/MoatOptions;-><init>()V

    .line 32
    iput-boolean p3, v0, Lcom/moat/analytics/mobile/cha/MoatOptions;->disableLocationServices:Z

    .line 33
    iput-boolean p4, v0, Lcom/moat/analytics/mobile/cha/MoatOptions;->disableAdIdCollection:Z

    .line 34
    iput-boolean p2, v0, Lcom/moat/analytics/mobile/cha/MoatOptions;->loggingEnabled:Z

    .line 36
    invoke-static {}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/cha/MoatAnalytics;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/moat/analytics/mobile/cha/MoatAnalytics;->start(Lcom/moat/analytics/mobile/cha/MoatOptions;Landroid/app/Application;)V

    .line 37
    return-void

    :cond_46
    move v0, v2

    .line 27
    goto :goto_1c

    :cond_48
    move v1, v2

    goto :goto_28
.end method

.method public a(Landroid/webkit/WebView;)V
    .registers 3

    .prologue
    .line 47
    invoke-static {}, Lcom/moat/analytics/mobile/cha/MoatFactory;->create()Lcom/moat/analytics/mobile/cha/MoatFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/cha/MoatFactory;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/cha/WebAdTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->a:Lcom/moat/analytics/mobile/cha/WebAdTracker;

    .line 48
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->a:Lcom/moat/analytics/mobile/cha/WebAdTracker;

    if-eqz v0, :cond_13

    .line 61
    sget-object v0, Lcom/chartboost/sdk/impl/r;->b:Ljava/lang/String;

    const-string v1, "stop MOAT tracker"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/chartboost/sdk/impl/r;->a:Lcom/moat/analytics/mobile/cha/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/cha/WebAdTracker;->stopTracking()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/r;->a:Lcom/moat/analytics/mobile/cha/WebAdTracker;

    .line 65
    :cond_13
    return-void
.end method
