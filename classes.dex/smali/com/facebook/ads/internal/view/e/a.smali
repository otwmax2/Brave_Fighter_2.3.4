###### Class com.facebook.ads.internal.view.e.a (com.facebook.ads.internal.view.e.a)
.class Lcom/facebook/ads/internal/view/e/a;
.super Landroid/database/ContentObserver;


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/e/d;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/internal/view/e/d;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/a;->a:Lcom/facebook/ads/internal/view/e/d;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a;->a:Lcom/facebook/ads/internal/view/e/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/d;->e()V

    return-void
.end method
