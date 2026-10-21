###### Class com.moat.analytics.mobile.vng.v (com.moat.analytics.mobile.vng.v)
.class abstract Lcom/moat/analytics/mobile/vng/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/v$b;,
        Lcom/moat/analytics/mobile/vng/v$a;,
        Lcom/moat/analytics/mobile/vng/v$d;,
        Lcom/moat/analytics/mobile/vng/v$c;,
        Lcom/moat/analytics/mobile/vng/v$e;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.moat.analytics.mobile.vng.v.a (com.moat.analytics.mobile.vng.v$a)
.class public Lcom/moat/analytics/mobile/vng/v$a;
.super Lcom/moat/analytics/mobile/vng/MoatAnalytics;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareNativeDisplayTracking(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public start(Landroid/app/Application;)V
    .registers 2

    return-void
.end method

.method public start(Lcom/moat/analytics/mobile/vng/MoatOptions;Landroid/app/Application;)V
    .registers 3

    return-void
.end method

###### Class com.moat.analytics.mobile.vng.v.b (com.moat.analytics.mobile.vng.v$b)
.class public Lcom/moat/analytics/mobile/vng/v$b;
.super Lcom/moat/analytics/mobile/vng/MoatFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/MoatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/vng/MoatPlugin;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/vng/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;"
        }
    .end annotation

    new-instance v0, Lcom/moat/analytics/mobile/vng/v$c;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/v$c;-><init>()V

    return-object v0
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/NativeVideoTracker;
    .registers 3

    new-instance v0, Lcom/moat/analytics/mobile/vng/v$d;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/v$d;-><init>()V

    return-object v0
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
    .registers 3

    new-instance v0, Lcom/moat/analytics/mobile/vng/v$e;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/v$e;-><init>()V

    return-object v0
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
    .registers 3

    new-instance v0, Lcom/moat/analytics/mobile/vng/v$e;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/v$e;-><init>()V

    return-object v0
.end method

###### Class com.moat.analytics.mobile.vng.v.c (com.moat.analytics.mobile.vng.v$c)
.class Lcom/moat/analytics/mobile/vng/v$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportUserInteractionEvent(Lcom/moat/analytics/mobile/vng/NativeDisplayTracker$MoatUserInteractionType;)V
    .registers 2

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public startTracking()V
    .registers 1

    return-void
.end method

.method public stopTracking()V
    .registers 1

    return-void
.end method

###### Class com.moat.analytics.mobile.vng.v.d (com.moat.analytics.mobile.vng.v$d)
.class Lcom/moat/analytics/mobile/vng/v$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/NativeVideoTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeTargetView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V
    .registers 2

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public setPlayerVolume(Ljava/lang/Double;)V
    .registers 2

    return-void
.end method

.method public stopTracking()V
    .registers 1

    return-void
.end method

.method public trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z
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

    const/4 v0, 0x0

    return v0
.end method

###### Class com.moat.analytics.mobile.vng.v.e (com.moat.analytics.mobile.vng.v$e)
.class Lcom/moat/analytics/mobile/vng/v$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/WebAdTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public startTracking()V
    .registers 1

    return-void
.end method

.method public stopTracking()V
    .registers 1

    return-void
.end method
