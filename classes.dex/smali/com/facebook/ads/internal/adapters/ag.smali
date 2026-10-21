###### Class com.facebook.ads.internal.adapters.ag (com.facebook.ads.internal.adapters.ag)
.class public Lcom/facebook/ads/internal/adapters/ag;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/ads/internal/adapters/af;

.field private c:Lcom/facebook/ads/internal/adapters/ae;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/adapters/ae;Lcom/facebook/ads/internal/adapters/af;)V
    .registers 4

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->a:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->d:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->e:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->f:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->g:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->h:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->i:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->a:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/af;->d(Lcom/facebook/ads/internal/adapters/ae;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->d:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/adapters/af;->a(Lcom/facebook/ads/internal/adapters/ae;Lcom/facebook/ads/AdError;)V

    goto :goto_19

    :cond_32
    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->e:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/af;->b(Lcom/facebook/ads/internal/adapters/ae;)V

    goto :goto_19

    :cond_48
    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->f:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/af;->c(Lcom/facebook/ads/internal/adapters/ae;)V

    goto :goto_19

    :cond_5e
    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->g:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/af;->a()V

    goto :goto_19

    :cond_72
    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->i:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/af;->e(Lcom/facebook/ads/internal/adapters/ae;)V

    goto :goto_19

    :cond_88
    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->h:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/af;->f(Lcom/facebook/ads/internal/adapters/ae;)V

    goto/16 :goto_19
.end method
