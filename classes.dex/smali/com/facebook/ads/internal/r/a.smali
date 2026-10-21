###### Class com.facebook.ads.internal.r.a (com.facebook.ads.internal.r.a)
.class public Lcom/facebook/ads/internal/r/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/r/a$b;,
        Lcom/facebook/ads/internal/r/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:I

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/r/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private h:Ljava/lang/Runnable;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/facebook/ads/internal/r/b;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/r/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZLcom/facebook/ads/internal/r/a$a;)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/r/a;->e:Landroid/os/Handler;

    iput v0, p0, Lcom/facebook/ads/internal/r/a;->i:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/facebook/ads/internal/r/a;->j:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/internal/r/a;->k:Z

    new-instance v1, Lcom/facebook/ads/internal/r/b;

    sget-object v2, Lcom/facebook/ads/internal/r/c;->a:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/r/a;->l:Lcom/facebook/ads/internal/r/b;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/r/a;->m:Ljava/util/Map;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/internal/r/a;->n:J

    iput v0, p0, Lcom/facebook/ads/internal/r/a;->o:I

    iput-object p1, p0, Lcom/facebook/ads/internal/r/a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_36

    invoke-static {p1}, Lcom/facebook/ads/internal/q/a/v;->a(Landroid/view/View;)V

    :cond_36
    iput p2, p0, Lcom/facebook/ads/internal/r/a;->c:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/r/a;->f:Ljava/lang/ref/WeakReference;

    iput-boolean p4, p0, Lcom/facebook/ads/internal/r/a;->g:Z

    if-gez p3, :cond_44

    move p3, v0

    :cond_44
    iput p3, p0, Lcom/facebook/ads/internal/r/a;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/facebook/ads/internal/r/a$a;)V
    .registers 10

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/r/a;-><init>(Landroid/view/View;IIZLcom/facebook/ads/internal/r/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IZLcom/facebook/ads/internal/r/a$a;)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/r/a;-><init>(Landroid/view/View;IIZLcom/facebook/ads/internal/r/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/r/a;I)I
    .registers 2

    iput p1, p0, Lcom/facebook/ads/internal/r/a;->o:I

    return p1
.end method

