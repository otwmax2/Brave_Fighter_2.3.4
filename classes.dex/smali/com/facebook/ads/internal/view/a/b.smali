###### Class com.facebook.ads.internal.view.a.b (com.facebook.ads.internal.view.a.b)
.class public Lcom/facebook/ads/internal/view/a/b;
.super Landroid/widget/ProgressBar;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x0

    const/16 v0, 0x1a

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/internal/view/a/b;->a:I

    const/16 v0, 0x58

    const/16 v1, 0x90

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/facebook/ads/internal/view/a/b;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/b;->a()V

    return-void
.end method

.method private a()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/a/b;->setIndeterminate(Z)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/a/b;->setMax(I)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/a/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/a/b;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/a/b;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/a/b;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/b;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/b;->d:Landroid/graphics/Paint;

    sget v1, Lcom/facebook/ads/internal/view/a/b;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/facebook/ads/internal/view/a/b;->b:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/b;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/a/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/b;->c:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a/b;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3

    monitor-enter p0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_b

    const/4 v0, 0x0

    :goto_6
    :try_start_6
    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_11

    monitor-exit p0

    return-void

    :cond_b
    const/4 v0, 0x5

    :try_start_c
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    move-result v0

    goto :goto_6

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
