###### Class com.facebook.ads.NativeAd (com.facebook.ads.NativeAd)
.class public Lcom/facebook/ads/NativeAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAd$NativeComponentTag;,
        Lcom/facebook/ads/NativeAd$MediaCacheFlag;,
        Lcom/facebook/ads/NativeAd$Rating;,
        Lcom/facebook/ads/NativeAd$Image;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/n/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/h/d;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/n/e;

    invoke-static {}, Lcom/facebook/ads/NativeAd;->getViewTraversalPredicate()Lcom/facebook/ads/internal/n/e$d;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/facebook/ads/internal/n/e;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/h/d;Lcom/facebook/ads/internal/n/e$d;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/n/e;

    invoke-static {}, Lcom/facebook/ads/NativeAd;->getViewTraversalPredicate()Lcom/facebook/ads/internal/n/e$d;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/internal/n/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/n/e$d;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/NativeAd;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/n/e;

    iget-object v1, p1, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/n/e;-><init>(Lcom/facebook/ads/internal/n/e;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/internal/n/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    return-void
.end method

.method public static downloadAndDisplayImage(Lcom/facebook/ads/NativeAd$Image;Landroid/widget/ImageView;)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/ads/NativeAd$Image;->a(Lcom/facebook/ads/NativeAd$Image;)Lcom/facebook/ads/internal/n/f;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/n/e;->a(Lcom/facebook/ads/internal/n/f;Landroid/widget/ImageView;)V

    return-void
.end method

.method private getMinViewabilityPercentage()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->d()I

    move-result v0

    return v0
.end method

.method public static getViewTraversalPredicate()Lcom/facebook/ads/internal/n/e$d;
    .registers 1

    new-instance v0, Lcom/facebook/ads/NativeAd$2;

    invoke-direct {v0}, Lcom/facebook/ads/NativeAd$2;-><init>()V

    return-object v0
.end method

.method private logExternalClick(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/n/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method private logExternalImpression()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->F()V

    return-void
.end method

.method private registerExternalLogReceiver(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/n/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Lcom/facebook/ads/internal/adapters/ab;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->a()Lcom/facebook/ads/internal/adapters/ab;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/facebook/ads/MediaView;)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/n/e;->c(Z)V

    :cond_8
    return-void
.end method

.method a(Lcom/facebook/ads/NativeAdView$Type;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdView$Type;->a()Lcom/facebook/ads/internal/n/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/n/e;->a(Lcom/facebook/ads/internal/n/i;)V

    return-void
.end method

.method a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/n/e;->b(Z)V

    return-void
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->c()V

    return-void
.end method

.method e()Lcom/facebook/ads/VideoAutoplayBehavior;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->z()Lcom/facebook/ads/internal/n/j;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/VideoAutoplayBehavior;->fromInternalAutoplayBehavior(Lcom/facebook/ads/internal/n/j;)Lcom/facebook/ads/VideoAutoplayBehavior;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->A()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/n/e;

    new-instance v3, Lcom/facebook/ads/NativeAd;

    invoke-direct {v3, v0}, Lcom/facebook/ads/NativeAd;-><init>(Lcom/facebook/ads/internal/n/e;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2e
    move-object v0, v1

    goto :goto_9
.end method

.method g()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->B()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdCallToAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdChoicesIcon()Lcom/facebook/ads/NativeAd$Image;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->t()Lcom/facebook/ads/internal/n/f;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/facebook/ads/NativeAd$Image;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/e;->t()Lcom/facebook/ads/internal/n/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAd$Image;-><init>(Lcom/facebook/ads/internal/n/f;)V

    goto :goto_9
.end method

.method public getAdChoicesLinkUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdChoicesText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->j()Lcom/facebook/ads/internal/n/f;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/facebook/ads/NativeAd$Image;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/e;->j()Lcom/facebook/ads/internal/n/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAd$Image;-><init>(Lcom/facebook/ads/internal/n/f;)V

    goto :goto_9
.end method

.method public getAdIcon()Lcom/facebook/ads/NativeAd$Image;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->i()Lcom/facebook/ads/internal/n/f;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/facebook/ads/NativeAd$Image;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/e;->i()Lcom/facebook/ads/internal/n/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAd$Image;-><init>(Lcom/facebook/ads/internal/n/f;)V

    goto :goto_9
.end method

.method public getAdNetwork()Lcom/facebook/ads/AdNetwork;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->b()Lcom/facebook/ads/internal/n/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/AdNetwork;->fromInternalAdNetwork(Lcom/facebook/ads/internal/n/c;)Lcom/facebook/ads/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getAdRawBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdSocialContext()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->r()Lcom/facebook/ads/internal/n/g;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/facebook/ads/NativeAd$Rating;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/e;->r()Lcom/facebook/ads/internal/n/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAd$Rating;-><init>(Lcom/facebook/ads/internal/n/g;)V

    goto :goto_9
.end method

.method public getAdSubtitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewAttributes()Lcom/facebook/ads/NativeAdViewAttributes;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->k()Lcom/facebook/ads/internal/n/h;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/facebook/ads/NativeAdViewAttributes;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/e;->k()Lcom/facebook/ads/internal/n/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>(Lcom/facebook/ads/internal/n/h;)V

    goto :goto_9
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalNativeAd()Lcom/facebook/ads/internal/n/e;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCallToAction()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->h()Z

    move-result v0

    return v0
.end method

.method public isAdLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->f()Z

    move-result v0

    return v0
.end method

.method public isNativeConfigEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->g()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->NONE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/NativeAd;->loadAd(Ljava/util/EnumSet;)V

    return-void
.end method

.method public loadAd(Ljava/util/EnumSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-static {p1}, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->setToInternalSet(Ljava/util/EnumSet;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/n/e;->a(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->NONE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/NativeAd;->loadAdFromBid(Ljava/lang/String;Ljava/util/EnumSet;)V

    return-void
.end method

.method public loadAdFromBid(Ljava/lang/String;Ljava/util/EnumSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-static {p2}, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->setToInternalSet(Ljava/util/EnumSet;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/ads/internal/n/e;->a(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public onCtaBroadcast()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->C()V

    return-void
.end method

.method public registerExternalLogReceiverIfNeeded()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->E()V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/n/e;->a(Landroid/view/View;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/internal/n/e;->a(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public setAdListener(Lcom/facebook/ads/AdListener;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    new-instance v1, Lcom/facebook/ads/NativeAd$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/NativeAd$1;-><init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/AdListener;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/n/e;->a(Lcom/facebook/ads/internal/n/b;)V

    goto :goto_2
.end method

.method public setMediaViewAutoplay(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/n/e;->a(Z)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/n/e;->a(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public unregisterView()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd;->a:Lcom/facebook/ads/internal/n/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->D()V

    return-void
.end method

###### Class com.facebook.ads.NativeAd.AnonymousClass1 (com.facebook.ads.NativeAd$1)
.class Lcom/facebook/ads/NativeAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/n/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/AdListener;

.field final synthetic b:Lcom/facebook/ads/NativeAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/AdListener;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/NativeAd$1;->b:Lcom/facebook/ads/NativeAd;

    iput-object p2, p0, Lcom/facebook/ads/NativeAd$1;->a:Lcom/facebook/ads/AdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->a:Lcom/facebook/ads/AdListener;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->b:Lcom/facebook/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->a:Lcom/facebook/ads/AdListener;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->b:Lcom/facebook/ads/NativeAd;

    invoke-static {p1}, Lcom/facebook/ads/AdError;->getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->a:Lcom/facebook/ads/AdListener;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->b:Lcom/facebook/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$1;->a:Lcom/facebook/ads/AdListener;

    iget-object v1, p0, Lcom/facebook/ads/NativeAd$1;->b:Lcom/facebook/ads/NativeAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    return-void
.end method

###### Class com.facebook.ads.NativeAd.AnonymousClass2 (com.facebook.ads.NativeAd$2)
.class final Lcom/facebook/ads/NativeAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/n/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/NativeAd;->getViewTraversalPredicate()Lcom/facebook/ads/internal/n/e$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .registers 3

    instance-of v0, p1, Lcom/facebook/ads/MediaViewVideoRenderer;

    if-nez v0, :cond_c

    instance-of v0, p1, Lcom/facebook/ads/AdChoicesView;

    if-nez v0, :cond_c

    instance-of v0, p1, Lcom/facebook/ads/internal/view/hscroll/b;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

###### Class com.facebook.ads.NativeAd.Image (com.facebook.ads.NativeAd$Image)
.class public Lcom/facebook/ads/NativeAd$Image;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/n/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/n/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/NativeAd$Image;->a:Lcom/facebook/ads/internal/n/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/n/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd$Image;->a:Lcom/facebook/ads/internal/n/f;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAd$Image;)Lcom/facebook/ads/internal/n/f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$Image;->a:Lcom/facebook/ads/internal/n/f;

    return-object v0
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Image;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/internal/n/f;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/n/f;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/facebook/ads/NativeAd$Image;

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAd$Image;-><init>(Lcom/facebook/ads/internal/n/f;)V

    goto :goto_7
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$Image;->a:Lcom/facebook/ads/internal/n/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/f;->c()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$Image;->a:Lcom/facebook/ads/internal/n/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$Image;->a:Lcom/facebook/ads/internal/n/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/f;->b()I

    move-result v0

    return v0
.end method

###### Class com.facebook.ads.NativeAd.MediaCacheFlag (com.facebook.ads.NativeAd$MediaCacheFlag)
.class public final enum Lcom/facebook/ads/NativeAd$MediaCacheFlag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaCacheFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ICON:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

.field public static final enum IMAGE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

.field public static final enum NONE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

.field public static final enum VIDEO:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

.field private static final synthetic b:[Lcom/facebook/ads/NativeAd$MediaCacheFlag;


# instance fields
.field private final a:Lcom/facebook/ads/internal/n/d;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    const-string v1, "NONE"

    sget-object v2, Lcom/facebook/ads/internal/n/d;->a:Lcom/facebook/ads/internal/n/d;

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/ads/NativeAd$MediaCacheFlag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/d;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->NONE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    new-instance v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    const-string v1, "ICON"

    sget-object v2, Lcom/facebook/ads/internal/n/d;->b:Lcom/facebook/ads/internal/n/d;

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/NativeAd$MediaCacheFlag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/d;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->ICON:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    new-instance v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    const-string v1, "IMAGE"

    sget-object v2, Lcom/facebook/ads/internal/n/d;->c:Lcom/facebook/ads/internal/n/d;

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/ads/NativeAd$MediaCacheFlag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/d;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->IMAGE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    new-instance v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    const-string v1, "VIDEO"

    sget-object v2, Lcom/facebook/ads/internal/n/d;->d:Lcom/facebook/ads/internal/n/d;

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/ads/NativeAd$MediaCacheFlag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/d;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->VIDEO:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    sget-object v1, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->NONE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->ICON:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->IMAGE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->VIDEO:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->b:[Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    const-class v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->ALL:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/n/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->a:Lcom/facebook/ads/internal/n/d;

    return-void
.end method

.method public static setToInternalSet(Ljava/util/EnumSet;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/ads/internal/n/d;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->a()Lcom/facebook/ads/internal/n/d;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/NativeAd$MediaCacheFlag;
    .registers 2

    const-class v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/NativeAd$MediaCacheFlag;
    .registers 1

    sget-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->b:[Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-virtual {v0}, [Lcom/facebook/ads/NativeAd$MediaCacheFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    return-object v0
.end method


# virtual methods
.method a()Lcom/facebook/ads/internal/n/d;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->a:Lcom/facebook/ads/internal/n/d;

    return-object v0
.end method

.method public getCacheFlagValue()J
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->a:Lcom/facebook/ads/internal/n/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/d;->a()J

    move-result-wide v0

    return-wide v0
.end method

###### Class com.facebook.ads.NativeAd.NativeComponentTag (com.facebook.ads.NativeAd$NativeComponentTag)
.class public final enum Lcom/facebook/ads/NativeAd$NativeComponentTag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeComponentTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/NativeAd$NativeComponentTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_BODY:Lcom/facebook/ads/NativeAd$NativeComponentTag;

.field public static final enum AD_CALL_TO_ACTION:Lcom/facebook/ads/NativeAd$NativeComponentTag;

.field public static final enum AD_CHOICES_ICON:Lcom/facebook/ads/NativeAd$NativeComponentTag;

.field public static final enum AD_COVER_IMAGE:Lcom/facebook/ads/NativeAd$NativeComponentTag;

.field public static final enum AD_ICON:Lcom/facebook/ads/NativeAd$NativeComponentTag;

.field public static final enum AD_MEDIA:Lcom/facebook/ads/NativeAd$NativeComponentTag;

.field public static final enum AD_SOCIAL_CONTEXT:Lcom/facebook/ads/NativeAd$NativeComponentTag;

.field public static final enum AD_SUBTITLE:Lcom/facebook/ads/NativeAd$NativeComponentTag;

.field public static final enum AD_TITLE:Lcom/facebook/ads/NativeAd$NativeComponentTag;

.field private static final synthetic b:[Lcom/facebook/ads/NativeAd$NativeComponentTag;


# instance fields
.field private final a:Lcom/facebook/ads/internal/q/a/i;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;

    const-string v1, "AD_ICON"

    sget-object v2, Lcom/facebook/ads/internal/q/a/i;->f:Lcom/facebook/ads/internal/q/a/i;

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/NativeAd$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/q/a/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_ICON:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;

    const-string v1, "AD_TITLE"

    sget-object v2, Lcom/facebook/ads/internal/q/a/i;->g:Lcom/facebook/ads/internal/q/a/i;

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/ads/NativeAd$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/q/a/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_TITLE:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;

    const-string v1, "AD_COVER_IMAGE"

    sget-object v2, Lcom/facebook/ads/internal/q/a/i;->h:Lcom/facebook/ads/internal/q/a/i;

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/ads/NativeAd$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/q/a/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_COVER_IMAGE:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;

    const-string v1, "AD_SUBTITLE"

    sget-object v2, Lcom/facebook/ads/internal/q/a/i;->i:Lcom/facebook/ads/internal/q/a/i;

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/ads/NativeAd$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/q/a/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_SUBTITLE:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;

    const-string v1, "AD_BODY"

    sget-object v2, Lcom/facebook/ads/internal/q/a/i;->j:Lcom/facebook/ads/internal/q/a/i;

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/ads/NativeAd$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/q/a/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_BODY:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;

    const-string v1, "AD_CALL_TO_ACTION"

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/ads/internal/q/a/i;->k:Lcom/facebook/ads/internal/q/a/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/NativeAd$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/q/a/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_CALL_TO_ACTION:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;

    const-string v1, "AD_SOCIAL_CONTEXT"

    const/4 v2, 0x6

    sget-object v3, Lcom/facebook/ads/internal/q/a/i;->l:Lcom/facebook/ads/internal/q/a/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/NativeAd$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/q/a/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_SOCIAL_CONTEXT:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;

    const-string v1, "AD_CHOICES_ICON"

    const/4 v2, 0x7

    sget-object v3, Lcom/facebook/ads/internal/q/a/i;->m:Lcom/facebook/ads/internal/q/a/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/NativeAd$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/q/a/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_CHOICES_ICON:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    new-instance v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;

    const-string v1, "AD_MEDIA"

    const/16 v2, 0x8

    sget-object v3, Lcom/facebook/ads/internal/q/a/i;->n:Lcom/facebook/ads/internal/q/a/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/NativeAd$NativeComponentTag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/q/a/i;)V

    sput-object v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_MEDIA:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/facebook/ads/NativeAd$NativeComponentTag;

    sget-object v1, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_ICON:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_TITLE:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_COVER_IMAGE:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_SUBTITLE:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_BODY:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_CALL_TO_ACTION:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_SOCIAL_CONTEXT:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_CHOICES_ICON:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/ads/NativeAd$NativeComponentTag;->AD_MEDIA:Lcom/facebook/ads/NativeAd$NativeComponentTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->b:[Lcom/facebook/ads/NativeAd$NativeComponentTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/facebook/ads/internal/q/a/i;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/q/a/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->a:Lcom/facebook/ads/internal/q/a/i;

    return-void
.end method

.method public static tagView(Landroid/view/View;Lcom/facebook/ads/NativeAd$NativeComponentTag;)V
    .registers 3

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/facebook/ads/NativeAd$NativeComponentTag;->a:Lcom/facebook/ads/internal/q/a/i;

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/q/a/i;->a(Landroid/view/View;Lcom/facebook/ads/internal/q/a/i;)V

    :cond_9
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/NativeAd$NativeComponentTag;
    .registers 2

    const-class v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/NativeAd$NativeComponentTag;
    .registers 1

    sget-object v0, Lcom/facebook/ads/NativeAd$NativeComponentTag;->b:[Lcom/facebook/ads/NativeAd$NativeComponentTag;

    invoke-virtual {v0}, [Lcom/facebook/ads/NativeAd$NativeComponentTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/NativeAd$NativeComponentTag;

    return-object v0
.end method

###### Class com.facebook.ads.NativeAd.Rating (com.facebook.ads.NativeAd$Rating)
.class public Lcom/facebook/ads/NativeAd$Rating;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rating"
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/n/g;


# direct methods
.method public constructor <init>(DD)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/n/g;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/n/g;-><init>(DD)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAd$Rating;->a:Lcom/facebook/ads/internal/n/g;

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/internal/n/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/NativeAd$Rating;->a:Lcom/facebook/ads/internal/n/g;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Rating;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/internal/n/g;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/n/g;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/facebook/ads/NativeAd$Rating;

    invoke-direct {v0, v1}, Lcom/facebook/ads/NativeAd$Rating;-><init>(Lcom/facebook/ads/internal/n/g;)V

    goto :goto_7
.end method


# virtual methods
.method public getScale()D
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$Rating;->a:Lcom/facebook/ads/internal/n/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/g;->b()D

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()D
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAd$Rating;->a:Lcom/facebook/ads/internal/n/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/g;->a()D

    move-result-wide v0

    return-wide v0
.end method
