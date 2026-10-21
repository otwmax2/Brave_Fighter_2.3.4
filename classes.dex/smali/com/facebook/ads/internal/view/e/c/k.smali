###### Class com.facebook.ads.internal.view.e.c.k (com.facebook.ads.internal.view.e.c.k)
.class public Lcom/facebook/ads/internal/view/e/c/k;
.super Lcom/facebook/ads/internal/view/e/a/c;


# instance fields
.field private final a:Lcom/facebook/ads/internal/j/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/j/f",
            "<",
            "Lcom/facebook/ads/internal/view/e/b/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/view/e/c/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/view/e/c/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/e/a/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/k$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/k$1;-><init>(Lcom/facebook/ads/internal/view/e/c/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/k;->a:Lcom/facebook/ads/internal/j/f;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1, v2}, Lcom/facebook/ads/internal/view/e/c/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/k;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/k;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/k;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/k;->a:Lcom/facebook/ads/internal/j/f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a(Lcom/facebook/ads/internal/j/f;)Z

    :cond_1a
    return-void
.end method

.method protected b()V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/k;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/k;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/k;->a:Lcom/facebook/ads/internal/j/f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b(Lcom/facebook/ads/internal/j/f;)Z

    :cond_13
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/k;->setVisibility(I)V

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->b()V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.k.AnonymousClass1 (com.facebook.ads.internal.view.e.c.k$1)
.class Lcom/facebook/ads/internal/view/e/c/k$1;
.super Lcom/facebook/ads/internal/j/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/j/f",
        "<",
        "Lcom/facebook/ads/internal/view/e/b/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/k;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/k$1;->a:Lcom/facebook/ads/internal/view/e/c/k;

    invoke-direct {p0}, Lcom/facebook/ads/internal/j/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/ads/internal/view/e/b/l;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/e/b/l;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/l;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/k$1;->a(Lcom/facebook/ads/internal/view/e/b/l;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/l;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/k$1;->a:Lcom/facebook/ads/internal/view/e/c/k;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/k;->setVisibility(I)V

    return-void
.end method
