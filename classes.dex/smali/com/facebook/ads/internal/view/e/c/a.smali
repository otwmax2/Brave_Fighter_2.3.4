###### Class com.facebook.ads.internal.view.e.c.a (com.facebook.ads.internal.view.e.c.a)
.class public Lcom/facebook/ads/internal/view/e/c/a;
.super Lcom/facebook/ads/internal/view/e/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/e/c/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/e/c/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[F)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/a/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/a$a;

    const-string v2, "AdChoices"

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/view/e/c/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[FLjava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a;->a:Lcom/facebook/ads/internal/view/e/c/a$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a;->a:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/a;->addView(Landroid/view/View;)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.a.C0023a (com.facebook.ads.internal.view.e.c.a$a)
.class public Lcom/facebook/ads/internal/view/e/c/a$a;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/util/DisplayMetrics;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[FLjava/lang/String;)V
    .registers 14

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->g:Z

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    aget v2, p4, v4

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    aput v2, v1, v4

    aget v2, p4, v4

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    aput v2, v1, v5

    aget v2, p4, v5

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    aput v2, v1, v6

    aget v2, p4, v5

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    aput v2, v1, v7

    const/4 v2, 0x4

    aget v3, p4, v6

    iget-object v4, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x5

    aget v3, p4, v6

    iget-object v4, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x6

    aget v3, p4, v7

    iget-object v4, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x7

    aget v3, p4, v7

    iget-object v4, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_aa

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_84
    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/c/a$a;->a()V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/c/a$a;->b()V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/c/a$a;->c()V

    const/high16 v0, 0x41a00000    # 20.0f

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->setMinimumWidth(I)V

    const/high16 v0, 0x41900000    # 18.0f

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->setMinimumHeight(I)V

    return-void

    :cond_aa
    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_84
.end method

.method private a()V
    .registers 2

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/a$a$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/a$a$1;-><init>(Lcom/facebook/ads/internal/view/e/c/a$a;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/a$a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/a$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/c/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .registers 7

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/a$a;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->e:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/internal/q/b/b;->e:Lcom/facebook/ads/internal/q/b/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/q/b/c;->a(Lcom/facebook/ads/internal/q/b/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x40800000    # 4.0f

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/c/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .registers 4

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/a$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v1, 0x41a00000    # 20.0f

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->f:Landroid/widget/TextView;

    const v1, -0x423e37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private d()V
    .registers 6

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->d:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/a$a;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput-boolean v4, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->g:Z

    new-instance v2, Lcom/facebook/ads/internal/view/e/c/a$a$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/facebook/ads/internal/view/e/c/a$a$2;-><init>(Lcom/facebook/ads/internal/view/e/c/a$a;II)V

    new-instance v3, Lcom/facebook/ads/internal/view/e/c/a$a$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/ads/internal/view/e/c/a$a$3;-><init>(Lcom/facebook/ads/internal/view/e/c/a$a;II)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/e/c/a$a;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/e/c/a$a;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/c/a$a;->d()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/e/c/a$a;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a;->f:Landroid/widget/TextView;

    return-object v0
.end method

###### Class com.facebook.ads.internal.view.e.c.a.C0023a.AnonymousClass1 (com.facebook.ads.internal.view.e.c.a$a$1)
.class Lcom/facebook/ads/internal/view/e/c/a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/a$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->a(Lcom/facebook/ads/internal/view/e/c/a$a;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->b(Lcom/facebook/ads/internal/view/e/c/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    new-instance v0, Lcom/facebook/ads/internal/q/c/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/q/c/g;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/c/a$a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/a$a$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/e/c/a$a;->b(Lcom/facebook/ads/internal/view/e/c/a$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/a$a$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/e/c/a$a;->c(Lcom/facebook/ads/internal/view/e/c/a$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/q/c/g;->a(Lcom/facebook/ads/internal/q/c/g;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_38
    :goto_38
    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->d(Lcom/facebook/ads/internal/view/e/c/a$a;)V

    goto :goto_38

    :cond_40
    const/4 v0, 0x0

    goto :goto_39
.end method

###### Class com.facebook.ads.internal.view.e.c.a.C0023a.AnonymousClass2 (com.facebook.ads.internal.view.e.c.a$a$2)
.class Lcom/facebook/ads/internal/view/e/c/a$a$2;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/a$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/facebook/ads/internal/view/e/c/a$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/a$a;II)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$2;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    iput p2, p0, Lcom/facebook/ads/internal/view/e/c/a$a$2;->a:I

    iput p3, p0, Lcom/facebook/ads/internal/view/e/c/a$a$2;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    iget v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a$2;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$2;->b:I

    iget v2, p0, Lcom/facebook/ads/internal/view/e/c/a$a$2;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$2;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/c/a$a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$2;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/c/a$a;->requestLayout()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$2;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/a$a;->e(Lcom/facebook/ads/internal/view/e/c/a$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/facebook/ads/internal/view/e/c/a$a$2;->a:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a$2;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->e(Lcom/facebook/ads/internal/view/e/c/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.facebook.ads.internal.view.e.c.a.C0023a.AnonymousClass3 (com.facebook.ads.internal.view.e.c.a$a$3)
.class Lcom/facebook/ads/internal/view/e/c/a$a$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/a$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/facebook/ads/internal/view/e/c/a$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/a$a;II)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    iput p2, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3;->a:I

    iput p3, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;-><init>(Lcom/facebook/ads/internal/view/e/c/a$a$3;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.a.C0023a.AnonymousClass3.AnonymousClass1 (com.facebook.ads.internal.view.e.c.a$a$3$1)
.class Lcom/facebook/ads/internal/view/e/c/a$a$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/a$a$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/a$a$3;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/a$a$3;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/a$a$3;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->a(Lcom/facebook/ads/internal/view/e/c/a$a;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/a$a$3;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/e/c/a$a;->a(Lcom/facebook/ads/internal/view/e/c/a$a;Z)Z

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;-><init>(Lcom/facebook/ads/internal/view/e/c/a$a$3$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    iget-object v1, v1, Lcom/facebook/ads/internal/view/e/c/a$a$3;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a
.end method

###### Class com.facebook.ads.internal.view.e.c.a.C0023a.AnonymousClass3.AnonymousClass1.C00241 (com.facebook.ads.internal.view.e.c.a$a$3$1$1)
.class Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/a$a$3$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/a$a$3$1;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3$1;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    iget v0, v0, Lcom/facebook/ads/internal/view/e/c/a$a$3;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3$1;

    iget-object v1, v1, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    iget v1, v1, Lcom/facebook/ads/internal/view/e/c/a$a$3;->b:I

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3$1;

    iget-object v2, v2, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    iget v2, v2, Lcom/facebook/ads/internal/view/e/c/a$a$3;->a:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3$1;

    iget-object v1, v1, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    iget-object v1, v1, Lcom/facebook/ads/internal/view/e/c/a$a$3;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/c/a$a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3$1;

    iget-object v1, v1, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    iget-object v1, v1, Lcom/facebook/ads/internal/view/e/c/a$a$3;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/c/a$a;->requestLayout()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3$1;

    iget-object v1, v1, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    iget-object v1, v1, Lcom/facebook/ads/internal/view/e/c/a$a$3;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/a$a;->e(Lcom/facebook/ads/internal/view/e/c/a$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3$1;

    iget-object v2, v2, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    iget v2, v2, Lcom/facebook/ads/internal/view/e/c/a$a$3;->b:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/e/c/a$a$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/a$a$3;->c:Lcom/facebook/ads/internal/view/e/c/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/a$a;->e(Lcom/facebook/ads/internal/view/e/c/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
