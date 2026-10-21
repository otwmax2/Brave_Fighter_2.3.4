###### Class com.facebook.ads.internal.view.e.c.i (com.facebook.ads.internal.view.e.c.i)
.class public Lcom/facebook/ads/internal/view/e/c/i;
.super Lcom/facebook/ads/internal/view/e/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/e/c/i$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/e/c/i$a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Lcom/facebook/ads/internal/j/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/j/f",
            "<",
            "Lcom/facebook/ads/internal/view/e/b/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v3, -0x2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/a/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/i$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/i$1;-><init>(Lcom/facebook/ads/internal/view/e/c/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i;->f:Lcom/facebook/ads/internal/j/f;

    iput p2, p0, Lcom/facebook/ads/internal/view/e/c/i;->b:I

    iput-object p3, p0, Lcom/facebook/ads/internal/view/e/c/i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/e/c/i;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/i$a;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/view/e/c/i$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i;->a:Lcom/facebook/ads/internal/view/e/c/i$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i;->a:Lcom/facebook/ads/internal/view/e/c/i$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/i$a;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/i;->a:Lcom/facebook/ads/internal/view/e/c/i$a;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/e/c/i;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/c/i;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/i;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/c/i;)I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/view/e/c/i;->b:I

    return v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/e/c/i;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/i;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/e/c/i;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/e/c/i;)Lcom/facebook/ads/internal/view/e/c/i$a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i;->a:Lcom/facebook/ads/internal/view/e/c/i$a;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/view/e/c/i;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/view/e/c/i;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/i;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/ads/internal/view/e/c/i;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/i;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->a()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/i;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/i;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/i;->f:Lcom/facebook/ads/internal/j/f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a(Lcom/facebook/ads/internal/j/f;)Z

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i;->a:Lcom/facebook/ads/internal/view/e/c/i$a;

    new-instance v1, Lcom/facebook/ads/internal/view/e/c/i$2;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/e/c/i$2;-><init>(Lcom/facebook/ads/internal/view/e/c/i;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/i$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/i;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i;->a:Lcom/facebook/ads/internal/view/e/c/i$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/i$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/i;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/i;->f:Lcom/facebook/ads/internal/j/f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b(Lcom/facebook/ads/internal/j/f;)Z

    :cond_19
    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->b()V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.i.AnonymousClass1 (com.facebook.ads.internal.view.e.c.i$1)
.class Lcom/facebook/ads/internal/view/e/c/i$1;
.super Lcom/facebook/ads/internal/j/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/j/f",
        "<",
        "Lcom/facebook/ads/internal/view/e/b/n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/i;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/i$1;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-direct {p0}, Lcom/facebook/ads/internal/j/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/ads/internal/view/e/b/n;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/e/b/n;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/n;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/i$1;->a(Lcom/facebook/ads/internal/view/e/b/n;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/n;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$1;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/i;->a(Lcom/facebook/ads/internal/view/e/c/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$1;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/i;->b(Lcom/facebook/ads/internal/view/e/c/i;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$1;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/i;->c(Lcom/facebook/ads/internal/view/e/c/i;)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/i$1;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/i;->d(Lcom/facebook/ads/internal/view/e/c/i;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    if-lez v0, :cond_51

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/i$1;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/i;->f(Lcom/facebook/ads/internal/view/e/c/i;)Lcom/facebook/ads/internal/view/e/c/i$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/i$1;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/e/c/i;->e(Lcom/facebook/ads/internal/view/e/c/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/e/c/i$a;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14

    :cond_51
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$1;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/i;->f(Lcom/facebook/ads/internal/view/e/c/i;)Lcom/facebook/ads/internal/view/e/c/i$a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/i$1;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/i;->g(Lcom/facebook/ads/internal/view/e/c/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/i$a;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$1;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/i;->a(Lcom/facebook/ads/internal/view/e/c/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_14
.end method

###### Class com.facebook.ads.internal.view.e.c.i.AnonymousClass2 (com.facebook.ads.internal.view.e.c.i$2)
.class Lcom/facebook/ads/internal/view/e/c/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/i;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/i$2;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$2;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/i;->a(Lcom/facebook/ads/internal/view/e/c/i;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "SkipPlugin"

    const-string v1, "User clicked skip before the ads is allowed to skip."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$2;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/i;->h(Lcom/facebook/ads/internal/view/e/c/i;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$2;->a:Lcom/facebook/ads/internal/view/e/c/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/i;->i(Lcom/facebook/ads/internal/view/e/c/i;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->e()V

    goto :goto_13
.end method

###### Class com.facebook.ads.internal.view.e.c.i.a (com.facebook.ads.internal.view.e.c.i$a)
.class Lcom/facebook/ads/internal/view/e/c/i$a;
.super Landroid/widget/TextView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/e/c/i$a;->setBackgroundColor(I)V

    const v1, -0x333334

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/e/c/i$a;->setTextColor(I)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/facebook/ads/internal/view/e/c/i$a;->setPadding(IIII)V

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/i$a;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->a:Landroid/graphics/Paint;

    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x71000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->c:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/i$a;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/i$a;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/i$a;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->c:Landroid/graphics/RectF;

    int-to-float v3, v4

    int-to-float v4, v4

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v7, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->c:Landroid/graphics/RectF;

    int-to-float v3, v8

    int-to-float v4, v8

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/i$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v7, v7, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_e
.end method
