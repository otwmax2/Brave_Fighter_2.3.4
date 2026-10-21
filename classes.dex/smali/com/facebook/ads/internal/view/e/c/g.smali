###### Class com.facebook.ads.internal.view.e.c.g (com.facebook.ads.internal.view.e.c.g)
.class public Lcom/facebook/ads/internal/view/e/c/g;
.super Lcom/facebook/ads/internal/view/e/a/c;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Lcom/facebook/ads/internal/j/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/j/f",
            "<",
            "Lcom/facebook/ads/internal/view/e/b/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/ads/internal/j/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/j/f",
            "<",
            "Lcom/facebook/ads/internal/view/e/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/a/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/g$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/g$1;-><init>(Lcom/facebook/ads/internal/view/e/c/g;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/g;->b:Lcom/facebook/ads/internal/j/f;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/g$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/g$2;-><init>(Lcom/facebook/ads/internal/view/e/c/g;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/g;->c:Lcom/facebook/ads/internal/j/f;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/g;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/g;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/g;->a:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/g;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/g;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/g;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->a()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/g;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/g;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/g;->b:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/g;->c:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a([Lcom/facebook/ads/internal/j/f;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/g;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/internal/view/e/b;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_28
    return-void
.end method

.method protected b()V
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/g;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/g;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/internal/view/e/b;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/g;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/g;->c:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/g;->b:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b([Lcom/facebook/ads/internal/j/f;)V

    :cond_25
    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->b()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 15

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/g;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int v1, p5, p3

    sub-int v2, p4, p2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ne v3, v1, :cond_1b

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-ne v3, v2, :cond_1b

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-ne v3, p3, :cond_1b

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ne v0, p2, :cond_1b

    :goto_1a
    return-void

    :cond_1b
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/g;->a:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a
.end method

.method public setImage(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_8

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/g;->setVisibility(I)V

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/g;->setVisibility(I)V

    new-instance v0, Lcom/facebook/ads/internal/view/b/d;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/g;->a:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/b/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/d;->a()Lcom/facebook/ads/internal/view/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/b/d;->a(Ljava/lang/String;)V

    goto :goto_7
.end method

###### Class com.facebook.ads.internal.view.e.c.g.AnonymousClass1 (com.facebook.ads.internal.view.e.c.g$1)
.class Lcom/facebook/ads/internal/view/e/c/g$1;
.super Lcom/facebook/ads/internal/j/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/j/f",
        "<",
        "Lcom/facebook/ads/internal/view/e/b/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/g;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/g$1;->a:Lcom/facebook/ads/internal/view/e/c/g;

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
            "Lcom/facebook/ads/internal/view/e/b/j;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/e/b/j;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/j;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/g$1;->a(Lcom/facebook/ads/internal/view/e/b/j;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/j;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/g$1;->a:Lcom/facebook/ads/internal/view/e/c/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/g;->setVisibility(I)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.g.AnonymousClass2 (com.facebook.ads.internal.view.e.c.g$2)
.class Lcom/facebook/ads/internal/view/e/c/g$2;
.super Lcom/facebook/ads/internal/j/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/j/f",
        "<",
        "Lcom/facebook/ads/internal/view/e/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/g;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/g$2;->a:Lcom/facebook/ads/internal/view/e/c/g;

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
            "Lcom/facebook/ads/internal/view/e/b/b;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/e/b/b;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/g$2;->a(Lcom/facebook/ads/internal/view/e/b/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/b;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/g$2;->a:Lcom/facebook/ads/internal/view/e/c/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/g;->setVisibility(I)V

    return-void
.end method
