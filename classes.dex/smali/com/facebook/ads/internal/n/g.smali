###### Class com.facebook.ads.internal.n.g (com.facebook.ads.internal.n.g)
.class public Lcom/facebook/ads/internal/n/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:D

.field private final b:D


# direct methods
.method public constructor <init>(DD)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/internal/n/g;->a:D

    iput-wide p3, p0, Lcom/facebook/ads/internal/n/g;->b:D

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/n/g;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    const-string v1, "value"

    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    const-string v1, "scale"

    invoke-virtual {p0, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    cmpl-double v1, v2, v6

    if-eqz v1, :cond_5

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_5

    new-instance v0, Lcom/facebook/ads/internal/n/g;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/facebook/ads/internal/n/g;-><init>(DD)V

    goto :goto_5
.end method


# virtual methods
.method public a()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/internal/n/g;->a:D

    return-wide v0
.end method

.method public b()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/internal/n/g;->b:D

    return-wide v0
.end method
