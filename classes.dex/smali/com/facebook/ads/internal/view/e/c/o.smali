###### Class com.facebook.ads.internal.view.e.c.o (com.facebook.ads.internal.view.e.c.o)
.class public Lcom/facebook/ads/internal/view/e/c/o;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/internal/view/e/a/b;


# static fields
.field private static final a:I


# instance fields
.field private b:Landroid/animation/ObjectAnimator;

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Landroid/widget/ProgressBar;

.field private e:Lcom/facebook/ads/internal/view/e/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/facebook/ads/internal/j/f;

.field private g:Lcom/facebook/ads/internal/j/f;

.field private h:Lcom/facebook/ads/internal/j/f;

.field private i:Lcom/facebook/ads/internal/j/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v0, 0x40c00000    # 6.0f

    sget v1, Lcom/facebook/ads/internal/q/a/v;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/e/c/o;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    sget v0, Lcom/facebook/ads/internal/view/e/c/o;->a:I

    const v1, -0xbf7f01

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/internal/view/e/c/o;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 8

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/o$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/o$1;-><init>(Lcom/facebook/ads/internal/view/e/c/o;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->f:Lcom/facebook/ads/internal/j/f;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/o$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/o$2;-><init>(Lcom/facebook/ads/internal/view/e/c/o;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->g:Lcom/facebook/ads/internal/j/f;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/o$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/o$3;-><init>(Lcom/facebook/ads/internal/view/e/c/o;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->h:Lcom/facebook/ads/internal/j/f;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/o$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/o$4;-><init>(Lcom/facebook/ads/internal/view/e/c/o;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->i:Lcom/facebook/ads/internal/j/f;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->d:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/o;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p3}, Lcom/facebook/ads/internal/view/e/c/o;->setProgressBarColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/o;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/o;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->e:Lcom/facebook/ads/internal/view/e/b;

    return-object v0
.end method

.method private a(II)V
    .registers 9

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/c/o;->b()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ge v0, p2, :cond_d

    if-gt p1, p2, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    mul-int/lit16 v0, p2, 0x2710

    div-int/2addr v0, p1

    add-int/lit16 v1, p2, 0xfa

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    div-int/2addr v1, p1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/o;->d:Landroid/widget/ProgressBar;

    const-string v3, "progress"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v0, 0x1

    aput v1, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    const/16 v1, 0xfa

    sub-int v2, p1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_d
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/o;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/e/c/o;->a(II)V

    return-void
.end method

.method private b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    :cond_16
    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/c/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/c/o;->b()V

    return-void
.end method

.method private c()V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/c/o;->b()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->d:Landroid/widget/ProgressBar;

    const-string v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_30

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :array_30
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/c/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/c/o;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/c/o;->b()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->d:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->e:Lcom/facebook/ads/internal/view/e/b;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/o;->e:Lcom/facebook/ads/internal/view/e/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/o;->g:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/o;->h:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/o;->f:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/o;->i:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a([Lcom/facebook/ads/internal/j/f;)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/view/e/b;)V
    .registers 6

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/o;->f:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/o;->h:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/o;->g:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/o;->i:Lcom/facebook/ads/internal/j/f;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b([Lcom/facebook/ads/internal/j/f;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->e:Lcom/facebook/ads/internal/view/e/b;

    return-void
.end method

.method public setProgressBarColor(I)V
    .registers 12

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v2, Landroid/graphics/drawable/ScaleDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v4, 0x800003

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v9

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x1020000

    invoke-virtual {v3, v7, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v0, 0x102000f

    invoke-virtual {v3, v8, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v0, 0x102000d

    invoke-virtual {v3, v9, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.o.AnonymousClass1 (com.facebook.ads.internal.view.e.c.o$1)
.class Lcom/facebook/ads/internal/view/e/c/o$1;
.super Lcom/facebook/ads/internal/view/e/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/o;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/o;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/o$1;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/o;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/n;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/o$1;->a(Lcom/facebook/ads/internal/view/e/b/n;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/n;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o$1;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/o;->a(Lcom/facebook/ads/internal/view/e/c/o;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o$1;->a:Lcom/facebook/ads/internal/view/e/c/o;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/o$1;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/o;->a(Lcom/facebook/ads/internal/view/e/c/o;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/o$1;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/e/c/o;->a(Lcom/facebook/ads/internal/view/e/c/o;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/e/b;->getCurrentPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/view/e/c/o;->a(Lcom/facebook/ads/internal/view/e/c/o;II)V

    :cond_21
    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.o.AnonymousClass2 (com.facebook.ads.internal.view.e.c.o$2)
.class Lcom/facebook/ads/internal/view/e/c/o$2;
.super Lcom/facebook/ads/internal/view/e/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/o;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/o;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/o$2;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/h;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/o$2;->a(Lcom/facebook/ads/internal/view/e/b/h;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/h;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o$2;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/o;->b(Lcom/facebook/ads/internal/view/e/c/o;)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.o.AnonymousClass3 (com.facebook.ads.internal.view.e.c.o$3)
.class Lcom/facebook/ads/internal/view/e/c/o$3;
.super Lcom/facebook/ads/internal/view/e/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/o;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/o;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/o$3;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/j;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/o$3;->a(Lcom/facebook/ads/internal/view/e/b/j;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/j;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o$3;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/o;->a(Lcom/facebook/ads/internal/view/e/c/o;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o$3;->a:Lcom/facebook/ads/internal/view/e/c/o;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/o$3;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/o;->a(Lcom/facebook/ads/internal/view/e/c/o;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/o$3;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/e/c/o;->a(Lcom/facebook/ads/internal/view/e/c/o;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/e/b;->getCurrentPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/view/e/c/o;->a(Lcom/facebook/ads/internal/view/e/c/o;II)V

    :cond_21
    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.o.AnonymousClass4 (com.facebook.ads.internal.view.e.c.o$4)
.class Lcom/facebook/ads/internal/view/e/c/o$4;
.super Lcom/facebook/ads/internal/view/e/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/o;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/o;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/o$4;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/o$4;->a(Lcom/facebook/ads/internal/view/e/b/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/b;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o$4;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/o;->a(Lcom/facebook/ads/internal/view/e/c/o;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/o$4;->a:Lcom/facebook/ads/internal/view/e/c/o;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/o;->c(Lcom/facebook/ads/internal/view/e/c/o;)V

    :cond_d
    return-void
.end method
