###### Class com.vungle.publisher.zf (com.vungle.publisher.zf)
.class public Lcom/vungle/publisher/zf;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/env/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/zf;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/zf;->b:Lcom/vungle/publisher/env/o;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/o;->g()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2b

    .line 52
    new-instance v1, Lcom/moat/analytics/mobile/vng/MoatOptions;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/vng/MoatOptions;-><init>()V

    .line 53
    iput-boolean v3, v1, Lcom/moat/analytics/mobile/vng/MoatOptions;->disableAdIdCollection:Z

    .line 54
    iput-boolean v3, v1, Lcom/moat/analytics/mobile/vng/MoatOptions;->disableLocationServices:Z

    .line 55
    iput-boolean v3, v1, Lcom/moat/analytics/mobile/vng/MoatOptions;->loggingEnabled:Z

    .line 56
    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    move-result-object v2

    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/zf;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v2, v1, v0}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->start(Lcom/moat/analytics/mobile/vng/MoatOptions;Landroid/app/Application;)V

    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/zf;->b:Lcom/vungle/publisher/env/o;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/env/o;->c(Z)V

    .line 62
    :goto_2a
    return-void

    .line 60
    :cond_2b
    const-string v0, "VungleMoatAnalytics"

    const-string v1, "Moat not initialized."

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public a(ILandroid/widget/VideoView;)V
    .registers 6

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vungle/publisher/zf;->e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    if-eqz v0, :cond_1a

    .line 117
    iget-object v0, p0, Lcom/vungle/publisher/zf;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 118
    iget-object v0, p0, Lcom/vungle/publisher/zf;->e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    iget-object v1, p0, Lcom/vungle/publisher/zf;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->trackVideoAd(Ljava/util/Map;Ljava/lang/Integer;Landroid/view/View;)Z

    .line 123
    :cond_19
    :goto_19
    return-void

    .line 121
    :cond_1a
    const-string v0, "VungleMoatAnalytics"

    const-string v1, "Moat tracking is not enabled. Ignoring - startTracking."

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public a(Lcom/moat/analytics/mobile/vng/MoatAdEventType;I)V
    .registers 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vungle/publisher/zf;->e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/vungle/publisher/zf;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 127
    iget-object v0, p0, Lcom/vungle/publisher/zf;->e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/vng/MoatAdEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/moat/analytics/mobile/vng/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/vng/MoatAdEventType;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/vng/MoatAdEvent;)V

    .line 131
    :goto_1a
    return-void

    .line 129
    :cond_1b
    const-string v0, "VungleMoatAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moat tracking is not enabled. Ignoring - dispatchEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/vng/MoatAdEventType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public a(Lcom/vungle/publisher/jh;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/jh",
            "<***>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 65
    sget-object v0, Lcom/vungle/publisher/ji$a;->c:Lcom/vungle/publisher/ji$a;

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/jh;->a(Lcom/vungle/publisher/jf;)Ljava/util/List;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/vungle/publisher/zf;->b:Lcom/vungle/publisher/env/o;

    invoke-virtual {v1}, Lcom/vungle/publisher/env/o;->g()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/vungle/publisher/zf;->b:Lcom/vungle/publisher/env/o;

    invoke-virtual {v1}, Lcom/vungle/publisher/env/o;->h()Z

    move-result v1

    if-eqz v1, :cond_3c

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3c

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/zf;->a(Lcom/vungle/publisher/jh;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatFactory;->create()Lcom/moat/analytics/mobile/vng/MoatFactory;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;

    const-string v2, "vunglenativevideo893259554489"

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTrackerPlugin;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/vng/MoatFactory;->createCustomTracker(Lcom/moat/analytics/mobile/vng/MoatPlugin;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    iput-object v0, p0, Lcom/vungle/publisher/zf;->e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    .line 79
    :goto_3b
    return-void

    .line 75
    :cond_3c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/zf;->e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/zf;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    const-string v0, "VungleMoatAnalytics"

    const-string v1, "Moat tracking is not enabled. Ignoring - createVideoTracker."

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public a(Lcom/vungle/publisher/jh;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/jh",
            "<***>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x7c

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/zf;->f:Ljava/util/HashMap;

    .line 84
    invoke-static {p3}, Lcom/vungle/publisher/zk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/zf;->f:Ljava/util/HashMap;

    const-string v1, "zMoatVASTIDs"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :goto_18
    return-void

    .line 90
    :cond_19
    invoke-virtual {p1}, Lcom/vungle/publisher/jh;->e()Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_85

    .line 93
    :try_start_1f
    new-instance v2, Lorg/json/JSONObject;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v0, "app_id"

    invoke-static {v2, v0}, Lcom/vungle/publisher/ra;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_2e} :catch_81

    move-result-object v0

    .line 99
    :goto_2f
    invoke-virtual {p1}, Lcom/vungle/publisher/jh;->n()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 101
    if-eq v4, v6, :cond_93

    .line 102
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 103
    const/4 v2, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 104
    if-eq v5, v6, :cond_4c

    .line 105
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_4c
    :goto_4c
    iget-object v3, p0, Lcom/vungle/publisher/zf;->f:Ljava/util/HashMap;

    const-string v4, "level1"

    invoke-static {v0}, Lcom/vungle/publisher/zk;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    :goto_56
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/zf;->f:Ljava/util/HashMap;

    const-string v3, "level2"

    invoke-static {v2}, Lcom/vungle/publisher/zk;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8a

    :goto_63
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/vungle/publisher/zf;->f:Ljava/util/HashMap;

    const-string v2, "level3"

    invoke-static {v1}, Lcom/vungle/publisher/zk;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    :goto_70
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/vungle/publisher/zf;->f:Ljava/util/HashMap;

    const-string v1, "level4"

    invoke-static {p2}, Lcom/vungle/publisher/zk;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    :goto_7d
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 95
    :catch_81
    move-exception v0

    .line 96
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_85
    move-object v0, v1

    goto :goto_2f

    .line 108
    :cond_87
    sget-object v0, Lcom/vungle/publisher/zf;->c:Ljava/lang/String;

    goto :goto_56

    .line 109
    :cond_8a
    sget-object v2, Lcom/vungle/publisher/zf;->c:Ljava/lang/String;

    goto :goto_63

    .line 110
    :cond_8d
    sget-object v1, Lcom/vungle/publisher/zf;->c:Ljava/lang/String;

    goto :goto_70

    .line 111
    :cond_90
    sget-object p2, Lcom/vungle/publisher/zf;->c:Ljava/lang/String;

    goto :goto_7d

    :cond_93
    move-object v2, v1

    goto :goto_4c
.end method

.method public a(Ljava/lang/Double;)V
    .registers 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vungle/publisher/zf;->e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/vungle/publisher/zf;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 147
    iget-object v0, p0, Lcom/vungle/publisher/zf;->e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    invoke-interface {v0, p1}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->setPlayerVolume(Ljava/lang/Double;)V

    .line 151
    :goto_11
    return-void

    .line 149
    :cond_12
    const-string v0, "VungleMoatAnalytics"

    const-string v1, "Moat tracking is not enabled. Ignoring - setPlayerVolume."

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public b()V
    .registers 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vungle/publisher/zf;->e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    if-eqz v0, :cond_1e

    .line 135
    iget-object v0, p0, Lcom/vungle/publisher/zf;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 136
    iget-object v0, p0, Lcom/vungle/publisher/zf;->e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;->stopTracking()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/zf;->e:Lcom/moat/analytics/mobile/vng/ReactiveVideoTracker;

    .line 138
    const-string v0, "VungleMoatAnalytics"

    const-string v1, "Stopped Moat video tracker"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_1d
    :goto_1d
    return-void

    .line 141
    :cond_1e
    const-string v0, "VungleMoatAnalytics"

    const-string v1, "Moat tracking is not enabled. Ignoring - stopTracking."

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method
