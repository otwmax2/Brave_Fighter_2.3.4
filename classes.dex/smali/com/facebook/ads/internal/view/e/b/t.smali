###### Class com.facebook.ads.internal.view.e.b.t (com.facebook.ads.internal.view.e.b.t)
.class public Lcom/facebook/ads/internal/view/e/b/t;
.super Lcom/facebook/ads/internal/j/d;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/internal/j/d;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/b/t;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/b/t;->b:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/b/t;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Landroid/view/MotionEvent;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/b/t;->b:Landroid/view/MotionEvent;

    return-object v0
.end method
