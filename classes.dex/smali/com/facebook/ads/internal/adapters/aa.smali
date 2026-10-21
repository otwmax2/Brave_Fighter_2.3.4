###### Class com.facebook.ads.internal.adapters.aa (com.facebook.ads.internal.adapters.aa)
.class public Lcom/facebook/ads/internal/adapters/aa;
.super Lcom/facebook/ads/internal/adapters/b;


# instance fields
.field private final c:Lcom/facebook/ads/internal/adapters/ab;

.field private d:Lcom/facebook/ads/internal/n/i;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/view/View;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/c;Lcom/facebook/ads/internal/r/a;Lcom/facebook/ads/internal/adapters/ab;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/adapters/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/c;Lcom/facebook/ads/internal/r/a;)V

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/aa;->c:Lcom/facebook/ads/internal/adapters/ab;

    return-void
.end method

.method private b(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/adapters/aa;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string v0, "Json exception"

    goto :goto_8
.end method

.method private c(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 10

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "id"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "origin"

    const-string v4, "{x:%d, y:%d}"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "size"

    const-string v4, "{h:%d, w:%d}"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/aa;->i:Ljava/util/List;

    if-eqz v3, :cond_a1

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/aa;->i:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    :goto_6c
    const-string v3, "clickable"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "unknown"

    instance-of v3, p1, Landroid/widget/Button;

    if-eqz v3, :cond_a3

    const-string v0, "button"

    :cond_7d
    :goto_7d
    const-string v3, "type"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_c4

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_8d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_bf

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/ads/internal/adapters/aa;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    :cond_a1
    move v0, v1

    goto :goto_6c

    :cond_a3
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_aa

    const-string v0, "text"

    goto :goto_7d

    :cond_aa
    instance-of v3, p1, Landroid/widget/ImageView;

    if-eqz v3, :cond_b1

    const-string v0, "image"

    goto :goto_7d

    :cond_b1
    instance-of v3, p1, Lcom/facebook/ads/MediaView;

    if-eqz v3, :cond_b8

    const-string v0, "mediaview"

    goto :goto_7d

    :cond_b8
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7d

    const-string v0, "viewgroup"

    goto :goto_7d

    :cond_bf
    const-string v1, "list"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c4
    return-object v2
.end method

.method private d(Landroid/view/View;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_f

    :cond_c
    const-string v0, ""

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/aa;->c:Lcom/facebook/ads/internal/adapters/ab;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/ab;->i()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4a} :catch_4c

    move-result-object v0

    goto :goto_e

    :catch_4c
    move-exception v0

    const-string v0, ""

    goto :goto_e
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/aa;->h:Landroid/view/View;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/n/i;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/aa;->d:Lcom/facebook/ads/internal/n/i;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/aa;->i:Ljava/util/List;

    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/aa;->c:Lcom/facebook/ads/internal/adapters/ab;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/aa;->a:Lcom/facebook/ads/internal/adapters/c;

    if-eqz v0, :cond_32

    const-string v0, "mil"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/aa;->a:Lcom/facebook/ads/internal/adapters/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/c;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "eil"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/aa;->a:Lcom/facebook/ads/internal/adapters/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/c;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "eil_source"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/aa;->a:Lcom/facebook/ads/internal/adapters/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/aa;->d:Lcom/facebook/ads/internal/n/i;

    if-eqz v0, :cond_45

    const-string v0, "nti"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/aa;->d:Lcom/facebook/ads/internal/n/i;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/i;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/aa;->e:Z

    if-eqz v0, :cond_54

    const-string v0, "nhs"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/aa;->f:Z

    if-eqz v0, :cond_63

    const-string v0, "nmv"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/aa;->g:Z

    if-eqz v0, :cond_72

    const-string v0, "nmvap"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/aa;->h:Landroid/view/View;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/aa;->c:Lcom/facebook/ads/internal/adapters/ab;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->f()Z

    move-result v0

    if-eqz v0, :cond_89

    const-string v0, "view"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/aa;->h:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/adapters/aa;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/aa;->h:Landroid/view/View;

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/aa;->c:Lcom/facebook/ads/internal/adapters/ab;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->e()Z

    move-result v0

    if-eqz v0, :cond_a0

    const-string v0, "snapshot"

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/aa;->h:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/adapters/aa;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/aa;->c:Lcom/facebook/ads/internal/adapters/ab;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/ab;->a(Ljava/util/Map;)V

    goto/16 :goto_4
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/aa;->e:Z

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/aa;->f:Z

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/aa;->g:Z

    return-void
.end method
