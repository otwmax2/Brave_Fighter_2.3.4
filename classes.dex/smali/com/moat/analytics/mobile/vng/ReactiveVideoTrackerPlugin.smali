###### Class com.moat.analytics.mobile.vng.ReactiveVideoTrackerPlugin (com.moat.analytics.mobile.vng.ReactiveVideoTrackerPlugin)
.class public Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/MoatPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/vng/MoatPlugin",
        "<",
        "Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;->c()Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;->d()Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;
    .registers 3

    new-instance v0, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin$1;-><init>(Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;)V

    const-class v1, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/x;->a(Lcom/moat/analytics/mobile/vng/x$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    return-object v0
.end method

.method public d()Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;
    .registers 2

    new-instance v0, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin$a;-><init>()V

    return-object v0
.end method

###### Class com.moat.analytics.mobile.vng.ReactiveVideoTrackerPlugin.AnonymousClass1 (com.moat.analytics.mobile.vng.ReactiveVideoTrackerPlugin$1)
.class Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;->c()Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/vng/x$a",
        "<",
        "Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin$1;->a:Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/vng/a/b/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<",
            "Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;",
            ">;"
        }
    .end annotation

    const-string v0, "[INFO] "

    const-string v1, "Attempting to create ReactiveVideoTracker"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/y;

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin$1;->a:Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;->a(Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/vng/y;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    return-object v0
.end method

###### Class com.moat.analytics.mobile.vng.ReactiveVideoTrackerPlugin.a (com.moat.analytics.mobile.vng.ReactiveVideoTrackerPlugin$a)
.class Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
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

.method public trackVideoAd(Ljava/util/Map;Ljava/lang/Integer;Landroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
