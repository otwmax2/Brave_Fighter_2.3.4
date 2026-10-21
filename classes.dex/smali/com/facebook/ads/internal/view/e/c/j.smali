###### Class com.facebook.ads.internal.view.e.c.j (com.facebook.ads.internal.view.e.c.j)
.class public Lcom/facebook/ads/internal/view/e/c/j;
.super Landroid/view/View;

# interfaces
.implements Lcom/facebook/ads/internal/view/e/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/e/c/j$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:Lcom/facebook/ads/internal/view/e/c/j$a;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/RectF;

.field private g:Lcom/facebook/ads/internal/view/e/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:I

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final k:Lcom/facebook/ads/internal/view/e/b/m;

.field private final l:Lcom/facebook/ads/internal/view/e/b/o;

.field private final m:Lcom/facebook/ads/internal/view/e/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 10

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/ads/internal/view/e/c/j$a;->a:Lcom/facebook/ads/internal/view/e/c/j$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->d:Lcom/facebook/ads/internal/view/e/c/j$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/j$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/j$1;-><init>(Lcom/facebook/ads/internal/view/e/c/j;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->k:Lcom/facebook/ads/internal/view/e/b/m;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/j$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/j$2;-><init>(Lcom/facebook/ads/internal/view/e/c/j;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->l:Lcom/facebook/ads/internal/view/e/b/o;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/j$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/j$3;-><init>(Lcom/facebook/ads/internal/view/e/c/j;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->m:Lcom/facebook/ads/internal/view/e/b/c;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/facebook/ads/internal/view/e/c/j;->h:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->c:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->c:Landroid/graphics/Paint;

    const/16 v2, 0xe6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->c:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->a:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->a:Landroid/graphics/Paint;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->a:Landroid/graphics/Paint;

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v5, v1}, Lcom/facebook/ads/internal/view/e/c/j;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->a:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x40c00000    # 6.0f

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->e:Landroid/graphics/Paint;

    const v2, -0x99999a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->e:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->f:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/j;I)I
    .registers 2

    iput p1, p0, Lcom/facebook/ads/internal/view/e/c/j;->h:I

    return p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/j;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/c/j;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->g:Lcom/facebook/ads/internal/view/e/b;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/c/j;)I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->h:I

    return v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/e/c/j;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/view/e/b;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/j;->g:Lcom/facebook/ads/internal/view/e/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->g:Lcom/facebook/ads/internal/view/e/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/j;->k:Lcom/facebook/ads/internal/view/e/b/m;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/j;->l:Lcom/facebook/ads/internal/view/e/b/o;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/j;->m:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a([Lcom/facebook/ads/internal/j/f;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->g:Lcom/facebook/ads/internal/view/e/b;

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->h:I

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b(Lcom/facebook/ads/internal/view/e/b;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->g:Lcom/facebook/ads/internal/view/e/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/j;->m:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/j;->l:Lcom/facebook/ads/internal/view/e/b/o;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/j;->k:Lcom/facebook/ads/internal/view/e/b/m;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b([Lcom/facebook/ads/internal/j/f;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->g:Lcom/facebook/ads/internal/view/e/b;

    return-void
.end method

.method public getSkipSeconds()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->h:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, p0, Lcom/facebook/ads/internal/view/e/c/j;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    int-to-float v4, v1

    iget-object v5, p0, Lcom/facebook/ads/internal/view/e/c/j;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/j;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_128

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/j;->d:Lcom/facebook/ads/internal/view/e/c/j$a;

    sget-object v3, Lcom/facebook/ads/internal/view/e/c/j$a;->b:Lcom/facebook/ads/internal/view/e/c/j$a;

    if-ne v2, v3, :cond_df

    div-int/lit8 v2, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v2

    int-to-float v4, v4

    mul-int/lit8 v5, v0, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, p0, Lcom/facebook/ads/internal/view/e/c/j;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_da
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_b

    :cond_df
    div-int/lit8 v6, v0, 0x3

    div-int/lit8 v7, v0, 0x3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v6

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v2, v0

    mul-int/lit8 v0, v6, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    mul-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/facebook/ads/internal/view/e/c/j;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v0, v6, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v6

    int-to-float v3, v0

    mul-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/facebook/ads/internal/view/e/c/j;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_da

    :cond_128
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/j;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j;->f:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    mul-int/lit16 v0, v0, 0x168

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v3, v0, v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/ads/internal/view/e/c/j;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_da
.end method

.method public setButtonMode(Lcom/facebook/ads/internal/view/e/c/j$a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/j;->d:Lcom/facebook/ads/internal/view/e/c/j$a;

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.j.AnonymousClass1 (com.facebook.ads.internal.view.e.c.j$1)
.class Lcom/facebook/ads/internal/view/e/c/j$1;
.super Lcom/facebook/ads/internal/view/e/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/j;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/j;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/j$1;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/l;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/j$1;->a(Lcom/facebook/ads/internal/view/e/b/l;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/l;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j$1;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/j;->a(Lcom/facebook/ads/internal/view/e/c/j;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.j.AnonymousClass2 (com.facebook.ads.internal.view.e.c.j$2)
.class Lcom/facebook/ads/internal/view/e/c/j$2;
.super Lcom/facebook/ads/internal/view/e/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/j;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/j;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/j$2;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/o;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/n;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/j$2;->a(Lcom/facebook/ads/internal/view/e/b/n;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/n;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j$2;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/j;->b(Lcom/facebook/ads/internal/view/e/c/j;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j$2;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/j;->c(Lcom/facebook/ads/internal/view/e/c/j;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j$2;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/j;->b(Lcom/facebook/ads/internal/view/e/c/j;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b;->getDuration()I

    move-result v1

    if-gtz v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j$2;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/j;->d(Lcom/facebook/ads/internal/view/e/c/j;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_25
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j$2;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/c/j;->postInvalidate()V

    goto :goto_8

    :cond_2b
    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/j$2;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/j;->d(Lcom/facebook/ads/internal/view/e/c/j;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/j$2;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/e/c/j;->b(Lcom/facebook/ads/internal/view/e/c/j;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/e/b;->getCurrentPosition()I

    move-result v2

    sub-int v2, v0, v2

    mul-int/lit8 v2, v2, 0x64

    div-int v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_25
.end method

###### Class com.facebook.ads.internal.view.e.c.j.AnonymousClass3 (com.facebook.ads.internal.view.e.c.j$3)
.class Lcom/facebook/ads/internal/view/e/c/j$3;
.super Lcom/facebook/ads/internal/view/e/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/j;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/j;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/j$3;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/j$3;->a(Lcom/facebook/ads/internal/view/e/b/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/b;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j$3;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/e/c/j;->a(Lcom/facebook/ads/internal/view/e/c/j;I)I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j$3;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/j;->d(Lcom/facebook/ads/internal/view/e/c/j;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/j$3;->a:Lcom/facebook/ads/internal/view/e/c/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/c/j;->postInvalidate()V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.j.a (com.facebook.ads.internal.view.e.c.j$a)
.class public final enum Lcom/facebook/ads/internal/view/e/c/j$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/view/e/c/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/view/e/c/j$a;

.field public static final enum b:Lcom/facebook/ads/internal/view/e/c/j$a;

.field private static final synthetic c:[Lcom/facebook/ads/internal/view/e/c/j$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/j$a;

    const-string v1, "CLOSE_BUTTON_MODE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/e/c/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/e/c/j$a;->a:Lcom/facebook/ads/internal/view/e/c/j$a;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/j$a;

    const-string v1, "SKIP_BUTTON_MODE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/view/e/c/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/e/c/j$a;->b:Lcom/facebook/ads/internal/view/e/c/j$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/view/e/c/j$a;

    sget-object v1, Lcom/facebook/ads/internal/view/e/c/j$a;->a:Lcom/facebook/ads/internal/view/e/c/j$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/view/e/c/j$a;->b:Lcom/facebook/ads/internal/view/e/c/j$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ads/internal/view/e/c/j$a;->c:[Lcom/facebook/ads/internal/view/e/c/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/view/e/c/j$a;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/view/e/c/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/e/c/j$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/view/e/c/j$a;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/view/e/c/j$a;->c:[Lcom/facebook/ads/internal/view/e/c/j$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/view/e/c/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/view/e/c/j$a;

    return-object v0
.end method
