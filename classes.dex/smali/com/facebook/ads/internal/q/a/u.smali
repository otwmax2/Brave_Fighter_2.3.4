###### Class com.facebook.ads.internal.q.a.u (com.facebook.ads.internal.q.a.u)
.class public Lcom/facebook/ads/internal/q/a/u;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)F
    .registers 4

    const/4 v2, 0x3

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1d

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    if-lez v0, :cond_1d

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static a(Ljava/util/Map;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v1, "autoplay"

    if-eqz p1, :cond_13

    const-string v0, "1"

    :goto_6
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inline"

    if-eqz p2, :cond_16

    const-string v0, "1"

    :goto_f
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_13
    const-string v0, "0"

    goto :goto_6

    :cond_16
    const-string v0, "0"

    goto :goto_f
.end method
