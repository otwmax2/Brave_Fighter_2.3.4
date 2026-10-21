###### Class com.moat.analytics.mobile.iro.NoOp (com.moat.analytics.mobile.iro.NoOp)
.class abstract Lcom/moat/analytics/mobile/iro/NoOp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/iro/NoOp$MoatFactory;,
        Lcom/moat/analytics/mobile/iro/NoOp$MoatAnalytics;,
        Lcom/moat/analytics/mobile/iro/NoOp$c;,
        Lcom/moat/analytics/mobile/iro/NoOp$a;,
        Lcom/moat/analytics/mobile/iro/NoOp$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.moat.analytics.mobile.iro.NoOp.MoatAnalytics (com.moat.analytics.mobile.iro.NoOp$MoatAnalytics)
.class public Lcom/moat/analytics/mobile/iro/NoOp$MoatAnalytics;
.super Lcom/moat/analytics/mobile/iro/MoatAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/NoOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoatAnalytics"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareNativeDisplayTracking(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 104
    return-void
.end method

.method public start(Landroid/app/Application;)V
    .registers 2

    .prologue
    .line 101
    return-void
.end method

.method public start(Lcom/moat/analytics/mobile/iro/MoatOptions;Landroid/app/Application;)V
    .registers 3

    .prologue
    .line 98
    return-void
.end method

###### Class com.moat.analytics.mobile.iro.NoOp.MoatFactory (com.moat.analytics.mobile.iro.NoOp$MoatFactory)
.class public Lcom/moat/analytics/mobile/iro/NoOp$MoatFactory;
.super Lcom/moat/analytics/mobile/iro/MoatFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/NoOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoatFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/MoatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/iro/m;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/iro/m",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-interface {p1}, Lcom/moat/analytics/mobile/iro/m;->createNoOp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/iro/NativeDisplayTracker;
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/iro/NativeDisplayTracker;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/moat/analytics/mobile/iro/NoOp$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/NoOp$a;-><init>()V

    return-object v0
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/iro/NativeVideoTracker;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    new-instance v0, Lcom/moat/analytics/mobile/iro/NoOp$c;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/NoOp$c;-><init>()V

    return-object v0
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/iro/WebAdTracker;
    .registers 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    new-instance v0, Lcom/moat/analytics/mobile/iro/NoOp$b;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/NoOp$b;-><init>()V

    return-object v0
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/iro/WebAdTracker;
    .registers 3
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    new-instance v0, Lcom/moat/analytics/mobile/iro/NoOp$b;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/NoOp$b;-><init>()V

    return-object v0
.end method

###### Class com.moat.analytics.mobile.iro.NoOp.a (com.moat.analytics.mobile.iro.NoOp$a)
.class final Lcom/moat/analytics/mobile/iro/NoOp$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/moat/analytics/mobile/iro/NativeDisplayTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/NoOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final removeListener()V
    .registers 1

    .prologue
    .line 46
    return-void
.end method

.method public final reportUserInteractionEvent(Lcom/moat/analytics/mobile/iro/NativeDisplayTracker$MoatUserInteractionType;)V
    .registers 2

    .prologue
    .line 55
    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 49
    return-void
.end method

.method public final setListener(Lcom/moat/analytics/mobile/iro/TrackerListener;)V
    .registers 2

    .prologue
    .line 43
    return-void
.end method

.method public final startTracking()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public final stopTracking()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

###### Class com.moat.analytics.mobile.iro.NoOp.b (com.moat.analytics.mobile.iro.NoOp$b)
.class final Lcom/moat/analytics/mobile/iro/NoOp$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/moat/analytics/mobile/iro/WebAdTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/NoOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final removeListener()V
    .registers 1

    .prologue
    .line 27
    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 30
    return-void
.end method

.method public final setListener(Lcom/moat/analytics/mobile/iro/TrackerListener;)V
    .registers 2

    .prologue
    .line 24
    return-void
.end method

.method public final startTracking()V
    .registers 1

    .prologue
    .line 21
    return-void
.end method

.method public final stopTracking()V
    .registers 1

    .prologue
    .line 33
    return-void
.end method

###### Class com.moat.analytics.mobile.iro.NoOp.c (com.moat.analytics.mobile.iro.NoOp$c)
.class final Lcom/moat/analytics/mobile/iro/NoOp$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/moat/analytics/mobile/iro/NativeVideoTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/NoOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final changeTargetView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 88
    return-void
.end method

.method public final dispatchEvent(Lcom/moat/analytics/mobile/iro/MoatAdEvent;)V
    .registers 2

    .prologue
    .line 77
    return-void
.end method

.method public final removeListener()V
    .registers 1

    .prologue
    .line 68
    return-void
.end method

.method public final removeVideoListener()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 62
    return-void
.end method

.method public final setListener(Lcom/moat/analytics/mobile/iro/TrackerListener;)V
    .registers 2

    .prologue
    .line 65
    return-void
.end method

.method public final setPlayerVolume(Ljava/lang/Double;)V
    .registers 2

    .prologue
    .line 85
    return-void
.end method

.method public final setVideoListener(Lcom/moat/analytics/mobile/iro/VideoTrackerListener;)V
    .registers 2

    .prologue
    .line 71
    return-void
.end method

.method public final stopTracking()V
    .registers 1

    .prologue
    .line 91
    return-void
.end method

.method public final trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/media/MediaPlayer;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method
