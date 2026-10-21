###### Class com.chartboost.sdk.impl.ba (com.chartboost.sdk.impl.ba)
.class public abstract Lcom/chartboost/sdk/impl/ba;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    .line 16
    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba;->b:Landroid/graphics/Canvas;

    .line 20
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ba;->a(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 39
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 43
    :goto_29
    return-void

    .line 40
    :catch_2a
    move-exception v0

    goto :goto_29
.end method

.method private b(Landroid/graphics/Canvas;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 47
    :try_start_1
    const-class v0, Landroid/graphics/Canvas;

    const-string v2, "isHardwareAccelerated"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1a

    move-result v0

    .line 50
    :goto_19
    return v0

    .line 49
    :catch_1a
    move-exception v0

    move v0, v1

    .line 50
    goto :goto_19
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/Canvas;)V
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ba;->b(Landroid/graphics/Canvas;)Z

    move-result v3

    .line 60
    if-eqz v3, :cond_65

    .line 63
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    if-ne v1, v4, :cond_24

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    if-eq v1, v4, :cond_4e

    .line 64
    :cond_24
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_35

    .line 65
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    :cond_35
    :try_start_35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    .line 68
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ba;->b:Landroid/graphics/Canvas;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_4e} :catch_63

    .line 75
    :cond_4e
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ba;->b:Landroid/graphics/Canvas;

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v0, "canvas":Landroid/graphics/Canvas;
    move-object v1, p1

    move-object p1, v0

    .line 80
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :goto_58
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ba;->a(Landroid/graphics/Canvas;)V

    .line 82
    if-eqz v3, :cond_62

    .line 84
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ba;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    :cond_62
    :goto_62
    return-void

    .line 69
    :catch_63
    move-exception v1

    goto :goto_62

    :cond_65
    move-object v1, v2

    goto :goto_58
.end method
