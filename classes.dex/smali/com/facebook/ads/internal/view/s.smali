###### Class com.facebook.ads.internal.view.s (com.facebook.ads.internal.view.s)
.class public Lcom/facebook/ads/internal/view/s;
.super Landroid/widget/TextView;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/s;->b:F

    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/s;->getTextSize()F

    move-result v0

    sget v1, Lcom/facebook/ads/internal/q/a/v;->b:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/internal/view/s;->a:F

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/s;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 13

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    sub-int v1, p4, p2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/s;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/s;->getMeasuredWidth()I

    move-result v3

    iget v0, p0, Lcom/facebook/ads/internal/view/s;->a:F

    :goto_f
    iget v4, p0, Lcom/facebook/ads/internal/view/s;->b:F

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_21

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0, v5, v5}, Lcom/facebook/ads/internal/view/s;->measure(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/s;->getMeasuredWidth()I

    move-result v4

    if-gt v4, v1, :cond_39

    :cond_21
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/s;->getMeasuredWidth()I

    move-result v0

    if-le v0, v1, :cond_32

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/s;->measure(II)V

    :cond_32
    invoke-virtual {p0, v3, v2}, Lcom/facebook/ads/internal/view/s;->setMeasuredDimension(II)V

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    return-void

    :cond_39
    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v0, v4

    goto :goto_f
.end method

.method public setMaxLines(I)V
    .registers 2

    return-void
.end method

.method public setMinTextSize(F)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/internal/view/s;->a:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_8

    iput p1, p0, Lcom/facebook/ads/internal/view/s;->b:F

    :cond_8
    return-void
.end method

.method public setSingleLine(Z)V
    .registers 2

    return-void
.end method

.method public setTextSize(F)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/internal/view/s;->a:F

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
