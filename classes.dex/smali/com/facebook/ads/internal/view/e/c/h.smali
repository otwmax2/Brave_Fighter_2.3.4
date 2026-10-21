###### Class com.facebook.ads.internal.view.e.c.h (com.facebook.ads.internal.view.e.c.h)
.class public Lcom/facebook/ads/internal/view/e/c/h;
.super Lcom/facebook/ads/internal/view/e/a/c;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/e/b/m;

.field private final b:Lcom/facebook/ads/internal/view/e/b/i;

.field private final c:Lcom/facebook/ads/internal/view/e/b/k;

.field private final d:Lcom/facebook/ads/internal/view/e/b/c;

.field private final e:Lcom/facebook/ads/internal/view/e/c/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/view/e/c/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/view/e/c/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/e/a/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/h$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/h$1;-><init>(Lcom/facebook/ads/internal/view/e/c/h;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h;->a:Lcom/facebook/ads/internal/view/e/b/m;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/h$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/h$2;-><init>(Lcom/facebook/ads/internal/view/e/c/h;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h;->b:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/h$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/h$3;-><init>(Lcom/facebook/ads/internal/view/e/c/h;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h;->c:Lcom/facebook/ads/internal/view/e/b/k;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/h$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/h$4;-><init>(Lcom/facebook/ads/internal/view/e/c/h;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h;->d:Lcom/facebook/ads/internal/view/e/b/c;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/view/e/c/m;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/e/c/m;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/e/c/h;->e:Lcom/facebook/ads/internal/view/e/c/m;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/h;->e:Lcom/facebook/ads/internal/view/e/c/m;

    invoke-virtual {v1, v3}, Lcom/facebook/ads/internal/view/e/c/m;->setChecked(Z)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/h;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h;->e:Lcom/facebook/ads/internal/view/e/c/m;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/e/c/h;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/view/e/c/h;->setClickable(Z)V

    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/view/e/c/h;->setFocusable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/h;)Lcom/facebook/ads/internal/view/e/c/m;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h;->e:Lcom/facebook/ads/internal/view/e/c/m;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 5

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h;->e:Lcom/facebook/ads/internal/view/e/c/m;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/internal/view/e/c/m;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/view/e/c/h;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/h;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/h;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/h;->a:Lcom/facebook/ads/internal/view/e/b/m;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/h;->d:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/h;->b:Lcom/facebook/ads/internal/view/e/b/i;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/h;->c:Lcom/facebook/ads/internal/view/e/b/k;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a([Lcom/facebook/ads/internal/j/f;)V

    :cond_33
    return-void
.end method

.method protected b()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/h;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/h;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/h;->c:Lcom/facebook/ads/internal/view/e/b/k;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/h;->b:Lcom/facebook/ads/internal/view/e/b/i;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/h;->d:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/h;->a:Lcom/facebook/ads/internal/view/e/b/m;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b([Lcom/facebook/ads/internal/j/f;)V

    :cond_29
    invoke-virtual {p0, v4}, Lcom/facebook/ads/internal/view/e/c/h;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h;->e:Lcom/facebook/ads/internal/view/e/c/m;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/e/c/m;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->b()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/h;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/e/b;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/view/e/d/d;->c:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v3, v4, :cond_27

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/e/b;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/view/e/d/d;->e:Lcom/facebook/ads/internal/view/e/d/d;

    if-eq v3, v4, :cond_27

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/e/b;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/view/e/d/d;->g:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v3, v4, :cond_2e

    :cond_27
    sget-object v0, Lcom/facebook/ads/internal/view/e/a/a;->b:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/view/e/b;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    move v0, v1

    goto :goto_8

    :cond_2e
    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/e/b;->getState()Lcom/facebook/ads/internal/view/e/d/d;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/view/e/d/d;->d:Lcom/facebook/ads/internal/view/e/d/d;

    if-ne v3, v4, :cond_8

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/e/b;->a(Z)V

    goto :goto_8
.end method

###### Class com.facebook.ads.internal.view.e.c.h.AnonymousClass1 (com.facebook.ads.internal.view.e.c.h$1)
.class Lcom/facebook/ads/internal/view/e/c/h$1;
.super Lcom/facebook/ads/internal/view/e/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/h;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/h$1;->a:Lcom/facebook/ads/internal/view/e/c/h;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/l;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/h$1;->a(Lcom/facebook/ads/internal/view/e/b/l;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/l;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h$1;->a:Lcom/facebook/ads/internal/view/e/c/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/h;->setVisibility(I)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.h.AnonymousClass2 (com.facebook.ads.internal.view.e.c.h$2)
.class Lcom/facebook/ads/internal/view/e/c/h$2;
.super Lcom/facebook/ads/internal/view/e/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/h;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/h$2;->a:Lcom/facebook/ads/internal/view/e/c/h;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/h;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/h$2;->a(Lcom/facebook/ads/internal/view/e/b/h;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/h;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h$2;->a:Lcom/facebook/ads/internal/view/e/c/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/h;->a(Lcom/facebook/ads/internal/view/e/c/h;)Lcom/facebook/ads/internal/view/e/c/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/m;->setChecked(Z)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.h.AnonymousClass3 (com.facebook.ads.internal.view.e.c.h$3)
.class Lcom/facebook/ads/internal/view/e/c/h$3;
.super Lcom/facebook/ads/internal/view/e/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/h;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/h$3;->a:Lcom/facebook/ads/internal/view/e/c/h;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/j;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/h$3;->a(Lcom/facebook/ads/internal/view/e/b/j;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/j;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h$3;->a:Lcom/facebook/ads/internal/view/e/c/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/h;->a(Lcom/facebook/ads/internal/view/e/c/h;)Lcom/facebook/ads/internal/view/e/c/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/m;->setChecked(Z)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.h.AnonymousClass4 (com.facebook.ads.internal.view.e.c.h$4)
.class Lcom/facebook/ads/internal/view/e/c/h$4;
.super Lcom/facebook/ads/internal/view/e/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/h;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/h$4;->a:Lcom/facebook/ads/internal/view/e/c/h;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/h$4;->a(Lcom/facebook/ads/internal/view/e/b/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/b;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/h$4;->a:Lcom/facebook/ads/internal/view/e/c/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/h;->a(Lcom/facebook/ads/internal/view/e/c/h;)Lcom/facebook/ads/internal/view/e/c/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/c/m;->setChecked(Z)V

    return-void
.end method
