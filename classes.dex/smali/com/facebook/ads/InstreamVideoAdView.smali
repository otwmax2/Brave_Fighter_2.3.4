###### Class com.facebook.ads.InstreamVideoAdView (com.facebook.ads.InstreamVideoAdView)
.class public Lcom/facebook/ads/InstreamVideoAdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/Ad;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/ads/AdSize;

.field private d:Lcom/facebook/ads/internal/DisplayAdController;

.field private e:Lcom/facebook/ads/internal/adapters/l;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Z

.field private g:Lcom/facebook/ads/InstreamVideoAdListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/facebook/ads/internal/view/b/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "placementID"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "adSize"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AdSize;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/InstreamVideoAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object p2, p0, Lcom/facebook/ads/InstreamVideoAdView;->i:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->f:Z

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/InstreamVideoAdView;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/InstreamVideoAdView;->c:Lcom/facebook/ads/AdSize;

    invoke-direct {p0}, Lcom/facebook/ads/InstreamVideoAdView;->getController()Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/InstreamVideoAdView;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView;->h:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->g:Lcom/facebook/ads/InstreamVideoAdListener;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/InstreamVideoAdView;Lcom/facebook/ads/internal/view/b/c;)Lcom/facebook/ads/internal/view/b/c;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView;->j:Lcom/facebook/ads/internal/view/b/c;

    return-object p1
.end method

.method private final a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Z)V

    iput-object v2, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-direct {p0}, Lcom/facebook/ads/InstreamVideoAdView;->getController()Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object v2, p0, Lcom/facebook/ads/InstreamVideoAdView;->e:Lcom/facebook/ads/internal/adapters/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->f:Z

    invoke-virtual {p0}, Lcom/facebook/ads/InstreamVideoAdView;->removeAllViews()V

    :cond_1b
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/facebook/ads/internal/adapters/l;

    invoke-direct {v0}, Lcom/facebook/ads/internal/adapters/l;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->e:Lcom/facebook/ads/internal/adapters/l;

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {p0}, Lcom/facebook/ads/InstreamVideoAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/InstreamVideoAdView$2;

    invoke-direct {v2, p0}, Lcom/facebook/ads/InstreamVideoAdView$2;-><init>(Lcom/facebook/ads/InstreamVideoAdView;)V

    iget-object v3, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/DisplayAdController;->g()Lcom/facebook/ads/internal/m/c;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/InstreamVideoAdView;->i:Landroid/os/Bundle;

    const-string v5, "adapter"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/l;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Lcom/facebook/ads/internal/m/c;Landroid/os/Bundle;Ljava/util/EnumSet;)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method static synthetic a(Lcom/facebook/ads/InstreamVideoAdView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/InstreamVideoAdView;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/DisplayAdController;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/InstreamVideoAdView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/b/c;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->j:Lcom/facebook/ads/internal/view/b/c;

    return-object v0
.end method

.method private getController()Lcom/facebook/ads/internal/DisplayAdController;
    .registers 10

    const/4 v7, 0x1

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {p0}, Lcom/facebook/ads/InstreamVideoAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/InstreamVideoAdView;->b:Ljava/lang/String;

    sget-object v3, Lcom/facebook/ads/internal/protocol/f;->m:Lcom/facebook/ads/internal/protocol/f;

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INSTREAM:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    iget-object v5, p0, Lcom/facebook/ads/InstreamVideoAdView;->c:Lcom/facebook/ads/AdSize;

    invoke-virtual {v5}, Lcom/facebook/ads/AdSize;->toInternalAdSize()Lcom/facebook/ads/internal/protocol/e;

    move-result-object v5

    sget-object v6, Lcom/facebook/ads/internal/protocol/d;->a:Lcom/facebook/ads/internal/protocol/d;

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/internal/DisplayAdController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/f;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/d;IZ)V

    iput-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    new-instance v1, Lcom/facebook/ads/InstreamVideoAdView$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/InstreamVideoAdView$1;-><init>(Lcom/facebook/ads/InstreamVideoAdView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/a;)V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->j:Lcom/facebook/ads/internal/view/b/c;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->j:Lcom/facebook/ads/internal/view/b/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/c;->b()V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->h:Landroid/view/View;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView;->j:Lcom/facebook/ads/internal/view/b/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_20
    invoke-direct {p0}, Lcom/facebook/ads/InstreamVideoAdView;->a()V

    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->e:Lcom/facebook/ads/internal/adapters/l;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->e:Lcom/facebook/ads/internal/adapters/l;

    :goto_7
    if-nez v0, :cond_14

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->h()Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/u;

    goto :goto_7

    :cond_14
    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/u;->g()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1c

    move-object v0, v1

    goto :goto_a

    :cond_1c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "adapter"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "placementID"

    iget-object v2, p0, Lcom/facebook/ads/InstreamVideoAdView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adSize"

    iget-object v2, p0, Lcom/facebook/ads/InstreamVideoAdView;->c:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_a
.end method

.method public isAdLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->f:Z

    return v0
.end method

