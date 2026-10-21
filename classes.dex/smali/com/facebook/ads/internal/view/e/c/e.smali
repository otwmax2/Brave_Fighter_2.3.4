###### Class com.facebook.ads.internal.view.e.c.e (com.facebook.ads.internal.view.e.c.e)
.class public Lcom/facebook/ads/internal/view/e/c/e;
.super Lcom/facebook/ads/internal/view/e/a/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/facebook/ads/internal/m/c;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const/4 v7, -0x2

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/a/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/c/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/e/c/e;->c:Lcom/facebook/ads/internal/m/c;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/e/c/e;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/c/e;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/e;->b:Landroid/widget/TextView;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/e;->b:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/e;->b:Landroid/widget/TextView;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->e:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->e:Landroid/graphics/Paint;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->f:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/e;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/e;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/e/c/e;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/e;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/e;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/c/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/c/e;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/e;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/e/c/e;)Lcom/facebook/ads/internal/m/c;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->c:Lcom/facebook/ads/internal/m/c;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/e/c/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/ads/internal/view/e/c/e$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/e/c/e$1;-><init>(Lcom/facebook/ads/internal/view/e/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected b()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->b()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/e;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/e;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/e;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/e/a/c;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.e.AnonymousClass1 (com.facebook.ads.internal.view.e.c.e$1)
.class Lcom/facebook/ads/internal/view/e/c/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/e;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/e$1;->a:Lcom/facebook/ads/internal/view/e/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e$1;->a:Lcom/facebook/ads/internal/view/e/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/e;->a(Lcom/facebook/ads/internal/view/e/c/e;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/e$1;->a:Lcom/facebook/ads/internal/view/e/c/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/e;->b(Lcom/facebook/ads/internal/view/e/c/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/e$1;->a:Lcom/facebook/ads/internal/view/e/c/e;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/e;->c(Lcom/facebook/ads/internal/view/e/c/e;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/internal/view/e/b/a;

    invoke-direct {v2, v0}, Lcom/facebook/ads/internal/view/e/b/a;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/j/e;->a(Lcom/facebook/ads/internal/j/d;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/e$1;->a:Lcom/facebook/ads/internal/view/e/c/e;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/c/e;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/e$1;->a:Lcom/facebook/ads/internal/view/e/c/e;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/e/c/e;->d(Lcom/facebook/ads/internal/view/e/c/e;)Lcom/facebook/ads/internal/m/c;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/e$1;->a:Lcom/facebook/ads/internal/view/e/c/e;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/e/c/e;->e(Lcom/facebook/ads/internal/view/e/c/e;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2, v3, v0, v4}, Lcom/facebook/ads/internal/a/b;->a(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->b()V

    goto :goto_8
.end method
