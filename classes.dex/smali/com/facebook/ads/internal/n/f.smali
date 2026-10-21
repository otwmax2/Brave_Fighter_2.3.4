###### Class com.facebook.ads.internal.n.f (com.facebook.ads.internal.n.f)
.class public Lcom/facebook/ads/internal/n/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/n/f;->a:Ljava/lang/String;

    iput p2, p0, Lcom/facebook/ads/internal/n/f;->b:I

    iput p3, p0, Lcom/facebook/ads/internal/n/f;->c:I

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/n/f;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v0, "width"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "height"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Lcom/facebook/ads/internal/n/f;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    goto :goto_4
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/n/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/n/f;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/n/f;->c:I

    return v0
.end method
