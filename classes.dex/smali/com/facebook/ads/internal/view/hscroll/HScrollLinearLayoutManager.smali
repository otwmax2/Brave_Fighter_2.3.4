###### Class com.facebook.ads.internal.view.hscroll.HScrollLinearLayoutManager (com.facebook.ads.internal.view.hscroll.HScrollLinearLayoutManager)
.class public Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/hscroll/c;

.field private final b:Lcom/facebook/ads/internal/view/hscroll/a;

.field private final c:Landroid/content/Context;

.field private d:[I

.field private e:I

.field private f:F

.field private g:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/hscroll/c;Lcom/facebook/ads/internal/view/hscroll/a;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->e:I

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->f:F

    iput-object p1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->a:Lcom/facebook/ads/internal/view/hscroll/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->b:Lcom/facebook/ads/internal/view/hscroll/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h:I

    new-instance v0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;-><init>(Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;)F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->f:F

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;)I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->e:I

    return v0
.end method


# virtual methods
.method public a(D)V
    .registers 8

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_a

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :cond_a
    div-double/2addr v0, p1

    double-to-float v0, v0

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->f:F

    new-instance v0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;-><init>(Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

    return-void
.end method

.method a(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h:I

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->e:I

    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .registers 16

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v2, v0, :cond_13

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    :cond_13
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v3, v0, :cond_21

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_21

    :cond_1d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    :goto_20
    return-void

    :cond_21
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->b:Lcom/facebook/ads/internal/view/hscroll/a;

    iget v1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/hscroll/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->b:Lcom/facebook/ads/internal/view/hscroll/a;

    iget v1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/hscroll/a;->a(I)[I

    move-result-object v0

    :cond_3b
    :goto_3b
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_42

    const/4 v1, 0x0

    aput v4, v0, v1

    :cond_42
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v3, v1, :cond_49

    const/4 v1, 0x1

    aput v5, v0, v1

    :cond_49
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->setMeasuredDimension(II)V

    goto :goto_20

    :cond_53
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_ce

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    const/4 v6, 0x1

    if-lt v1, v6, :cond_3b

    const/4 v6, 0x1

    const/4 v1, 0x0

    :goto_62
    if-ge v1, v6, :cond_c0

    iget-object v7, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->a:Lcom/facebook/ads/internal/view/hscroll/c;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, p1, v1, v8, v9}, Lcom/facebook/ads/internal/view/hscroll/c;->a(Landroid/support/v7/widget/RecyclerView$Recycler;III)[I

    move-result-object v7

    iput-object v7, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->d:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->getOrientation()I

    move-result v7

    if-nez v7, :cond_a0

    const/4 v7, 0x0

    aget v8, v0, v7

    iget-object v9, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->d:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v0, v7

    if-nez v1, :cond_9d

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->d:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v0, v7

    :cond_9d
    :goto_9d
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_a0
    const/4 v7, 0x1

    aget v8, v0, v7

    iget-object v9, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->d:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    aput v8, v0, v7

    if-nez v1, :cond_9d

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->d:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v0, v7

    goto :goto_9d

    :cond_c0
    iget v1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_3b

    iget-object v1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->b:Lcom/facebook/ads/internal/view/hscroll/a;

    iget v6, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->h:I

    invoke-virtual {v1, v6, v0}, Lcom/facebook/ads/internal/view/hscroll/a;->a(I[I)V

    goto/16 :goto_3b

    :array_ce
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public scrollToPosition(I)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->e:I

    invoke-super {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;->setTargetPosition(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->g:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.hscroll.HScrollLinearLayoutManager.a (com.facebook.ads.internal.view.hscroll.HScrollLinearLayoutManager$a)
.class Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;
.super Landroid/support/v7/widget/LinearSmoothScroller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;->a:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 9

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    sub-int v4, v0, v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;->calculateDtToFit(IIIII)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;->a:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->b(Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_b
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;->a:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->a(Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;)F

    move-result v0

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager$a;->a:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected getHorizontalSnapPreference()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method
