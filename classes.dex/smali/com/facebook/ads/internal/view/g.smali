###### Class com.facebook.ads.internal.view.g (com.facebook.ads.internal.view.g)
.class public Lcom/facebook/ads/internal/view/g;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/facebook/ads/internal/view/e/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/g$a;
    }
.end annotation


# static fields
.field private static final c:F

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/e/b/o;

.field private final b:Lcom/facebook/ads/internal/view/e/b/c;

.field private final j:Landroid/widget/ImageView;

.field private final k:Landroid/widget/FrameLayout;

.field private final l:Landroid/widget/ImageView;

.field private final m:Lcom/facebook/ads/internal/view/component/CircularProgressView;

.field private final n:Lcom/facebook/ads/internal/view/c/c;

.field private final o:Landroid/widget/PopupMenu;

.field private p:Lcom/facebook/ads/internal/view/g$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/facebook/ads/internal/view/e/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Landroid/widget/PopupMenu$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/facebook/ads/internal/view/g;->c:F

    const/high16 v0, 0x42200000    # 40.0f

    sget v1, Lcom/facebook/ads/internal/view/g;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/g;->d:I

    const/high16 v0, 0x42300000    # 44.0f

    sget v1, Lcom/facebook/ads/internal/view/g;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/g;->e:I

    const/high16 v0, 0x41200000    # 10.0f

    sget v1, Lcom/facebook/ads/internal/view/g;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/g;->f:I

    const/high16 v0, 0x41800000    # 16.0f

    sget v1, Lcom/facebook/ads/internal/view/g;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/g;->g:I

    sget v0, Lcom/facebook/ads/internal/view/g;->g:I

    sget v1, Lcom/facebook/ads/internal/view/g;->f:I

    sub-int/2addr v0, v1

    sput v0, Lcom/facebook/ads/internal/view/g;->h:I

    sget v0, Lcom/facebook/ads/internal/view/g;->g:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/facebook/ads/internal/view/g;->f:I

    sub-int/2addr v0, v1

    sput v0, Lcom/facebook/ads/internal/view/g;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v6, -0x2

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/g$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/g$1;-><init>(Lcom/facebook/ads/internal/view/g;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->a:Lcom/facebook/ads/internal/view/e/b/o;

    new-instance v0, Lcom/facebook/ads/internal/view/g$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/g$2;-><init>(Lcom/facebook/ads/internal/view/g;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->b:Lcom/facebook/ads/internal/view/e/b/c;

    iput v5, p0, Lcom/facebook/ads/internal/view/g;->r:I

    iput-boolean v5, p0, Lcom/facebook/ads/internal/view/g;->s:Z

    iput-boolean v5, p0, Lcom/facebook/ads/internal/view/g;->t:Z

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/g;->setGravity(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2b

    new-instance v0, Lcom/facebook/ads/internal/view/g$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/g$3;-><init>(Lcom/facebook/ads/internal/view/g;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->u:Landroid/widget/PopupMenu$OnDismissListener;

    :cond_2b
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->l:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/ads/internal/view/g;->f:I

    sget v2, Lcom/facebook/ads/internal/view/g;->f:I

    sget v3, Lcom/facebook/ads/internal/view/g;->f:I

    sget v4, Lcom/facebook/ads/internal/view/g;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->l:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->l:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/internal/q/b/b;->g:Lcom/facebook/ads/internal/q/b/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/q/b/c;->a(Lcom/facebook/ads/internal/q/b/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/ads/internal/view/g$4;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/g$4;-><init>(Lcom/facebook/ads/internal/view/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/facebook/ads/internal/view/component/CircularProgressView;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/component/CircularProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->m:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->m:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    sget v1, Lcom/facebook/ads/internal/view/g;->f:I

    sget v2, Lcom/facebook/ads/internal/view/g;->f:I

    sget v3, Lcom/facebook/ads/internal/view/g;->f:I

    sget v4, Lcom/facebook/ads/internal/view/g;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->m:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->setProgress(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/facebook/ads/internal/view/g;->h:I

    sget v2, Lcom/facebook/ads/internal/view/g;->h:I

    sget v3, Lcom/facebook/ads/internal/view/g;->i:I

    sget v4, Lcom/facebook/ads/internal/view/g;->h:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/facebook/ads/internal/view/g;->e:I

    sget v3, Lcom/facebook/ads/internal/view/g;->e:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/view/g;->k:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g;->k:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g;->k:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g;->l:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g;->k:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g;->m:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/facebook/ads/internal/view/c/c;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->n:Lcom/facebook/ads/internal/view/c/c;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->n:Lcom/facebook/ads/internal/view/c/c;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->j:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/ads/internal/view/g;->f:I

    sget v2, Lcom/facebook/ads/internal/view/g;->f:I

    sget v3, Lcom/facebook/ads/internal/view/g;->f:I

    sget v4, Lcom/facebook/ads/internal/view/g;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->j:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->j:Landroid/widget/ImageView;

    sget-object v1, Lcom/facebook/ads/internal/q/b/b;->f:Lcom/facebook/ads/internal/q/b/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/q/b/c;->a(Lcom/facebook/ads/internal/q/b/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/ads/internal/view/g$5;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/g$5;-><init>(Lcom/facebook/ads/internal/view/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->j:Landroid/widget/ImageView;

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->o:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->o:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const-string v1, "Ad Choices"

    invoke-interface {v0, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/facebook/ads/internal/view/g;->d:I

    sget v2, Lcom/facebook/ads/internal/view/g;->d:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/facebook/ads/internal/view/g;->g:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/facebook/ads/internal/view/g;->g:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/facebook/ads/internal/view/g;->g:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->q:Lcom/facebook/ads/internal/view/e/b;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/g;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/g;)I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/g;->r:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/component/CircularProgressView;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->m:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b/o;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->a:Lcom/facebook/ads/internal/view/e/b/o;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b/c;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->b:Lcom/facebook/ads/internal/view/e/b/c;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/g;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/g;->t:Z

    return v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/g$a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->p:Lcom/facebook/ads/internal/view/g$a;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/view/g;)Landroid/widget/PopupMenu;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->o:Landroid/widget/PopupMenu;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/j;Z)V
    .registers 6

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/adapters/j;->a(Z)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->n:Lcom/facebook/ads/internal/view/c/c;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/adapters/j;->g(Z)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/view/c/c;->a(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->m:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    const/16 v2, 0x4d

    invoke-static {v0, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->a(II)V

    if-eqz p2, :cond_39

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_3e

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/q/a/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_38
    return-void

    :cond_39
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/ads/internal/q/a/v;->a(Landroid/view/View;I)V

    goto :goto_38

    :array_3e
    .array-data 4
        -0x6a000000
        0x0
    .end array-data
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g;->q:Lcom/facebook/ads/internal/view/e/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->q:Lcom/facebook/ads/internal/view/e/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g;->a:Lcom/facebook/ads/internal/view/e/b/o;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g;->b:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a([Lcom/facebook/ads/internal/j/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    iput p6, p0, Lcom/facebook/ads/internal/view/g;->r:I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->n:Lcom/facebook/ads/internal/view/c/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/internal/view/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->o:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/facebook/ads/internal/view/g$6;

    invoke-direct {v1, p0, p4, p5}, Lcom/facebook/ads/internal/view/g$6;-><init>(Lcom/facebook/ads/internal/view/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->o:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->u:Landroid/widget/PopupMenu$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    :cond_1e
    iget v0, p0, Lcom/facebook/ads/internal/view/g;->r:I

    if-gtz v0, :cond_27

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/g;->a(Z)V

    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public a(Z)V
    .registers 6

    const/4 v1, 0x4

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/g;->t:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g;->m:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    if-eqz p1, :cond_19

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->l:Landroid/widget/ImageView;

    if-eqz p1, :cond_1b

    :goto_15
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_19
    move v0, v2

    goto :goto_e

    :cond_1b
    move v2, v1

    goto :goto_15
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/g;->t:Z

    return v0
.end method

.method public b()V
    .registers 3

    const/4 v1, 0x4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/g;->t:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->m:Lcom/facebook/ads/internal/view/component/CircularProgressView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/view/e/b;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->q:Lcom/facebook/ads/internal/view/e/b;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->q:Lcom/facebook/ads/internal/view/e/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g;->a:Lcom/facebook/ads/internal/view/e/b/o;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g;->b:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b([Lcom/facebook/ads/internal/j/f;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/g;->q:Lcom/facebook/ads/internal/view/e/b;

    :cond_1d
    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->n:Lcom/facebook/ads/internal/view/c/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/c/c;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .registers 4

    const/16 v2, 0xe

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->o:Landroid/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->o:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->o:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g;->u:Landroid/widget/PopupMenu$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    :cond_1c
    return-void
.end method

.method public e()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/g;->s:Z

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g;->o:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_f
    return-void
.end method

.method public setToolbarListener(Lcom/facebook/ads/internal/view/g$a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g;->p:Lcom/facebook/ads/internal/view/g$a;

    return-void
.end method

###### Class com.facebook.ads.internal.view.g.AnonymousClass1 (com.facebook.ads.internal.view.g$1)
.class Lcom/facebook/ads/internal/view/g$1;
.super Lcom/facebook/ads/internal/view/e/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/g;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/o;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/n;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/g$1;->a(Lcom/facebook/ads/internal/view/e/b/n;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/n;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->a(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->b(Lcom/facebook/ads/internal/view/g;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->c(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/component/CircularProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->b(Lcom/facebook/ads/internal/view/g;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/g;->a(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b;->getDuration()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/g;->a(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b;->getCurrentPosition()I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/g;->c(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/component/CircularProgressView;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->setProgressWithAnimation(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/g;->a(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->a(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/g;->d(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b/o;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g$1;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/g;->e(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b/c;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b([Lcom/facebook/ads/internal/j/f;)V

    goto :goto_1d
.end method

###### Class com.facebook.ads.internal.view.g.AnonymousClass2 (com.facebook.ads.internal.view.g$2)
.class Lcom/facebook/ads/internal/view/g$2;
.super Lcom/facebook/ads/internal/view/e/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/g;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g$2;->a:Lcom/facebook/ads/internal/view/g;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/g$2;->a(Lcom/facebook/ads/internal/view/e/b/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/b;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$2;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->a(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$2;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->b(Lcom/facebook/ads/internal/view/g;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$2;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->c(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/component/CircularProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/CircularProgressView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$2;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->f(Lcom/facebook/ads/internal/view/g;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$2;->a:Lcom/facebook/ads/internal/view/g;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/g;->a(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$2;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->a(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g$2;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/g;->d(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b/o;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g$2;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/g;->e(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/e/b/c;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b([Lcom/facebook/ads/internal/j/f;)V

    goto :goto_1d
.end method

###### Class com.facebook.ads.internal.view.g.AnonymousClass3 (com.facebook.ads.internal.view.g$3)
.class Lcom/facebook/ads/internal/view/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/g;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/g;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g$3;->a:Lcom/facebook/ads/internal/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$3;->a:Lcom/facebook/ads/internal/view/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/g;->a(Lcom/facebook/ads/internal/view/g;Z)Z

    return-void
.end method

###### Class com.facebook.ads.internal.view.g.AnonymousClass4 (com.facebook.ads.internal.view.g$4)
.class Lcom/facebook/ads/internal/view/g$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/g;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/g;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g$4;->a:Lcom/facebook/ads/internal/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$4;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->g(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/g$a;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$4;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->f(Lcom/facebook/ads/internal/view/g;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$4;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->g(Lcom/facebook/ads/internal/view/g;)Lcom/facebook/ads/internal/view/g$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/g$a;->a()V

    :cond_19
    return-void
.end method

###### Class com.facebook.ads.internal.view.g.AnonymousClass5 (com.facebook.ads.internal.view.g$5)
.class Lcom/facebook/ads/internal/view/g$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/g;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/g;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g$5;->a:Lcom/facebook/ads/internal/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$5;->a:Lcom/facebook/ads/internal/view/g;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/g;->h(Lcom/facebook/ads/internal/view/g;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$5;->a:Lcom/facebook/ads/internal/view/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/g;->a(Lcom/facebook/ads/internal/view/g;Z)Z

    return-void
.end method

###### Class com.facebook.ads.internal.view.g.AnonymousClass6 (com.facebook.ads.internal.view.g$6)
.class Lcom/facebook/ads/internal/view/g$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/ads/internal/view/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/g;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/internal/view/g$6;->c:Lcom/facebook/ads/internal/view/g;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/g$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/g$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$6;->c:Lcom/facebook/ads/internal/view/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/g;->a(Lcom/facebook/ads/internal/view/g;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/g$6;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Lcom/facebook/ads/internal/q/c/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/q/c/g;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/g$6;->c:Lcom/facebook/ads/internal/view/g;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/g;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/g$6;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/g$6;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/q/c/g;->a(Lcom/facebook/ads/internal/q/c/g;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_24
    const/4 v0, 0x1

    return v0
.end method

###### Class com.facebook.ads.internal.view.g.a (com.facebook.ads.internal.view.g$a)
.class public interface abstract Lcom/facebook/ads/internal/view/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method
