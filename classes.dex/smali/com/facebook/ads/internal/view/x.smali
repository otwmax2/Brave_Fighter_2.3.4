###### Class com.facebook.ads.internal.view.x (com.facebook.ads.internal.view.x)
.class public Lcom/facebook/ads/internal/view/x;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/facebook/ads/internal/view/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/w;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/x;->a:Lcom/facebook/ads/internal/view/w;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/x;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onWindowVisibilityChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/x;->a:Lcom/facebook/ads/internal/view/w;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/view/x;->a:Lcom/facebook/ads/internal/view/w;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/w;->a(I)V

    :cond_9
    return-void
.end method
