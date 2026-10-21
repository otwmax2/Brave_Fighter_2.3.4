###### Class com.moat.analytics.mobile.iro.ReactiveVideoTrackerPlugin (com.moat.analytics.mobile.iro.ReactiveVideoTrackerPlugin)
.class public Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/moat/analytics/mobile/iro/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/iro/m",
        "<",
        "Lcom/moat/analytics/mobile/iro/ReactiveVideoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private final ˋ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;->ˋ:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic ˎ(Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;->ˋ:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/moat/analytics/mobile/iro/ReactiveVideoTracker;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/iro/o;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin$5;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin$5;-><init>(Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;)V

    .line 34
    const-class v1, Lcom/moat/analytics/mobile/iro/ReactiveVideoTracker;

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/iro/s;->ˊ(Lcom/moat/analytics/mobile/iro/s$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/ReactiveVideoTracker;

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/iro/o;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;->create()Lcom/moat/analytics/mobile/iro/ReactiveVideoTracker;

    move-result-object v0

    return-object v0
.end method

.method public createNoOp()Lcom/moat/analytics/mobile/iro/ReactiveVideoTracker;
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin$b;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin$b;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createNoOp()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;->createNoOp()Lcom/moat/analytics/mobile/iro/ReactiveVideoTracker;

    move-result-object v0

    return-object v0
.end method

###### Class com.moat.analytics.mobile.iro.ReactiveVideoTrackerPlugin.AnonymousClass5 (com.moat.analytics.mobile.iro.ReactiveVideoTrackerPlugin$5)
.class final Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/moat/analytics/mobile/iro/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;->create()Lcom/moat/analytics/mobile/iro/ReactiveVideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/iro/s$a",
        "<",
        "Lcom/moat/analytics/mobile/iro/ReactiveVideoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ˎ:Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin$5;->ˎ:Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˏ()Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/iro/base/functional/Optional",
            "<",
            "Lcom/moat/analytics/mobile/iro/ReactiveVideoTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "[INFO] "

    const-string v1, "Attempting to create ReactiveVideoTracker"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/moat/analytics/mobile/iro/w;

    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin$5;->ˎ:Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;

    invoke-static {v1}, Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;->ˎ(Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/iro/w;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/iro/base/functional/Optional;

    move-result-object v0

    return-object v0
.end method

###### Class com.moat.analytics.mobile.iro.ReactiveVideoTrackerPlugin.b (com.moat.analytics.mobile.iro.ReactiveVideoTrackerPlugin$b)
.class final Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/moat/analytics/mobile/iro/ReactiveVideoTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/ReactiveVideoTrackerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final changeTargetView(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 68
    return-void
.end method

.method public final dispatchEvent(Lcom/moat/analytics/mobile/iro/MoatAdEvent;)V
    .registers 2

    .prologue
    .line 72
    return-void
.end method

.method public final removeListener()V
    .registers 1

    .prologue
    .line 51
    return-void
.end method

.method public final removeVideoListener()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 45
    return-void
.end method

.method public final setListener(Lcom/moat/analytics/mobile/iro/TrackerListener;)V
    .registers 2

    .prologue
    .line 48
    return-void
.end method

.method public final setPlayerVolume(Ljava/lang/Double;)V
    .registers 2

    .prologue
    .line 65
    return-void
.end method

.method public final setVideoListener(Lcom/moat/analytics/mobile/iro/VideoTrackerListener;)V
    .registers 2

    .prologue
    .line 54
    return-void
.end method

.method public final stopTracking()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

.method public final trackVideoAd(Ljava/util/Map;Ljava/lang/Integer;Landroid/view/View;)Z
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

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method
