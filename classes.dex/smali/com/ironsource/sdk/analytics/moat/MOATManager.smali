###### Class com.ironsource.sdk.analytics.moat.MOATManager (com.ironsource.sdk.analytics.moat.MOATManager)
.class public Lcom/ironsource/sdk/analytics/moat/MOATManager;
.super Ljava/lang/Object;
.source "MOATManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;
    }
.end annotation


# static fields
.field private static final autoTrackGMAInterstitials:Ljava/lang/String; = "autoTrackGMAInterstitials"

.field private static final disableAdIdCollection:Ljava/lang/String; = "disableAdIdCollection"

.field private static final disableLocationService:Ljava/lang/String; = "disableLocationServices"

.field private static final loggingEnabled:Ljava/lang/String; = "loggingEnabled"

.field private static mEventsListener:Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

.field private static moatCallbacks:Lcom/moat/analytics/mobile/iro/TrackerListener;

.field private static webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/ironsource/sdk/analytics/moat/MOATManager$1;

    invoke-direct {v0}, Lcom/ironsource/sdk/analytics/moat/MOATManager$1;-><init>()V

    sput-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->moatCallbacks:Lcom/moat/analytics/mobile/iro/TrackerListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->mEventsListener:Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    return-object v0
.end method

.method public static createAdTracker(Landroid/webkit/WebView;)V
    .registers 3
    .param p0, "webView"    # Landroid/webkit/WebView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatFactory;->create()Lcom/moat/analytics/mobile/iro/MoatFactory;

    move-result-object v0

    .line 87
    .local v0, "factory":Lcom/moat/analytics/mobile/iro/MoatFactory;
    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/iro/MoatFactory;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/iro/WebAdTracker;

    move-result-object v1

    sput-object v1, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    .line 88
    return-void
.end method

.method private static createMoatOptions(Lorg/json/JSONObject;)Lcom/moat/analytics/mobile/iro/MoatOptions;
    .registers 3
    .param p0, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 75
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatOptions;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/MoatOptions;-><init>()V

    .line 77
    .local v0, "mo":Lcom/moat/analytics/mobile/iro/MoatOptions;
    const-string v1, "loggingEnabled"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/moat/analytics/mobile/iro/MoatOptions;->loggingEnabled:Z

    .line 78
    const-string v1, "autoTrackGMAInterstitials"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/moat/analytics/mobile/iro/MoatOptions;->autoTrackGMAInterstitials:Z

    .line 79
    const-string v1, "disableAdIdCollection"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/moat/analytics/mobile/iro/MoatOptions;->disableAdIdCollection:Z

    .line 80
    const-string v1, "disableLocationServices"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/moat/analytics/mobile/iro/MoatOptions;->disableLocationServices:Z

    .line 82
    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 2
    .param p0, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->initWithOptions(Lorg/json/JSONObject;Landroid/app/Application;)V

    .line 61
    return-void
.end method

.method public static initWithOptions(Lorg/json/JSONObject;Landroid/app/Application;)V
    .registers 4
    .param p0, "options"    # Lorg/json/JSONObject;
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "o":Lcom/moat/analytics/mobile/iro/MoatOptions;
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 68
    invoke-static {p0}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->createMoatOptions(Lorg/json/JSONObject;)Lcom/moat/analytics/mobile/iro/MoatOptions;

    move-result-object v0

    .line 71
    :cond_d
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->start(Lcom/moat/analytics/mobile/iro/MoatOptions;Landroid/app/Application;)V

    .line 72
    return-void
.end method

.method public static setEventListener(Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;)V
    .registers 1
    .param p0, "eventsListener"    # Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    .prologue
    .line 56
    sput-object p0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->mEventsListener:Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    .line 57
    return-void
.end method

.method public static startTracking()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    if-eqz v0, :cond_10

    .line 92
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    sget-object v1, Lcom/ironsource/sdk/analytics/moat/MOATManager;->moatCallbacks:Lcom/moat/analytics/mobile/iro/TrackerListener;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/iro/WebAdTracker;->setListener(Lcom/moat/analytics/mobile/iro/TrackerListener;)V

    .line 93
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/iro/WebAdTracker;->startTracking()V

    .line 95
    :cond_10
    return-void
.end method

.method public static stopTracking()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    if-eqz v0, :cond_9

    .line 99
    sget-object v0, Lcom/ironsource/sdk/analytics/moat/MOATManager;->webAdTracker:Lcom/moat/analytics/mobile/iro/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/iro/WebAdTracker;->stopTracking()V

    .line 101
    :cond_9
    return-void
.end method

###### Class com.ironsource.sdk.analytics.moat.MOATManager.AnonymousClass1 (com.ironsource.sdk.analytics.moat.MOATManager$1)
.class final Lcom/ironsource/sdk/analytics/moat/MOATManager$1;
.super Ljava/lang/Object;
.source "MOATManager.java"

# interfaces
.implements Lcom/moat/analytics/mobile/iro/TrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/analytics/moat/MOATManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrackingFailedToStart(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 42
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;->onTrackingFailedToStart(Ljava/lang/String;)V

    .line 44
    :cond_d
    return-void
.end method

.method public onTrackingStarted(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 35
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;->onTrackingStarted(Ljava/lang/String;)V

    .line 37
    :cond_d
    return-void
.end method

.method public onTrackingStopped(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 49
    invoke-static {}, Lcom/ironsource/sdk/analytics/moat/MOATManager;->access$000()Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;->onTrackingStopped(Ljava/lang/String;)V

    .line 51
    :cond_d
    return-void
.end method

###### Class com.ironsource.sdk.analytics.moat.MOATManager.EventsListener (com.ironsource.sdk.analytics.moat.MOATManager$EventsListener)
.class public interface abstract Lcom/ironsource/sdk/analytics/moat/MOATManager$EventsListener;
.super Ljava/lang/Object;
.source "MOATManager.java"

# interfaces
.implements Lcom/moat/analytics/mobile/iro/TrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/analytics/moat/MOATManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventsListener"
.end annotation
