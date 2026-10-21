###### Class com.facebook.ads.internal.view.c.a (com.facebook.ads.internal.view.c.a)
.class public Lcom/facebook/ads/internal/view/c/a;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/facebook/ads/internal/view/e/b;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/view/e/b;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/c/a;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/internal/view/c/a;->b:Lcom/facebook/ads/internal/view/e/b;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/c/a;->setGravity(I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/c/a;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->d:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/c/a;->setBackgroundColor(I)V

    new-instance v0, Lcom/facebook/ads/internal/view/c/a$1;

    invoke-direct {v0, p0, p6, p7}, Lcom/facebook/ads/internal/view/c/a$1;-><init>(Lcom/facebook/ads/internal/view/c/a;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/c/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/c/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/c/a;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a;->b:Lcom/facebook/ads/internal/view/e/b;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/c/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c/a;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/c/a;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/c/a;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c/a;->d:Landroid/graphics/RectF;

    mul-float v2, v5, v0

    mul-float/2addr v0, v5

    iget-object v3, p0, Lcom/facebook/ads/internal/view/c/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.c.a.AnonymousClass1 (com.facebook.ads.internal.view.c.a$1)
.class Lcom/facebook/ads/internal/view/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/view/e/b;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/m/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/ads/internal/view/c/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/c/a;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/internal/view/c/a$1;->c:Lcom/facebook/ads/internal/view/c/a;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/c/a$1;->a:Lcom/facebook/ads/internal/m/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/c/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a$1;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/c/a;->a(Lcom/facebook/ads/internal/view/c/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c/a$1;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/c/a;->b(Lcom/facebook/ads/internal/view/c/a;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/internal/view/e/b/a;

    invoke-direct {v2, v0}, Lcom/facebook/ads/internal/view/e/b/a;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/j/e;->a(Lcom/facebook/ads/internal/j/d;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c/a$1;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/c/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/c/a$1;->a:Lcom/facebook/ads/internal/m/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/c/a$1;->b:Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2, v3, v0, v4}, Lcom/facebook/ads/internal/a/b;->a(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->b()V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_59

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    const-class v1, Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/c/a$1;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/c/a;->a(Lcom/facebook/ads/internal/view/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    :catch_59
    move-exception v0

    const-class v1, Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34
.end method