.method private static a(Ljava/util/Vector;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v6

    mul-int/lit8 v0, v6, 0x2

    new-array v7, v0, [I

    mul-int/lit8 v0, v6, 0x2

    new-array v8, v0, [I

    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v1, v6, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    move v3, v2

    move v4, v2

    move v5, v2

    :goto_20
    if-ge v3, v6, :cond_44

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    add-int/lit8 v9, v5, 0x1

    iget v10, v1, Landroid/graphics/Rect;->left:I

    aput v10, v7, v5

    add-int/lit8 v10, v4, 0x1

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    aput v5, v8, v4

    add-int/lit8 v5, v9, 0x1

    iget v4, v1, Landroid/graphics/Rect;->right:I

    aput v4, v7, v9

    add-int/lit8 v4, v10, 0x1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    aput v1, v8, v10

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_20

    :cond_44
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    move v4, v2

    :goto_4b
    if-ge v4, v6, :cond_84

    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v7, v3}, Lcom/facebook/ads/internal/r/a;->a([II)I

    move-result v3

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v5}, Lcom/facebook/ads/internal/r/a;->a([II)I

    move-result v5

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Lcom/facebook/ads/internal/r/a;->a([II)I

    move-result v9

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v1}, Lcom/facebook/ads/internal/r/a;->a([II)I

    move-result v10

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    :goto_6e
    if-gt v3, v5, :cond_80

    add-int/lit8 v1, v9, 0x1

    :goto_72
    if-gt v1, v10, :cond_7c

    aget-object v11, v0, v3

    const/4 v12, 0x1

    aput-boolean v12, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_7c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6e

    :cond_80
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4b

    :cond_84
    move v5, v2

    move v1, v2

    :goto_86
    mul-int/lit8 v3, v6, 0x2

    if-ge v5, v3, :cond_b1

    move v3, v2

    move v4, v1

    :goto_8c
    mul-int/lit8 v1, v6, 0x2

    if-ge v3, v1, :cond_ac

    aget-object v1, v0, v5

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_aa

    aget v1, v7, v5

    add-int/lit8 v9, v5, -0x1

    aget v9, v7, v9

    sub-int/2addr v1, v9

    aget v9, v8, v3

    add-int/lit8 v10, v3, -0x1

    aget v10, v8, v10

    sub-int/2addr v9, v10

    mul-int/2addr v1, v9

    :goto_a5
    add-int/2addr v4, v1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8c

    :cond_aa
    move v1, v2

    goto :goto_a5

    :cond_ac
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v4

    goto :goto_86

    :cond_b1
    return v1
.end method

.method private static a([II)I
    .registers 7

    const/4 v2, 0x0

    array-length v1, p0

    :goto_2
    if-ge v2, v1, :cond_1c

    sub-int v0, v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    aget v3, p0, v0

    if-ne v3, p1, :cond_e

    :goto_d
    return v0

    :cond_e
    aget v3, p0, v0

    if-le v3, p1, :cond_16

    move v1, v2

    :goto_13
    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_16
    add-int/lit8 v0, v0, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_13

    :cond_1c
    const/4 v0, -0x1

    goto :goto_d
.end method

.method static synthetic a(Lcom/facebook/ads/internal/r/a;J)J
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/internal/r/a;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/r/a;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/r/a;->b:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/view/View;I)Lcom/facebook/ads/internal/r/b;
    .registers 16

    if-nez p0, :cond_11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "adView is null."

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->c:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_25

    const/4 v0, 0x0

    const-string v1, "adView has no parent."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->d:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    goto :goto_10

    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_39

    const/4 v0, 0x0

    const-string v1, "adView parent is not set to VISIBLE."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->d:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    goto :goto_10

    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x0

    const-string v1, "adView window is not set to VISIBLE."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->e:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    goto :goto_10

    :cond_4d
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_59

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_8a

    :cond_59
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adView has invisible dimensions (w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->g:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    goto :goto_10

    :cond_8a
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a4

    const/4 v0, 0x0

    const-string v1, "adView is too transparent."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->h:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    goto/16 :goto_10

    :cond_a4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v0, 0x2

    new-array v4, v0, [I

    :try_start_af
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_b2
    .catch Ljava/lang/NullPointerException; {:try_start_af .. :try_end_b2} :catch_c6

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_d6

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->f:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    goto/16 :goto_10

    :catch_c6
    move-exception v0

    const/4 v0, 0x0

    const-string v1, "Cannot get location on screen."

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->g:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    goto/16 :goto_10

    :cond_d6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_163

    const-string v0, "window"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :goto_f4
    const/4 v1, 0x0

    invoke-static {v6}, Lcom/facebook/ads/internal/l/a;->p(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_16c

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v8, v4, v8

    const/4 v9, 0x0

    aget v9, v4, v9

    add-int/2addr v9, v2

    const/4 v10, 0x1

    aget v10, v4, v10

    add-int/2addr v10, v3

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-eqz v7, :cond_12b

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v1, v5

    int-to-float v1, v1

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v1, v5

    mul-int v5, v2, v3

    int-to-float v5, v5

    div-float/2addr v1, v5

    :cond_12b
    :goto_12b
    invoke-static {v6}, Lcom/facebook/ads/internal/l/a;->n(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v6}, Lcom/facebook/ads/internal/l/a;->o(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    if-eqz v5, :cond_18c

    cmpg-float v0, v1, v7

    if-gez v0, :cond_1e8

    const/4 v0, 0x0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "adView visible area is too small [%.2f%% visible, current threshold %.2f%%]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v2, Lcom/facebook/ads/internal/r/c;->n:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;F)V

    goto/16 :goto_10

    :cond_163
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    goto :goto_f4

    :cond_16c
    invoke-static {p0}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/r/a;->a(Ljava/util/Vector;)I

    move-result v7

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/facebook/ads/internal/r/a;->a(Ljava/util/Vector;)I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    mul-int/2addr v5, v7

    int-to-float v1, v1

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v1, v7

    int-to-float v5, v5

    div-float/2addr v1, v5

    goto :goto_12b

    :cond_18c
    const/4 v5, 0x0

    aget v5, v4, v5

    if-ltz v5, :cond_199

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v8, 0x0

    aget v8, v4, v8

    sub-int/2addr v5, v8

    if-ge v5, v2, :cond_1a8

    :cond_199
    const/4 v0, 0x0

    const-string v2, "adView is not fully on screen horizontally."

    invoke-static {p0, v0, v2}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v2, Lcom/facebook/ads/internal/r/c;->j:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;F)V

    goto/16 :goto_10

    :cond_1a8
    int-to-double v8, v3

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    int-to-double v12, p1

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    double-to-int v2, v8

    const/4 v5, 0x1

    aget v5, v4, v5

    if-gez v5, :cond_1cf

    const/4 v5, 0x1

    aget v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v2, :cond_1cf

    const/4 v0, 0x0

    const-string v2, "adView is not visible from the top."

    invoke-static {p0, v0, v2}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v2, Lcom/facebook/ads/internal/r/c;->k:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;F)V

    goto/16 :goto_10

    :cond_1cf
    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v0, v3, v0

    if-le v0, v2, :cond_1e8

    const/4 v0, 0x0

    const-string v2, "adView is not visible from the bottom."

    invoke-static {p0, v0, v2}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v2, Lcom/facebook/ads/internal/r/c;->l:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;F)V

    goto/16 :goto_10

    :cond_1e8
    invoke-static {v6}, Lcom/facebook/ads/internal/q/e/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1fd

    const/4 v0, 0x0

    const-string v2, "Screen is not interactive."

    invoke-static {p0, v0, v2}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v2, Lcom/facebook/ads/internal/r/c;->m:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;F)V

    goto/16 :goto_10

    :cond_1fd
    invoke-static {v6}, Lcom/facebook/ads/internal/q/e/b;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/q/a/x;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_216

    const/4 v0, 0x0

    const-string v2, "Keyguard is obstructing view."

    invoke-static {p0, v0, v2}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v2, Lcom/facebook/ads/internal/r/c;->p:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;F)V

    goto/16 :goto_10

    :cond_216
    invoke-static {v6}, Lcom/facebook/ads/internal/l/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_231

    invoke-static {v2}, Lcom/facebook/ads/internal/q/a/x;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_231

    const/4 v0, 0x0

    const-string v3, "Ad is on top of the Lockscreen."

    invoke-static {p0, v0, v3}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v3, Lcom/facebook/ads/internal/r/c;->q:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;FLjava/util/Map;)V

    goto/16 :goto_10

    :cond_231
    const/4 v0, 0x0

    invoke-static {v6}, Lcom/facebook/ads/internal/l/a;->q(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_23c

    invoke-static {p0}, Lcom/facebook/ads/internal/r/d;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v0

    :cond_23c
    if-eqz v0, :cond_26f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_257

    const/4 v0, 0x0

    const-string v1, "adView is not in the top activity"

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->r:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    goto/16 :goto_10

    :cond_257
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_26f

    const/4 v0, 0x0

    const-string v1, "adView is not visible"

    invoke-static {p0, v0, v1}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->f:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    goto/16 :goto_10

    :cond_26f
    invoke-static {v6}, Lcom/facebook/ads/internal/l/a;->r(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2a1

    if-eqz v0, :cond_2a1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v7

    if-gez v3, :cond_2a1

    const/4 v3, 0x0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "adView visible area is too small [%.2f%% visible, current threshold %.2f%%]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v0, 0x1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v3, Lcom/facebook/ads/internal/r/c;->n:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;FLjava/util/Map;)V

    goto/16 :goto_10

    :cond_2a1
    const/4 v0, 0x1

    const-string v3, "adView is visible."

    invoke-static {p0, v0, v3}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;ZLjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v3, Lcom/facebook/ads/internal/r/c;->b:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;FLjava/util/Map;)V

    goto/16 :goto_10
.end method

.method static synthetic a(Lcom/facebook/ads/internal/r/a;Lcom/facebook/ads/internal/r/b;)Lcom/facebook/ads/internal/r/b;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/r/a;->l:Lcom/facebook/ads/internal/r/b;

    return-object p1
.end method

.method private static a(Landroid/view/View;)Ljava/util/Vector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_f

    move-object v0, v2

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/ads/internal/r/a;->b(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2f
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    move-object v0, v2

    goto :goto_e
.end method

.method private static a(Landroid/view/View;ZLjava/lang/String;)V
    .registers 3

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/r/a;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/r/a;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static b(Landroid/view/View;)Ljava/util/Vector;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1c

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1c

    :cond_1a
    move-object v0, v1

    :goto_1b
    return-object v0

    :cond_1c
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3f

    invoke-static {p0}, Lcom/facebook/ads/internal/r/a;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3f

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/r/a;->b(Landroid/view/View;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3d
    move-object v0, v1

    goto :goto_1b

    :cond_3f
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4d
    move-object v0, v1

    goto :goto_1b
.end method

.method static synthetic c(Lcom/facebook/ads/internal/r/a;)I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/r/a;->c:I

    return v0
.end method

.method private static c(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-gtz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static synthetic d(Lcom/facebook/ads/internal/r/a;)I
    .registers 3

    iget v0, p0, Lcom/facebook/ads/internal/r/a;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/ads/internal/r/a;->o:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/r/a;)I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/r/a;->o:I

    return v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/r/a;)I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/r/a;->d:I

    return v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/r/a;)Lcom/facebook/ads/internal/r/b;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/r/a;->l:Lcom/facebook/ads/internal/r/b;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/r/a;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/r/a;->m:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/ads/internal/r/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/r/a;->g:Z

    return v0
.end method

.method static synthetic j(Lcom/facebook/ads/internal/r/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/r/a;->k:Z

    return v0
.end method

.method static synthetic k(Lcom/facebook/ads/internal/r/a;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/r/a;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic l(Lcom/facebook/ads/internal/r/a;)I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/r/a;->j:I

    return v0
.end method

.method static synthetic m(Lcom/facebook/ads/internal/r/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/r/a;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/r/a;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/facebook/ads/internal/r/a;->b()V

    :cond_8
    new-instance v0, Lcom/facebook/ads/internal/r/a$b;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/r/a$b;-><init>(Lcom/facebook/ads/internal/r/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/r/a;->h:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/facebook/ads/internal/r/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/r/a;->h:Ljava/lang/Runnable;

    iget v2, p0, Lcom/facebook/ads/internal/r/a;->i:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/r/a;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/r/a;->o:I

    new-instance v0, Lcom/facebook/ads/internal/r/b;

    sget-object v1, Lcom/facebook/ads/internal/r/c;->a:Lcom/facebook/ads/internal/r/c;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/r/b;-><init>(Lcom/facebook/ads/internal/r/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/r/a;->l:Lcom/facebook/ads/internal/r/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/r/a;->m:Ljava/util/Map;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/internal/r/a;->i:I

    return-void
.end method

.method public declared-synchronized a(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "vrc"

    iget-object v1, p0, Lcom/facebook/ads/internal/r/a;->l:Lcom/facebook/ads/internal/r/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/r/b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vp"

    iget-object v1, p0, Lcom/facebook/ads/internal/r/a;->l:Lcom/facebook/ads/internal/r/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/r/b;->c()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vh"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/facebook/ads/internal/r/a;->m:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vt"

    iget-wide v2, p0, Lcom/facebook/ads/internal/r/a;->n:J

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/q/a/r;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/r/a;->l:Lcom/facebook/ads/internal/r/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/b;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-void

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/r/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/r/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/r/a;->h:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/r/a;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/r/a;->o:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/internal/r/a;->j:I

    return-void
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/facebook/ads/internal/r/c;->values()[Lcom/facebook/ads/internal/r/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/r/a;->l:Lcom/facebook/ads/internal/r/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/r/b;->b()I

    move-result v1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (%.1f%%)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/ads/internal/r/a;->l:Lcom/facebook/ads/internal/r/b;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/r/b;->c()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3d

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.facebook.ads.internal.r.a.AbstractC0017a (com.facebook.ads.internal.r.a$a)
.class public abstract Lcom/facebook/ads/internal/r/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()V
    .registers 1

    return-void
.end method

###### Class com.facebook.ads.internal.r.a.b (com.facebook.ads.internal.r.a$b)
.class final Lcom/facebook/ads/internal/r/a$b;
.super Lcom/facebook/ads/internal/q/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/q/a/w",
        "<",
        "Lcom/facebook/ads/internal/r/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/r/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/q/a/w;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/r/a$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/r/a;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->a(Lcom/facebook/ads/internal/r/a;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->b(Lcom/facebook/ads/internal/r/a;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/r/a$a;

    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->c(Lcom/facebook/ads/internal/r/a;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;I)Lcom/facebook/ads/internal/r/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/internal/r/b;->a()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->d(Lcom/facebook/ads/internal/r/a;)I

    :goto_2e
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->e(Lcom/facebook/ads/internal/r/a;)I

    move-result v3

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->f(Lcom/facebook/ads/internal/r/a;)I

    move-result v5

    if-le v3, v5, :cond_bb

    move v3, v2

    :goto_39
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->g(Lcom/facebook/ads/internal/r/a;)Lcom/facebook/ads/internal/r/b;

    move-result-object v5

    if-eqz v5, :cond_be

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->g(Lcom/facebook/ads/internal/r/a;)Lcom/facebook/ads/internal/r/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/internal/r/b;->a()Z

    move-result v5

    if-eqz v5, :cond_be

    move v5, v2

    :goto_4a
    if-nez v3, :cond_52

    invoke-virtual {v6}, Lcom/facebook/ads/internal/r/b;->a()Z

    move-result v2

    if-nez v2, :cond_55

    :cond_52
    invoke-static {v0, v6}, Lcom/facebook/ads/internal/r/a;->a(Lcom/facebook/ads/internal/r/a;Lcom/facebook/ads/internal/r/b;)Lcom/facebook/ads/internal/r/b;

    :cond_55
    invoke-virtual {v6}, Lcom/facebook/ads/internal/r/b;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    monitor-enter v0

    :try_start_5e
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->h(Lcom/facebook/ads/internal/r/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->h(Lcom/facebook/ads/internal/r/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_76
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->h(Lcom/facebook/ads/internal/r/a;)Ljava/util/Map;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_5e .. :try_end_84} :catchall_c0

    if-eqz v3, :cond_c3

    if-nez v5, :cond_c3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/r/a;->a(Lcom/facebook/ads/internal/r/a;J)J

    invoke-virtual {v1}, Lcom/facebook/ads/internal/r/a$a;->a()V

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->i(Lcom/facebook/ads/internal/r/a;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_98
    :goto_98
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->j(Lcom/facebook/ads/internal/r/a;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->k(Lcom/facebook/ads/internal/r/a;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->m(Lcom/facebook/ads/internal/r/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->k(Lcom/facebook/ads/internal/r/a;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->l(Lcom/facebook/ads/internal/r/a;)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    :cond_b6
    invoke-static {v0, v4}, Lcom/facebook/ads/internal/r/a;->a(Lcom/facebook/ads/internal/r/a;I)I

    goto/16 :goto_2e

    :cond_bb
    move v3, v4

    goto/16 :goto_39

    :cond_be
    move v5, v4

    goto :goto_4a

    :catchall_c0
    move-exception v1

    :try_start_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v1

    :cond_c3
    if-nez v3, :cond_98

    if-eqz v5, :cond_98

    invoke-virtual {v1}, Lcom/facebook/ads/internal/r/a$a;->b()V

    goto :goto_98
.end method
