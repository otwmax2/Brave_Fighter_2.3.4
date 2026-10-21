###### Class com.moat.analytics.mobile.cha.w (com.moat.analytics.mobile.cha.w)
.class final Lcom/moat/analytics/mobile/cha/w;
.super Lcom/moat/analytics/mobile/cha/b;
.source "SourceFile"

# interfaces
.implements Lcom/moat/analytics/mobile/cha/ReactiveVideoTracker;


# instance fields
.field private ˋॱ:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/cha/b;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x3

    const-string v1, "ReactiveVideoTracker"

    const-string v2, "Initializing."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-string v0, "[SUCCESS] "

    const-string v1, "ReactiveVideoTracker created"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/cha/a;->ˊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final trackVideoAd(Ljava/util/Map;Ljava/lang/Integer;Landroid/view/View;)Z
    .registers 6
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
    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/w;->ˎ()V

    .line 56
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/cha/w;->ॱ()V

    .line 57
    iput-object p2, p0, Lcom/moat/analytics/mobile/cha/w;->ˋॱ:Ljava/lang/Integer;

    .line 58
    invoke-super {p0, p1, p3}, Lcom/moat/analytics/mobile/cha/b;->ॱ(Ljava/util/Map;Landroid/view/View;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 62
    :goto_c
    return v0

    .line 59
    :catch_d
    move-exception v0

    .line 60
    const-string v1, "trackVideoAd"

    invoke-virtual {p0, v1, v0}, Lcom/moat/analytics/mobile/cha/w;->ॱ(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 62
    const/4 v0, 0x0

    goto :goto_c
.end method

.method final ˋ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string v0, "ReactiveVideoTracker"

    return-object v0
.end method

.method final ˋ(Ljava/util/List;)V
    .registers 8
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
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/w;->ˋॱ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_20

    .line 78
    new-instance v0, Lcom/moat/analytics/mobile/cha/o;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Invalid duration = %d. Please make sure duration is in milliseconds."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/moat/analytics/mobile/cha/w;->ˋॱ:Ljava/lang/Integer;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/cha/o;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_20
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/b;->ˋ(Ljava/util/List;)V

    .line 81
    return-void
.end method

.method final ˎ(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 67
    iget-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    if-ne v0, v1, :cond_1e

    iget-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˋ:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 68
    iget-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ˏ:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/moat/analytics/mobile/cha/w;->ˋॱ:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/cha/w;->ˋ(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 69
    sget-object v0, Lcom/moat/analytics/mobile/cha/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    iput-object v0, p1, Lcom/moat/analytics/mobile/cha/MoatAdEvent;->ॱ:Lcom/moat/analytics/mobile/cha/MoatAdEventType;

    .line 72
    :cond_1e
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/cha/b;->ˎ(Lcom/moat/analytics/mobile/cha/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method final ᐝ()Ljava/util/HashMap;
    .registers 6
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
            Lcom/moat/analytics/mobile/cha/o;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/w;->ˊॱ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 42
    if-eqz v0, :cond_3a

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46
    :goto_28
    const-string v2, "duration"

    iget-object v4, p0, Lcom/moat/analytics/mobile/cha/w;->ˋॱ:Ljava/lang/Integer;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v2, "width"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "height"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object v3

    :cond_3a
    move-object v0, v1

    move-object v1, v2

    goto :goto_28
.end method
