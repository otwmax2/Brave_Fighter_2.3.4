###### Class com.facebook.ads.internal.view.e.c.l (com.facebook.ads.internal.view.e.c.l)
.class public Lcom/facebook/ads/internal/view/e/c/l;
.super Lcom/facebook/ads/internal/view/e/a/c;


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/e/b/i;

.field private final b:Lcom/facebook/ads/internal/view/e/b/k;

.field private final c:Lcom/facebook/ads/internal/view/e/b/c;

.field private final d:Lcom/facebook/ads/internal/view/e/c/m;

.field private final e:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/view/e/c/l;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 14

    const/16 v10, 0xd

    const-wide/high16 v8, 0x4052000000000000L    # 72.0

    const-wide v6, 0x4037c28f5c28f5c3L    # 23.76

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/a/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/l$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/l$1;-><init>(Lcom/facebook/ads/internal/view/e/c/l;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/l;->a:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/l$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/l$2;-><init>(Lcom/facebook/ads/internal/view/e/c/l;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/l;->b:Lcom/facebook/ads/internal/view/e/b/k;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/l$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/l$3;-><init>(Lcom/facebook/ads/internal/view/e/c/l;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/l;->c:Lcom/facebook/ads/internal/view/e/b/c;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/m;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/view/e/c/m;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/l;->d:Lcom/facebook/ads/internal/view/e/c/m;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/l;->d:Lcom/facebook/ads/internal/view/e/c/m;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/e/c/m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/l;->d:Lcom/facebook/ads/internal/view/e/c/m;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/c/m;->setChecked(Z)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/c/l;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/l;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p2, :cond_88

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/l;->e:Landroid/graphics/Paint;

    const/high16 v2, -0x67000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/e/c/l;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/l;->d:Lcom/facebook/ads/internal/view/e/c/m;

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/e/c/l;->addView(Landroid/view/View;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/e/c/l;->setGravity(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v0

    mul-double/2addr v4, v8

    double-to-int v0, v4

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/e/c/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_88
    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/l;->e:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/l;->e:Landroid/graphics/Paint;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_64
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/c/m;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/l;->d:Lcom/facebook/ads/internal/view/e/c/m;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->a()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/l;->a:Lcom/facebook/ads/internal/view/e/b/i;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/l;->b:Lcom/facebook/ads/internal/view/e/b/k;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/l;->c:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a([Lcom/facebook/ads/internal/j/f;)V

    :cond_26
    new-instance v0, Lcom/facebook/ads/internal/view/e/c/l$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/l$4;-><init>(Lcom/facebook/ads/internal/view/e/c/l;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/l;->d:Lcom/facebook/ads/internal/view/e/c/m;

    invoke-virtual {v1, v4}, Lcom/facebook/ads/internal/view/e/c/m;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/l;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected b()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/l;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/l;->c:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/l;->b:Lcom/facebook/ads/internal/view/e/b/k;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/l;->a:Lcom/facebook/ads/internal/view/e/b/i;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b([Lcom/facebook/ads/internal/j/f;)V

    :cond_27
    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->b()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/l;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/l;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/e/a/c;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.l.AnonymousClass1 (com.facebook.ads.internal.view.e.c.l$1)
.class Lcom/facebook/ads/internal/view/e/c/l$1;
.super Lcom/facebook/ads/internal/view/e/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/l;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/l$1;->a:Lcom/facebook/ads/internal/view/e/c/l;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/h;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/l$1;->a(Lcom/facebook/ads/internal/view/e/b/h;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/h;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/l$1;->a:Lcom/facebook/ads/internal/view/e/c/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/l;->a(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/c/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/m;->setChecked(Z)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.l.AnonymousClass2 (com.facebook.ads.internal.view.e.c.l$2)
.class Lcom/facebook/ads/internal/view/e/c/l$2;
.super Lcom/facebook/ads/internal/view/e/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/l;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/l$2;->a:Lcom/facebook/ads/internal/view/e/c/l;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/j;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/l$2;->a(Lcom/facebook/ads/internal/view/e/b/j;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/j;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/l$2;->a:Lcom/facebook/ads/internal/view/e/c/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/l;->a(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/c/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/m;->setChecked(Z)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.l.AnonymousClass3 (com.facebook.ads.internal.view.e.c.l$3)
.class Lcom/facebook/ads/internal/view/e/c/l$3;
.super Lcom/facebook/ads/internal/view/e/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/l;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/l$3;->a:Lcom/facebook/ads/internal/view/e/c/l;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/l$3;->a(Lcom/facebook/ads/internal/view/e/b/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/b;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/l$3;->a:Lcom/facebook/ads/internal/view/e/c/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/l;->a(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/c/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/m;->setChecked(Z)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.l.AnonymousClass4 (com.facebook.ads.internal.view.e.c.l$4)
.class Lcom/facebook/ads/internal/view/e/c/l$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/l;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/l;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/l$4;->a:Lcom/facebook/ads/internal/view/e/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/l$4;->a:Lcom/facebook/ads/internal/view/e/c/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/l;->b(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/facebook/ads/internal/view/e/c/l$5;->a:[I

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/l$4;->a:Lcom/facebook/ads/internal/view/e/c/l;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/l;->c(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/d/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    goto :goto_8

    :pswitch_1f
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/l$4;->a:Lcom/facebook/ads/internal/view/e/c/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/l;->d(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/e/a/a;->b:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/b;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    goto :goto_8

    :pswitch_2b
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/l$4;->a:Lcom/facebook/ads/internal/view/e/c/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/l;->e(Lcom/facebook/ads/internal/view/e/c/l;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/b;->a(Z)V

    goto :goto_8

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_2b
    .end packed-switch
.end method

###### Class com.facebook.ads.internal.view.e.c.l.AnonymousClass5 (com.facebook.ads.internal.view.e.c.l$5)
.class synthetic Lcom/facebook/ads/internal/view/e/c/l$5;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/ads/internal/view/e/d/d;->values()[Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/view/e/c/l$5;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/view/e/c/l$5;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->c:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_49

    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/internal/view/e/c/l$5;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->a:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_47

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/ads/internal/view/e/c/l$5;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/facebook/ads/internal/view/e/c/l$5;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_43

    :goto_35
    :try_start_35
    sget-object v0, Lcom/facebook/ads/internal/view/e/c/l$5;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/d/d;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    goto :goto_40

    :catch_43
    move-exception v0

    goto :goto_35

    :catch_45
    move-exception v0

    goto :goto_2a

    :catch_47
    move-exception v0

    goto :goto_1f

    :catch_49
    move-exception v0

    goto :goto_14
.end method
