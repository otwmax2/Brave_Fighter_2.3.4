###### Class com.moat.analytics.mobile.iro.q (com.moat.analytics.mobile.iro.q)
.class final Lcom/moat/analytics/mobile/iro/q;
.super Lcom/moat/analytics/mobile/iro/g;
.source ""

# interfaces
.implements Lcom/moat/analytics/mobile/iro/NativeVideoTracker;


# instance fields
.field private ͺ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x3

    .line 27
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/iro/g;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v0, "NativeVideoTracker"

    const-string v1, "In initialization method."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 30
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PartnerCode is "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_4e

    const-string v0, "null"

    :goto_1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NativeDisplayTracker creation problem, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    const-string v2, "[ERROR] "

    const-string v3, "NativeVideoTracker"

    .line 1055
    invoke-static {v4, v3, p0, v1}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/moat/analytics/mobile/iro/o;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/iro/o;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/iro/q;->ˋ:Lcom/moat/analytics/mobile/iro/o;

    .line 35
    :cond_46
    const-string v0, "[SUCCESS] "

    const-string v1, "NativeVideoTracker created"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void

    .line 30
    :cond_4e
    const-string v0, "empty"

    goto :goto_1e
.end method


# virtual methods
.method public final trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z
    .registers 8
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
    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/q;->ˋ()V

    .line 53
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/iro/q;->ˏ()V

    .line 2073
    if-nez p2, :cond_3f

    .line 2074
    const-string v0, "Null player instance"

    .line 2075
    new-instance v1, Lcom/moat/analytics/mobile/iro/o;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/iro/o;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_10

    .line 57
    :catch_10
    move-exception v0

    .line 58
    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    .line 59
    const-string v1, "trackVideoAd"

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/q;->ˊ:Lcom/moat/analytics/mobile/iro/TrackerListener;

    if-eqz v1, :cond_23

    .line 61
    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/q;->ˊ:Lcom/moat/analytics/mobile/iro/TrackerListener;

    invoke-interface {v1, v0}, Lcom/moat/analytics/mobile/iro/TrackerListener;->onTrackingFailedToStart(Ljava/lang/String;)V

    .line 63
    :cond_23
    const/4 v1, 0x3

    const-string v2, "NativeVideoTracker"

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-string v1, "[ERROR] "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NativeVideoTracker "

    .line 3045
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    :goto_3e
    return v0

    .line 2078
    :cond_3f
    :try_start_3f
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_4e

    .line 55
    :try_start_42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/q;->ͺ:Ljava/lang/ref/WeakReference;

    .line 56
    invoke-super {p0, p1, p3}, Lcom/moat/analytics/mobile/iro/g;->ˋ(Ljava/util/Map;Landroid/view/View;)Z

    move-result v0

    goto :goto_3e

    .line 2080
    :catch_4e
    move-exception v0

    new-instance v0, Lcom/moat/analytics/mobile/iro/o;

    const-string v1, "Playback has already completed"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/iro/o;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_57} :catch_10
.end method

.method final ʻॱ()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/q;->ͺ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 100
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method final ˊ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    const-string v0, "NativeVideoTracker"

    return-object v0
.end method

.method final ˊॱ()Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/iro/o;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/q;->ͺ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 117
    const-string v2, "width"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "height"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "duration"

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-object v1
.end method

.method final ˋॱ()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/q;->ͺ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 88
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method final ˏ(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/iro/o;
        }
    .end annotation

    .prologue
    .line 107
    .line 4040
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/q;->ͺ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/q;->ͺ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 107
    :goto_d
    if-nez v0, :cond_14

    .line 108
    const-string v0, "Player is null"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_14
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/iro/g;->ˏ(Ljava/util/List;)V

    .line 111
    return-void

    .line 4040
    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final ॱˊ()Z
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/q;->ͺ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/q;->ͺ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final ॱˎ()Z
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/q;->ͺ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 94
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method
