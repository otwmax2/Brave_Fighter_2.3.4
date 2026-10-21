###### Class com.chartboost.sdk.impl.u (com.chartboost.sdk.impl.u)
.class public Lcom/chartboost/sdk/impl/u;
.super Lcom/chartboost/sdk/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/u$a;
    }
.end annotation


# instance fields
.field j:Lcom/chartboost/sdk/Libraries/h;

.field k:Lcom/chartboost/sdk/Libraries/h;

.field l:Lcom/chartboost/sdk/Libraries/h;

.field m:Lcom/chartboost/sdk/Libraries/h;

.field n:Lcom/chartboost/sdk/Libraries/h;

.field o:Lcom/chartboost/sdk/Libraries/h;

.field protected p:F

.field private final q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V
    .registers 5

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/e;-><init>(Lcom/chartboost/sdk/Model/c;Landroid/os/Handler;Lcom/chartboost/sdk/c;)V

    .line 32
    const-string v0, "ImageViewProtocol"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->q:Ljava/lang/String;

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chartboost/sdk/impl/u;->p:F

    .line 226
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->j:Lcom/chartboost/sdk/Libraries/h;

    .line 227
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/h;

    .line 228
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 229
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->m:Lcom/chartboost/sdk/Libraries/h;

    .line 230
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->n:Lcom/chartboost/sdk/Libraries/h;

    .line 231
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/h;-><init>(Lcom/chartboost/sdk/e;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 232
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V
    .registers 6

    .prologue
    .line 279
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 280
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    :cond_24
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-super {p0, p1}, Lcom/chartboost/sdk/e;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 264
    :goto_7
    return v0

    .line 244
    :cond_8
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v2, "frame-portrait"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v2, "close-portrait"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 245
    :cond_1c
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u;->h:Z

    .line 246
    :cond_1e
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v2, "frame-landscape"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v2, "close-landscape"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 247
    :cond_32
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u;->i:Z

    .line 249
    :cond_34
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v2, "ad-portrait"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 250
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u;->h:Z

    .line 251
    :cond_40
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const-string v2, "ad-landscape"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 252
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u;->i:Z

    .line 254
    :cond_4c
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "frame-landscape"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->j:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "frame-portrait"

    .line 255
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->m:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "close-landscape"

    .line 256
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->l:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "close-portrait"

    .line 257
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->o:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "ad-landscape"

    .line 258
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/chartboost/sdk/impl/u;->n:Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "ad-portrait"

    .line 259
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_96

    .line 260
    :cond_88
    const-string v1, "ImageViewProtocol"

    const-string v2, "Error while downloading the assets"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto/16 :goto_7

    .line 264
    :cond_96
    const/4 v0, 0x1

    goto/16 :goto_7
.end method

.method protected b(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->d:Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    const-string v3, "offset"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_25

    .line 270
    new-instance v0, Landroid/graphics/Point;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 271
    :goto_24
    return-object v0

    :cond_25
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_24
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/e$a;
    .registers 3

    .prologue
    .line 236
    new-instance v0, Lcom/chartboost/sdk/impl/u$a;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/u$a;-><init>(Lcom/chartboost/sdk/impl/u;Landroid/content/Context;)V

    return-object v0
.end method

.method public d()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-super {p0}, Lcom/chartboost/sdk/e;->d()V

    .line 288
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 289
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->j:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->m:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 291
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->l:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->o:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 293
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->n:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->c()V

    .line 294
    iput-object v1, p0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/h;

    .line 295
    iput-object v1, p0, Lcom/chartboost/sdk/impl/u;->j:Lcom/chartboost/sdk/Libraries/h;

    .line 296
    iput-object v1, p0, Lcom/chartboost/sdk/impl/u;->m:Lcom/chartboost/sdk/Libraries/h;

    .line 297
    iput-object v1, p0, Lcom/chartboost/sdk/impl/u;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 298
    iput-object v1, p0, Lcom/chartboost/sdk/impl/u;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 299
    iput-object v1, p0, Lcom/chartboost/sdk/impl/u;->n:Lcom/chartboost/sdk/Libraries/h;

    .line 300
    return-void
.end method

###### Class com.chartboost.sdk.impl.u.a (com.chartboost.sdk.impl.u$a)
.class public Lcom/chartboost/sdk/impl/u$a;
.super Lcom/chartboost/sdk/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field protected c:Lcom/chartboost/sdk/impl/ax;

.field protected d:Lcom/chartboost/sdk/impl/ay;

.field protected e:Lcom/chartboost/sdk/impl/ay;

.field protected f:Landroid/widget/ImageView;

.field final synthetic g:Lcom/chartboost/sdk/impl/u;

.field private h:Z


# direct methods
.method protected constructor <init>(Lcom/chartboost/sdk/impl/u;Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 57
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/e$a;-><init>(Lcom/chartboost/sdk/e;Landroid/content/Context;)V

    .line 60
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u$a;->h:Z

    .line 62
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u$a;->setBackgroundColor(I)V

    .line 63
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v1

    .line 67
    new-instance v0, Lcom/chartboost/sdk/impl/ax;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/ax;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ax;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->c:Lcom/chartboost/sdk/impl/ax;

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->c:Lcom/chartboost/sdk/impl/ax;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/u$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Lcom/chartboost/sdk/impl/u$a$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/chartboost/sdk/impl/u$a$1;-><init>(Lcom/chartboost/sdk/impl/u$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/u;)V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ay;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->e:Lcom/chartboost/sdk/impl/ay;

    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u$a;->a(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->e:Lcom/chartboost/sdk/impl/ay;

    const-string v2, "CBAd"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ay;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->f:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->f:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 87
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u$a;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u$a;->addView(Landroid/view/View;)V

    .line 90
    return-void
.end method


# virtual methods
.method protected a(FFFF)V
    .registers 9

    .prologue
    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "x"

    .line 106
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    .line 107
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "w"

    .line 108
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "h"

    .line 109
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/u;->b(Lorg/json/JSONObject;)Z

    .line 112
    return-void
.end method

.method protected a(II)V
    .registers 16

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, -0x2

    const/high16 v9, 0x40000000    # 2.0f

    .line 117
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/u$a;->h:Z

    if-nez v0, :cond_10

    .line 118
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u$a;->c()V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/u$a;->h:Z

    .line 122
    :cond_10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->a()I

    move-result v0

    .line 124
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v4

    .line 126
    if-eqz v4, :cond_1a1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/u;->j:Lcom/chartboost/sdk/Libraries/h;

    .line 127
    :goto_20
    if-eqz v4, :cond_1a7

    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u;->l:Lcom/chartboost/sdk/Libraries/h;

    .line 129
    :goto_26
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v2

    if-nez v2, :cond_36

    .line 130
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/u;->j:Lcom/chartboost/sdk/Libraries/h;

    if-ne v1, v2, :cond_1ad

    .line 131
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/h;

    .line 136
    :cond_36
    :goto_36
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v2

    if-nez v2, :cond_46

    .line 137
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/u;->l:Lcom/chartboost/sdk/Libraries/h;

    if-ne v0, v2, :cond_1b3

    .line 138
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u;->m:Lcom/chartboost/sdk/Libraries/h;

    .line 143
    :cond_46
    :goto_46
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v2, v5, v1, v11}, Lcom/chartboost/sdk/impl/u;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 150
    int-to-float v2, p1

    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 152
    iget-object v3, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    invoke-static {v2, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v3, Lcom/chartboost/sdk/impl/u;->p:F

    .line 153
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget v3, v3, Lcom/chartboost/sdk/impl/u;->p:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 154
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget v3, v3, Lcom/chartboost/sdk/impl/u;->p:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 156
    iget-object v3, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    if-eqz v4, :cond_1b9

    const-string v2, "frame-portrait"

    :goto_87
    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/u;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v2

    .line 157
    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget v8, v8, Lcom/chartboost/sdk/impl/u;->p:F

    mul-float/2addr v7, v8

    add-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 158
    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v7

    div-float/2addr v2, v7

    iget-object v7, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget v7, v7, Lcom/chartboost/sdk/impl/u;->p:F

    mul-float/2addr v2, v7

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 161
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v2, v6, v0, v11}, Lcom/chartboost/sdk/impl/u;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 162
    iget-object v3, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    if-eqz v4, :cond_1bd

    const-string v2, "close-portrait"

    :goto_ca
    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/u;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v2

    .line 164
    iget v3, v2, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_1c1

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-nez v3, :cond_1c1

    .line 166
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v2, v3

    iget v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v2

    .line 167
    iget v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v2, v7

    .line 172
    :goto_f1
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v7, p1, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 173
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, p2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 176
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u$a;->c:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/impl/ax;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u$a;->d:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v2, v6}, Lcom/chartboost/sdk/impl/ay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u$a;->c:Lcom/chartboost/sdk/impl/ax;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/ax;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 181
    iget-object v2, p0, Lcom/chartboost/sdk/impl/u$a;->c:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 182
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$a;->d:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ay;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 185
    if-eqz v4, :cond_1ed

    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u;->n:Lcom/chartboost/sdk/Libraries/h;

    .line 187
    :goto_12e
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v1

    if-nez v1, :cond_13e

    .line 188
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u;->n:Lcom/chartboost/sdk/Libraries/h;

    if-ne v0, v1, :cond_1f3

    .line 189
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u;->o:Lcom/chartboost/sdk/Libraries/h;

    .line 194
    :cond_13e
    :goto_13e
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 196
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget v3, v3, Lcom/chartboost/sdk/impl/u;->p:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/chartboost/sdk/impl/u;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 197
    iget-object v3, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    if-eqz v4, :cond_1f9

    const-string v1, "ad-portrait"

    :goto_152
    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/impl/u;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 198
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget v5, v5, Lcom/chartboost/sdk/impl/u;->p:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 199
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget v4, v4, Lcom/chartboost/sdk/impl/u;->p:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 201
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$a;->e:Lcom/chartboost/sdk/impl/ay;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/ay;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 204
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ay;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 205
    return-void

    .line 126
    :cond_1a1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/u;->k:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_20

    .line 127
    :cond_1a7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u;->m:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_26

    .line 133
    :cond_1ad
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/u;->j:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_36

    .line 140
    :cond_1b3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u;->l:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_46

    .line 156
    :cond_1b9
    const-string v2, "frame-landscape"

    goto/16 :goto_87

    .line 162
    :cond_1bd
    const-string v2, "close-landscape"

    goto/16 :goto_ca

    .line 169
    :cond_1c1
    iget v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    int-to-float v3, v3

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    add-float/2addr v3, v7

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    add-float/2addr v3, v7

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 170
    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v7, v7

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto/16 :goto_f1

    .line 185
    :cond_1ed
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u;->o:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_12e

    .line 191
    :cond_1f3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u;->n:Lcom/chartboost/sdk/Libraries/h;

    goto/16 :goto_13e

    .line 197
    :cond_1f9
    const-string v1, "ad-landscape"

    goto/16 :goto_152
.end method

.method public b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 213
    invoke-super {p0}, Lcom/chartboost/sdk/e$a;->b()V

    .line 214
    iput-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->c:Lcom/chartboost/sdk/impl/ax;

    .line 215
    iput-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->d:Lcom/chartboost/sdk/impl/ay;

    .line 217
    iput-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->e:Lcom/chartboost/sdk/impl/ay;

    .line 218
    iput-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->f:Landroid/widget/ImageView;

    .line 219
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    .line 94
    new-instance v0, Lcom/chartboost/sdk/impl/u$a$2;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/u$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/u$a$2;-><init>(Lcom/chartboost/sdk/impl/u$a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->d:Lcom/chartboost/sdk/impl/ay;

    .line 100
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->d:Lcom/chartboost/sdk/impl/ay;

    const-string v1, "CBClose"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->d:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/u$a;->addView(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method protected d()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a;->g:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->h()V

    .line 209
    return-void
.end method

###### Class com.chartboost.sdk.impl.u.a.AnonymousClass1 (com.chartboost.sdk.impl.u$a$1)
.class Lcom/chartboost/sdk/impl/u$a$1;
.super Lcom/chartboost/sdk/impl/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/u$a;-><init>(Lcom/chartboost/sdk/impl/u;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/u;

.field final synthetic b:Lcom/chartboost/sdk/impl/u$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/u$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/u;)V
    .registers 4

    .prologue
    .line 72
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u$a$1;->b:Lcom/chartboost/sdk/impl/u$a;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/u$a$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ay;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .registers 7

    .prologue
    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a$1;->b:Lcom/chartboost/sdk/impl/u$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/u$a$1;->b:Lcom/chartboost/sdk/impl/u$a;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/u$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ay;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/chartboost/sdk/impl/u$a$1;->b:Lcom/chartboost/sdk/impl/u$a;

    iget-object v4, v4, Lcom/chartboost/sdk/impl/u$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v4}, Lcom/chartboost/sdk/impl/ay;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartboost/sdk/impl/u$a;->a(FFFF)V

    .line 76
    return-void
.end method

###### Class com.chartboost.sdk.impl.u.a.AnonymousClass2 (com.chartboost.sdk.impl.u$a$2)
.class Lcom/chartboost/sdk/impl/u$a$2;
.super Lcom/chartboost/sdk/impl/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/u$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/u$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/u$a;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 94
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u$a$2;->a:Lcom/chartboost/sdk/impl/u$a;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ay;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$a$2;->a:Lcom/chartboost/sdk/impl/u$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u$a;->d()V

    .line 98
    return-void
.end method
