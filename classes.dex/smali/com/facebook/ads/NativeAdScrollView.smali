###### Class com.facebook.ads.NativeAdScrollView (com.facebook.ads.NativeAdScrollView)
.class public Lcom/facebook/ads/NativeAdScrollView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAdScrollView$b;,
        Lcom/facebook/ads/NativeAdScrollView$a;,
        Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;
    }
.end annotation


# static fields
.field public static final DEFAULT_INSET:I = 0x14

.field public static final DEFAULT_MAX_ADS:I = 0xa


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/ads/NativeAdsManager;

.field private final c:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

.field private final d:Lcom/facebook/ads/NativeAdView$Type;

.field private final e:I

.field private final f:Lcom/facebook/ads/NativeAdScrollView$b;

.field private final g:Lcom/facebook/ads/NativeAdViewAttributes;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;)V
    .registers 11

    const/4 v4, 0x0

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;I)V
    .registers 12

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V
    .registers 9

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdsManager;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NativeAdsManager not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-nez p4, :cond_1d

    if-nez p3, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a NativeAdView.Type or AdViewProvider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iput-object p1, p0, Lcom/facebook/ads/NativeAdScrollView;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/NativeAdScrollView;->b:Lcom/facebook/ads/NativeAdsManager;

    iput-object p5, p0, Lcom/facebook/ads/NativeAdScrollView;->g:Lcom/facebook/ads/NativeAdViewAttributes;

    iput-object p3, p0, Lcom/facebook/ads/NativeAdScrollView;->c:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    iput-object p4, p0, Lcom/facebook/ads/NativeAdScrollView;->d:Lcom/facebook/ads/NativeAdView$Type;

    iput p6, p0, Lcom/facebook/ads/NativeAdScrollView;->e:I

    new-instance v0, Lcom/facebook/ads/NativeAdScrollView$a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/NativeAdScrollView$a;-><init>(Lcom/facebook/ads/NativeAdScrollView;)V

    new-instance v1, Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/NativeAdScrollView$b;-><init>(Lcom/facebook/ads/NativeAdScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    iget-object v1, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdScrollView$b;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/facebook/ads/NativeAdScrollView;->setInset(I)V

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdScrollView$a;->a()V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/NativeAdScrollView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;)V
    .registers 11

    const/4 v3, 0x0

    new-instance v5, Lcom/facebook/ads/NativeAdViewAttributes;

    invoke-direct {v5}, Lcom/facebook/ads/NativeAdViewAttributes;-><init>()V

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)V
    .registers 12

    const/4 v3, 0x0

    const/16 v6, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V
    .registers 13

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/NativeAdScrollView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdsManager;Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAdScrollView;)I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/NativeAdScrollView;->e:I

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdsManager;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->b:Lcom/facebook/ads/NativeAdsManager;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdView$Type;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->d:Lcom/facebook/ads/NativeAdView$Type;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/NativeAdScrollView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdViewAttributes;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->g:Lcom/facebook/ads/NativeAdViewAttributes;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->c:Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    return-object v0
.end method


# virtual methods
.method public setInset(I)V
    .registers 6

    const/4 v3, 0x0

    if-lez p1, :cond_22

    sget v0, Lcom/facebook/ads/internal/q/a/v;->b:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-virtual {v2, v1, v3, v1, v3}, Lcom/facebook/ads/NativeAdScrollView$b;->setPadding(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    div-int/lit8 v2, p1, 0x2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdScrollView$b;->setPageMargin(I)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView;->f:Lcom/facebook/ads/NativeAdScrollView$b;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/NativeAdScrollView$b;->setClipToPadding(Z)V

    :cond_22
    return-void
.end method

###### Class com.facebook.ads.NativeAdScrollView.AdViewProvider (com.facebook.ads.NativeAdScrollView$AdViewProvider)
.class public interface abstract Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAdScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AdViewProvider"
.end annotation


# virtual methods
.method public abstract createView(Lcom/facebook/ads/NativeAd;I)Landroid/view/View;
.end method

.method public abstract destroyView(Lcom/facebook/ads/NativeAd;Landroid/view/View;)V
.end method

###### Class com.facebook.ads.NativeAdScrollView.a (com.facebook.ads.NativeAdScrollView$a)
.class Lcom/facebook/ads/NativeAdScrollView$a;
.super Landroid/support/v4/view/PagerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAdScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/NativeAdScrollView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeAdScrollView;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->a(Lcom/facebook/ads/NativeAdScrollView;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v1}, Lcom/facebook/ads/NativeAdScrollView;->b(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdsManager;->getUniqueNativeAdCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_32

    iget-object v2, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v2}, Lcom/facebook/ads/NativeAdScrollView;->b(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdsManager;->nextNativeAd()Lcom/facebook/ads/NativeAd;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/facebook/ads/NativeAd;->a(Z)V

    iget-object v3, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_32
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdScrollView$a;->notifyDataSetChanged()V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->c(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    :cond_1b
    :goto_1b
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->f(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    move-object v1, p3

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;->destroyView(Lcom/facebook/ads/NativeAd;Landroid/view/View;)V

    goto :goto_1b
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x2

    goto :goto_8
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->c(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->d(Lcom/facebook/ads/NativeAdScrollView;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    iget-object v2, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v2}, Lcom/facebook/ads/NativeAdScrollView;->c(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdView$Type;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v3}, Lcom/facebook/ads/NativeAdScrollView;->e(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/ads/NativeAdView;->render(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/NativeAdView$Type;Lcom/facebook/ads/NativeAdViewAttributes;)Landroid/view/View;

    move-result-object v0

    :goto_26
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    :cond_2a
    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdScrollView;->f(Lcom/facebook/ads/NativeAdScrollView;)Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdScrollView$a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/NativeAdScrollView$AdViewProvider;->createView(Lcom/facebook/ads/NativeAd;I)Landroid/view/View;

    move-result-object v0

    goto :goto_26
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

###### Class com.facebook.ads.NativeAdScrollView.b (com.facebook.ads.NativeAdScrollView$b)
.class Lcom/facebook/ads/NativeAdScrollView$b;
.super Landroid/support/v4/view/ViewPager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAdScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/NativeAdScrollView;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeAdScrollView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/NativeAdScrollView$b;->a:Lcom/facebook/ads/NativeAdScrollView;

    invoke-direct {p0, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 8

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    invoke-virtual {p0}, Lcom/facebook/ads/NativeAdScrollView$b;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1e

    invoke-virtual {p0, v0}, Lcom/facebook/ads/NativeAdScrollView$b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v3, v2, :cond_1b

    move v2, v3

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1e
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    return-void
.end method
