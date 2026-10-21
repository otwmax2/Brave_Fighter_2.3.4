###### Class com.facebook.ads.internal.view.hscroll.d (com.facebook.ads.internal.view.hscroll.d)
.class public Lcom/facebook/ads/internal/view/hscroll/d;
.super Landroid/support/v7/widget/RecyclerView;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/hscroll/d$a;
    }
.end annotation


# instance fields
.field protected final a:I

.field protected b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/support/v7/widget/LinearLayoutManager;

.field private g:Lcom/facebook/ads/internal/view/hscroll/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->b:I

    iput v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->d:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->e:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/hscroll/d;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->a:I

    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/view/hscroll/d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->b:I

    iput v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->d:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->e:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/hscroll/d;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->a:I

    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/view/hscroll/d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->b:I

    iput v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->d:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->e:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/hscroll/d;->a()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->a:I

    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/view/hscroll/d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private a()I
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private a(I)I
    .registers 5

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->c:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->g:Lcom/facebook/ads/internal/view/hscroll/d$a;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/view/hscroll/d$a;->a(I)I

    move-result v1

    iget v2, p0, Lcom/facebook/ads/internal/view/hscroll/d;->a:I

    if-le v0, v2, :cond_14

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->b:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/view/hscroll/d;->a(II)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    iget v2, p0, Lcom/facebook/ads/internal/view/hscroll/d;->a:I

    neg-int v2, v2

    if-ge v0, v2, :cond_20

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->b:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/view/hscroll/d;->b(II)I

    move-result v0

    goto :goto_13

    :cond_20
    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->b:I

    goto :goto_13
.end method

.method private a(II)I
    .registers 5

    add-int v0, p1, p2

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/hscroll/d;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private b(II)I
    .registers 5

    sub-int v0, p1, p2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getItemCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/d;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/d;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method protected a(IZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/d;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput p1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->b:I

    if-eqz p2, :cond_f

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/hscroll/d;->smoothScrollToPosition(I)V

    goto :goto_6

    :cond_f
    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/hscroll/d;->scrollToPosition(I)V

    goto :goto_6
.end method

.method public getCurrentPosition()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->b:I

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v1, :cond_16

    const/4 v4, 0x6

    if-eq v3, v4, :cond_16

    const/4 v4, 0x3

    if-eq v3, v4, :cond_16

    const/4 v4, 0x4

    if-ne v3, v4, :cond_27

    :cond_16
    iget-boolean v3, p0, Lcom/facebook/ads/internal/view/hscroll/d;->e:Z

    if-eqz v3, :cond_21

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/view/hscroll/d;->a(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/facebook/ads/internal/view/hscroll/d;->a(IZ)V

    :cond_21
    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->d:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->e:Z

    move v0, v1

    :cond_26
    :goto_26
    return v0

    :cond_27
    if-eqz v3, :cond_33

    const/4 v4, 0x5

    if-eq v3, v4, :cond_33

    iget-boolean v4, p0, Lcom/facebook/ads/internal/view/hscroll/d;->d:Z

    if-eqz v4, :cond_26

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    :cond_33
    iput v2, p0, Lcom/facebook/ads/internal/view/hscroll/d;->c:I

    iget-boolean v2, p0, Lcom/facebook/ads/internal/view/hscroll/d;->d:Z

    if-eqz v2, :cond_3b

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/hscroll/d;->d:Z

    :cond_3b
    iput-boolean v1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->e:Z

    goto :goto_26
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 4

    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SnapRecyclerView only supports LinearLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->f:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method public setSnapDelegate(Lcom/facebook/ads/internal/view/hscroll/d$a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/hscroll/d;->g:Lcom/facebook/ads/internal/view/hscroll/d$a;

    return-void
.end method

###### Class com.facebook.ads.internal.view.hscroll.d.a (com.facebook.ads.internal.view.hscroll.d$a)
.class public interface abstract Lcom/facebook/ads/internal/view/hscroll/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/hscroll/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(I)I
.end method
