###### Class com.facebook.ads.internal.view.t (com.facebook.ads.internal.view.t)
.class public Lcom/facebook/ads/internal/view/t;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/facebook/ads/internal/view/t;->a:I

    iput v0, p0, Lcom/facebook/ads/internal/view/t;->b:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget v0, p0, Lcom/facebook/ads/internal/view/t;->b:I

    if-lez v0, :cond_19

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/t;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/facebook/ads/internal/view/t;->b:I

    if-le v0, v1, :cond_19

    iget v0, p0, Lcom/facebook/ads/internal/view/t;->b:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/t;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/t;->setMeasuredDimension(II)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/t;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/facebook/ads/internal/view/t;->a:I

    if-ge v0, v1, :cond_18

    iget v0, p0, Lcom/facebook/ads/internal/view/t;->a:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/t;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/t;->setMeasuredDimension(II)V

    goto :goto_18
.end method

.method public setMaxWidth(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/internal/view/t;->b:I

    return-void
.end method

.method public setMinWidth(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/internal/view/t;->a:I

    return-void
.end method
