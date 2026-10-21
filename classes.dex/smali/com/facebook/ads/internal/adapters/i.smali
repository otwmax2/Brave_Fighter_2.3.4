###### Class com.facebook.ads.internal.adapters.i (com.facebook.ads.internal.adapters.i)
.class public Lcom/facebook/ads/internal/adapters/i;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/facebook/ads/internal/view/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/n/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/16 v0, 0x33

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/internal/adapters/i;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/view/hscroll/b;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/view/hscroll/b;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/n/e;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/hscroll/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/i;->b:Ljava/util/List;

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/adapters/i;->c:I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/hscroll/b;->getChildSpacing()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/adapters/i;->d:I

    return-void
.end method

.method static synthetic a()I
    .registers 1

    sget v0, Lcom/facebook/ads/internal/adapters/i;->a:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/facebook/ads/internal/view/c;
    .registers 5

    new-instance v0, Lcom/facebook/ads/internal/view/u;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/view/u;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/u;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v1, Lcom/facebook/ads/internal/q/a/i;->n:Lcom/facebook/ads/internal/q/a/i;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/i;->a(Landroid/view/View;Lcom/facebook/ads/internal/q/a/i;)V

    new-instance v1, Lcom/facebook/ads/internal/view/c;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/view/c;-><init>(Lcom/facebook/ads/internal/view/u;)V

    return-object v1
.end method

.method public a(Lcom/facebook/ads/internal/view/c;I)V
    .registers 8

    const/4 v3, 0x0

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    if-nez p2, :cond_6a

    iget v0, p0, Lcom/facebook/ads/internal/adapters/i;->d:I

    mul-int/lit8 v0, v0, 0x2

    :goto_e
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p2, v1, :cond_6d

    iget v1, p0, Lcom/facebook/ads/internal/adapters/i;->d:I

    mul-int/lit8 v1, v1, 0x2

    :goto_1c
    invoke-virtual {v2, v0, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p1, Lcom/facebook/ads/internal/view/c;->a:Lcom/facebook/ads/internal/view/u;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/internal/view/u;->setBackgroundColor(I)V

    iget-object v0, p1, Lcom/facebook/ads/internal/view/c;->a:Lcom/facebook/ads/internal/view/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/u;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/facebook/ads/internal/view/c;->a:Lcom/facebook/ads/internal/view/u;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/view/u;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lcom/facebook/ads/internal/view/c;->a:Lcom/facebook/ads/internal/view/u;

    iget v1, p0, Lcom/facebook/ads/internal/adapters/i;->c:I

    iget v2, p0, Lcom/facebook/ads/internal/adapters/i;->c:I

    iget v3, p0, Lcom/facebook/ads/internal/adapters/i;->c:I

    iget v4, p0, Lcom/facebook/ads/internal/adapters/i;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/view/u;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/n/e;

    iget-object v1, p1, Lcom/facebook/ads/internal/view/c;->a:Lcom/facebook/ads/internal/view/u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/n/e;->a(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/e;->j()Lcom/facebook/ads/internal/n/f;

    move-result-object v0

    if-eqz v0, :cond_69

    new-instance v1, Lcom/facebook/ads/internal/view/b/d;

    iget-object v2, p1, Lcom/facebook/ads/internal/view/c;->a:Lcom/facebook/ads/internal/view/u;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/view/b/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/b/d;->a()Lcom/facebook/ads/internal/view/b/d;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/internal/adapters/i$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/internal/adapters/i$1;-><init>(Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/view/c;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/b/d;->a(Lcom/facebook/ads/internal/view/b/e;)Lcom/facebook/ads/internal/view/b/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/n/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/b/d;->a(Ljava/lang/String;)V

    :cond_69
    return-void

    :cond_6a
    iget v0, p0, Lcom/facebook/ads/internal/adapters/i;->d:I

    goto :goto_e

    :cond_6d
    iget v1, p0, Lcom/facebook/ads/internal/adapters/i;->d:I

    goto :goto_1c
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/facebook/ads/internal/view/c;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/view/c;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/adapters/i;->a(Landroid/view/ViewGroup;I)Lcom/facebook/ads/internal/view/c;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.internal.adapters.i.AnonymousClass1 (com.facebook.ads.internal.adapters.i$1)
.class Lcom/facebook/ads/internal/adapters/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/view/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/c;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/i;Lcom/facebook/ads/internal/view/c;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i$1;->b:Lcom/facebook/ads/internal/adapters/i;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/i$1;->a:Lcom/facebook/ads/internal/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$1;->a:Lcom/facebook/ads/internal/view/c;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/c;->a:Lcom/facebook/ads/internal/view/u;

    invoke-static {}, Lcom/facebook/ads/internal/adapters/i;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/u;->setBackgroundColor(I)V

    return-void
.end method
