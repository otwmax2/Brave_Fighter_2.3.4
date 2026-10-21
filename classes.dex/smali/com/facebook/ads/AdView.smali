###### Class com.facebook.ads.AdView (com.facebook.ads.AdView)
.class public Lcom/facebook/ads/AdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/Ad;


# static fields
.field private static final a:Lcom/facebook/ads/internal/protocol/d;


# instance fields
.field private final b:Landroid/util/DisplayMetrics;

.field private final c:Lcom/facebook/ads/internal/protocol/e;

.field private final d:Ljava/lang/String;

.field private e:Lcom/facebook/ads/internal/DisplayAdController;

.field private f:Lcom/facebook/ads/AdListener;

.field private g:Landroid/view/View;

.field private h:Lcom/facebook/ads/internal/view/b/c;

.field private volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/protocol/d;->a:Lcom/facebook/ads/internal/protocol/d;

    sput-object v0, Lcom/facebook/ads/AdView;->a:Lcom/facebook/ads/internal/protocol/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V
    .registers 13

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_9

    sget-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    if-ne p3, v0, :cond_11

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adSize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AdView;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {p3}, Lcom/facebook/ads/AdSize;->toInternalAdSize()Lcom/facebook/ads/internal/protocol/e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/AdView;->c:Lcom/facebook/ads/internal/protocol/e;

    iput-object p2, p0, Lcom/facebook/ads/AdView;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/AdView;->c:Lcom/facebook/ads/internal/protocol/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/protocol/g;->a(Lcom/facebook/ads/internal/protocol/e;)Lcom/facebook/ads/internal/protocol/f;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController;

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {p3}, Lcom/facebook/ads/AdSize;->toInternalAdSize()Lcom/facebook/ads/internal/protocol/e;

    move-result-object v5

    sget-object v6, Lcom/facebook/ads/AdView;->a:Lcom/facebook/ads/internal/protocol/d;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/internal/DisplayAdController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/f;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/d;IZ)V

    iput-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    new-instance v1, Lcom/facebook/ads/AdView$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/ads/AdView$1;-><init>(Lcom/facebook/ads/AdView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/AdView;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/AdView;->g:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/AdView;->f:Lcom/facebook/ads/AdListener;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/AdView;Lcom/facebook/ads/internal/view/b/c;)Lcom/facebook/ads/internal/view/b/c;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/AdView;->h:Lcom/facebook/ads/internal/view/b/c;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/AdView;->i:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/AdView;->i:Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Ljava/lang/String;)V

    goto :goto_c
.end method

.method static synthetic b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/DisplayAdController;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/AdView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/AdView;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/AdView;)Landroid/util/DisplayMetrics;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/AdView;->b:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/protocol/e;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/AdView;->c:Lcom/facebook/ads/internal/protocol/e;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/b/c;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/AdView;->h:Lcom/facebook/ads/internal/view/b/c;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Z)V

    iput-object v2, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/AdView;->h:Lcom/facebook/ads/internal/view/b/c;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/l/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/AdView;->h:Lcom/facebook/ads/internal/view/b/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/c;->b()V

    iget-object v0, p0, Lcom/facebook/ads/AdView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView;->h:Lcom/facebook/ads/internal/view/b/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_2b
    invoke-virtual {p0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    iput-object v2, p0, Lcom/facebook/ads/AdView;->g:Landroid/view/View;

    iput-object v2, p0, Lcom/facebook/ads/AdView;->f:Lcom/facebook/ads/AdListener;

    return-void
.end method

.method public disableAutoRefresh()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->f()V

    :cond_9
    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/AdView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public loadAd()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/AdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/AdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/facebook/ads/AdView;->g:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/AdView;->b:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/facebook/ads/AdView;->g:Landroid/view/View;

    iget-object v2, p0, Lcom/facebook/ads/AdView;->c:Lcom/facebook/ads/internal/protocol/e;

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/protocol/g;->a(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/internal/protocol/e;)V

    :cond_10
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    if-nez p1, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->e()V

    goto :goto_7

    :cond_10
    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/AdView;->e:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->d()V

    goto :goto_7
.end method

.method public setAdListener(Lcom/facebook/ads/AdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/AdView;->f:Lcom/facebook/ads/AdListener;

    return-void
.end method

###### Class com.facebook.ads.AdView.AnonymousClass1 (com.facebook.ads.AdView$1)
.class Lcom/facebook/ads/AdView$1;
.super Lcom/facebook/ads/internal/adapters/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/ads/AdView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    iput-object p2, p0, Lcom/facebook/ads/AdView$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    :cond_13
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 6

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot present null view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0, p1}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v1}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/internal/view/b/a;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->d(Lcom/facebook/ads/AdView;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v1}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v2}, Lcom/facebook/ads/AdView;->e(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/protocol/e;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/protocol/g;->a(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/internal/protocol/e;)V

    :cond_3e
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    :cond_51
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/l/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    new-instance v1, Lcom/facebook/ads/internal/view/b/c;

    invoke-direct {v1}, Lcom/facebook/ads/internal/view/b/c;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;Lcom/facebook/ads/internal/view/b/c;)Lcom/facebook/ads/internal/view/b/c;

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/b/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v1}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/h/d;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/view/b/c;->a(J)V

    :cond_a8
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/internal/view/b/a;

    if-eqz v0, :cond_c7

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/a;->getViewabilityChecker()Lcom/facebook/ads/internal/r/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/b/c;->a(Lcom/facebook/ads/internal/r/a;)V

    :cond_c7
    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/AdView$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/AdView$1$1;-><init>(Lcom/facebook/ads/AdView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v1}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_e8
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->b(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->b()V

    :cond_11
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {p1}, Lcom/facebook/ads/AdError;->getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_17
    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/facebook/ads/AdView;->a(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    :cond_13
    return-void
.end method

###### Class com.facebook.ads.AdView.AnonymousClass1.ViewOnLongClickListenerC00051 (com.facebook.ads.AdView$1$1)
.class Lcom/facebook/ads/AdView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/AdView$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/AdView$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/AdView$1;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/AdView$1$1;->a:Lcom/facebook/ads/AdView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/facebook/ads/AdView$1$1;->a:Lcom/facebook/ads/AdView$1;

    iget-object v2, v2, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v2}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/AdView$1$1;->a:Lcom/facebook/ads/AdView$1;

    iget-object v3, v3, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v3}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/ads/AdView$1$1;->a:Lcom/facebook/ads/AdView$1;

    iget-object v4, v4, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v4}, Lcom/facebook/ads/AdView;->c(Lcom/facebook/ads/AdView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lcom/facebook/ads/internal/view/b/c;->setBounds(IIII)V

    iget-object v2, p0, Lcom/facebook/ads/AdView$1$1;->a:Lcom/facebook/ads/AdView$1;

    iget-object v2, v2, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v2}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/AdView$1$1;->a:Lcom/facebook/ads/AdView$1;

    iget-object v3, v3, Lcom/facebook/ads/AdView$1;->b:Lcom/facebook/ads/AdView;

    invoke-static {v3}, Lcom/facebook/ads/AdView;->f(Lcom/facebook/ads/AdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/b/c;->a()Z

    move-result v3

    if-nez v3, :cond_3c

    move v0, v1

    :cond_3c
    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/view/b/c;->a(Z)V

    return v1
.end method