.method public loadAd()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setAdListener(Lcom/facebook/ads/InstreamVideoAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView;->g:Lcom/facebook/ads/InstreamVideoAdListener;

    return-void
.end method

.method public show()Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/facebook/ads/InstreamVideoAdView;->f:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView;->e:Lcom/facebook/ads/internal/adapters/l;

    if-nez v1, :cond_19

    :cond_d
    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView;->g:Lcom/facebook/ads/InstreamVideoAdListener;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView;->g:Lcom/facebook/ads/InstreamVideoAdListener;

    sget-object v2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, p0, v2}, Lcom/facebook/ads/InstreamVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_18
    :goto_18
    return v0

    :cond_19
    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView;->e:Lcom/facebook/ads/internal/adapters/l;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView;->e:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/l;->e()Z

    :goto_22
    iput-boolean v0, p0, Lcom/facebook/ads/InstreamVideoAdView;->f:Z

    const/4 v0, 0x1

    goto :goto_18

    :cond_26
    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/DisplayAdController;->b()V

    goto :goto_22
.end method

###### Class com.facebook.ads.InstreamVideoAdView.AnonymousClass1 (com.facebook.ads.InstreamVideoAdView$1)
.class Lcom/facebook/ads/InstreamVideoAdView$1;
.super Lcom/facebook/ads/internal/adapters/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InstreamVideoAdView;->getController()Lcom/facebook/ads/internal/DisplayAdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/InstreamVideoAdView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InstreamVideoAdView;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    goto :goto_8
.end method

.method public a(Landroid/view/View;)V
    .registers 6

    const/4 v2, -0x1

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot present null view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0, p1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {v0}, Lcom/facebook/ads/InstreamVideoAdView;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v1}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InstreamVideoAdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->d(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/l/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    new-instance v1, Lcom/facebook/ads/internal/view/b/c;

    invoke-direct {v1}, Lcom/facebook/ads/internal/view/b/c;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Lcom/facebook/ads/internal/view/b/c;)Lcom/facebook/ads/internal/view/b/c;

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v1}, Lcom/facebook/ads/InstreamVideoAdView;->e(Lcom/facebook/ads/InstreamVideoAdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v1}, Lcom/facebook/ads/InstreamVideoAdView;->d(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/b/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->b(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v1}, Lcom/facebook/ads/InstreamVideoAdView;->b(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/DisplayAdController;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/h/d;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/view/b/c;->a(J)V

    :cond_89
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v1}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/InstreamVideoAdView$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/InstreamVideoAdView$1$1;-><init>(Lcom/facebook/ads/InstreamVideoAdView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_aa
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->b(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/DisplayAdController;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_8
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {p1}, Lcom/facebook/ads/AdError;->getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/InstreamVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_8
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    goto :goto_8
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdVideoComplete(Lcom/facebook/ads/Ad;)V

    goto :goto_8
.end method

###### Class com.facebook.ads.InstreamVideoAdView.AnonymousClass1.ViewOnLongClickListenerC00061 (com.facebook.ads.InstreamVideoAdView$1$1)
.class Lcom/facebook/ads/InstreamVideoAdView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InstreamVideoAdView$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/InstreamVideoAdView$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InstreamVideoAdView$1;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object v2, v2, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v2}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object v2, v2, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v2}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v2

    if-nez v2, :cond_18

    :cond_16
    move v1, v0

    :goto_17
    return v1

    :cond_18
    iget-object v2, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object v2, v2, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v2}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object v3, v3, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v3}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object v4, v4, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v4}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lcom/facebook/ads/internal/view/b/c;->setBounds(IIII)V

    iget-object v2, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object v2, v2, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v2}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/InstreamVideoAdView$1$1;->a:Lcom/facebook/ads/InstreamVideoAdView$1;

    iget-object v3, v3, Lcom/facebook/ads/InstreamVideoAdView$1;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v3}, Lcom/facebook/ads/InstreamVideoAdView;->f(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/internal/view/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/b/c;->a()Z

    move-result v3

    if-nez v3, :cond_52

    move v0, v1

    :cond_52
    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/view/b/c;->a(Z)V

    goto :goto_17
.end method

###### Class com.facebook.ads.InstreamVideoAdView.AnonymousClass2 (com.facebook.ads.InstreamVideoAdView$2)
.class Lcom/facebook/ads/InstreamVideoAdView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/InstreamVideoAdView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/InstreamVideoAdView;


# direct methods
.method constructor <init>(Lcom/facebook/ads/InstreamVideoAdView;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    goto :goto_e
.end method

.method public a(Lcom/facebook/ads/internal/adapters/u;Landroid/view/View;)V
    .registers 6

    const/4 v2, -0x1

    if-nez p2, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot present null view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0, p2}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-virtual {v0}, Lcom/facebook/ads/InstreamVideoAdView;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v1}, Lcom/facebook/ads/InstreamVideoAdView;->c(Lcom/facebook/ads/InstreamVideoAdView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/InstreamVideoAdView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/u;Lcom/facebook/ads/AdError;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/InstreamVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    goto :goto_8
.end method

.method public b(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    goto :goto_8
.end method

.method public c(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 2

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-static {v0}, Lcom/facebook/ads/InstreamVideoAdView;->a(Lcom/facebook/ads/InstreamVideoAdView;)Lcom/facebook/ads/InstreamVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/InstreamVideoAdView$2;->a:Lcom/facebook/ads/InstreamVideoAdView;

    invoke-interface {v0, v1}, Lcom/facebook/ads/InstreamVideoAdListener;->onAdVideoComplete(Lcom/facebook/ads/Ad;)V

    goto :goto_8
.end method
