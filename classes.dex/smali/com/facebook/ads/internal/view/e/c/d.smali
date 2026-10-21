###### Class com.facebook.ads.internal.view.e.c.d (com.facebook.ads.internal.view.e.c.d)
.class public Lcom/facebook/ads/internal/view/e/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/e/a/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/e/c/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/e/b/i;

.field private final b:Lcom/facebook/ads/internal/view/e/b/k;

.field private final c:Lcom/facebook/ads/internal/view/e/b/c;

.field private final d:Lcom/facebook/ads/internal/view/e/b/u;

.field private final e:Landroid/os/Handler;

.field private final f:Z

.field private g:Landroid/view/View;

.field private h:Lcom/facebook/ads/internal/view/e/c/d$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/facebook/ads/internal/view/e/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/internal/view/e/c/d$a;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/view/e/c/d;-><init>(Landroid/view/View;Lcom/facebook/ads/internal/view/e/c/d$a;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/internal/view/e/c/d$a;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/d$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/d$1;-><init>(Lcom/facebook/ads/internal/view/e/c/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->a:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/d$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/d$2;-><init>(Lcom/facebook/ads/internal/view/e/c/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->b:Lcom/facebook/ads/internal/view/e/b/k;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/d$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/d$3;-><init>(Lcom/facebook/ads/internal/view/e/c/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->c:Lcom/facebook/ads/internal/view/e/b/c;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/d$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/d$4;-><init>(Lcom/facebook/ads/internal/view/e/c/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->d:Lcom/facebook/ads/internal/view/e/b/u;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->j:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->e:Landroid/os/Handler;

    iput-boolean p3, p0, Lcom/facebook/ads/internal/view/e/c/d;->f:Z

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/view/e/c/d;->a(Landroid/view/View;Lcom/facebook/ads/internal/view/e/c/d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/d;Lcom/facebook/ads/internal/view/e/c/d$a;)Lcom/facebook/ads/internal/view/e/c/d$a;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/d;->h:Lcom/facebook/ads/internal/view/e/c/d$a;

    return-object p1
.end method

.method private a(II)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/d;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/e/c/d;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/d;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/c/d;->a(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/c/d;)Lcom/facebook/ads/internal/view/e/c/d$a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->h:Lcom/facebook/ads/internal/view/e/c/d$a;

    return-object v0
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/view/e/c/d$5;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/e/c/d$5;-><init>(Lcom/facebook/ads/internal/view/e/c/d;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/c/d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/e/c/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/c/d;->c()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/e/c/d;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/e/c/d;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->i:Lcom/facebook/ads/internal/view/e/b;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/view/e/c/d;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/facebook/ads/internal/view/e/c/d$a;)V
    .registers 5

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/c/d;->h:Lcom/facebook/ads/internal/view/e/c/d$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    sget-object v0, Lcom/facebook/ads/internal/view/e/c/d$a;->b:Lcom/facebook/ads/internal/view/e/c/d$a;

    if-ne p2, v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/d;->i:Lcom/facebook/ads/internal/view/e/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/d;->a:Lcom/facebook/ads/internal/view/e/b/i;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/d;->b:Lcom/facebook/ads/internal/view/e/b/k;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/d;->d:Lcom/facebook/ads/internal/view/e/b/u;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/d;->c:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a([Lcom/facebook/ads/internal/j/f;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->j:Z

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->j:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/e/c/d;->a(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/view/e/b;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v4, v3}, Lcom/facebook/ads/internal/view/e/c/d;->a(II)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/d;->c:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/d;->d:Lcom/facebook/ads/internal/view/e/b/u;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/d;->b:Lcom/facebook/ads/internal/view/e/b/k;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/d;->a:Lcom/facebook/ads/internal/view/e/b/i;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b([Lcom/facebook/ads/internal/j/f;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d;->i:Lcom/facebook/ads/internal/view/e/b;

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.d.AnonymousClass1 (com.facebook.ads.internal.view.e.c.d$1)
.class Lcom/facebook/ads/internal/view/e/c/d$1;
.super Lcom/facebook/ads/internal/view/e/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/d$1;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/h;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/d$1;->a(Lcom/facebook/ads/internal/view/e/b/h;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/h;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$1;->a:Lcom/facebook/ads/internal/view/e/c/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/view/e/c/d;->a(Lcom/facebook/ads/internal/view/e/c/d;II)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.d.AnonymousClass2 (com.facebook.ads.internal.view.e.c.d$2)
.class Lcom/facebook/ads/internal/view/e/c/d$2;
.super Lcom/facebook/ads/internal/view/e/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/d$2;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/j;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/d$2;->a(Lcom/facebook/ads/internal/view/e/b/j;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/j;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$2;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->a(Lcom/facebook/ads/internal/view/e/c/d;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$2;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->b(Lcom/facebook/ads/internal/view/e/c/d;)Lcom/facebook/ads/internal/view/e/c/d$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/e/c/d$a;->c:Lcom/facebook/ads/internal/view/e/c/d$a;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$2;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->c(Lcom/facebook/ads/internal/view/e/c/d;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_1b
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$2;->a:Lcom/facebook/ads/internal/view/e/c/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/e/c/d;->a(Lcom/facebook/ads/internal/view/e/c/d;Lcom/facebook/ads/internal/view/e/c/d$a;)Lcom/facebook/ads/internal/view/e/c/d$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$2;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->d(Lcom/facebook/ads/internal/view/e/c/d;)V

    goto :goto_8

    :cond_27
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$2;->a:Lcom/facebook/ads/internal/view/e/c/d;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/view/e/c/d;->a(Lcom/facebook/ads/internal/view/e/c/d;II)V

    goto :goto_8
.end method

###### Class com.facebook.ads.internal.view.e.c.d.AnonymousClass3 (com.facebook.ads.internal.view.e.c.d$3)
.class Lcom/facebook/ads/internal/view/e/c/d$3;
.super Lcom/facebook/ads/internal/view/e/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/d$3;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/d$3;->a(Lcom/facebook/ads/internal/view/e/b/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/b;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$3;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->b(Lcom/facebook/ads/internal/view/e/c/d;)Lcom/facebook/ads/internal/view/e/c/d$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/e/c/d$a;->b:Lcom/facebook/ads/internal/view/e/c/d$a;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$3;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->e(Lcom/facebook/ads/internal/view/e/c/d;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$3;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->e(Lcom/facebook/ads/internal/view/e/c/d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.d.AnonymousClass4 (com.facebook.ads.internal.view.e.c.d$4)
.class Lcom/facebook/ads/internal/view/e/c/d$4;
.super Lcom/facebook/ads/internal/view/e/b/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/d$4;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/u;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/t;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/d$4;->a(Lcom/facebook/ads/internal/view/e/b/t;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/t;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$4;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->f(Lcom/facebook/ads/internal/view/e/c/d;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/e/b/t;->b()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$4;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->g(Lcom/facebook/ads/internal/view/e/c/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$4;->a:Lcom/facebook/ads/internal/view/e/c/d;

    new-instance v1, Lcom/facebook/ads/internal/view/e/c/d$4$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/e/c/d$4$1;-><init>(Lcom/facebook/ads/internal/view/e/c/d$4;)V

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/e/c/d;->a(Lcom/facebook/ads/internal/view/e/c/d;Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_8
.end method

###### Class com.facebook.ads.internal.view.e.c.d.AnonymousClass4.AnonymousClass1 (com.facebook.ads.internal.view.e.c.d$4$1)
.class Lcom/facebook/ads/internal/view/e/c/d$4$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/d$4;->a(Lcom/facebook/ads/internal/view/e/b/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/d$4;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/d$4;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/d$4$1;->a:Lcom/facebook/ads/internal/view/e/c/d$4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$4$1;->a:Lcom/facebook/ads/internal/view/e/c/d$4;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/d$4;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->g(Lcom/facebook/ads/internal/view/e/c/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/view/e/c/d$4$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/e/c/d$4$1$1;-><init>(Lcom/facebook/ads/internal/view/e/c/d$4$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.d.AnonymousClass4.AnonymousClass1.RunnableC00251 (com.facebook.ads.internal.view.e.c.d$4$1$1)
.class Lcom/facebook/ads/internal/view/e/c/d$4$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/d$4$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/d$4$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/d$4$1;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/d$4$1$1;->a:Lcom/facebook/ads/internal/view/e/c/d$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$4$1$1;->a:Lcom/facebook/ads/internal/view/e/c/d$4$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/d$4$1;->a:Lcom/facebook/ads/internal/view/e/c/d$4;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/d$4;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->a(Lcom/facebook/ads/internal/view/e/c/d;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$4$1$1;->a:Lcom/facebook/ads/internal/view/e/c/d$4$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/d$4$1;->a:Lcom/facebook/ads/internal/view/e/c/d$4;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/d$4;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->d(Lcom/facebook/ads/internal/view/e/c/d;)V

    :cond_15
    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.d.AnonymousClass5 (com.facebook.ads.internal.view.e.c.d$5)
.class Lcom/facebook/ads/internal/view/e/c/d$5;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/d$5;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/d$5;->a:Lcom/facebook/ads/internal/view/e/c/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/d;->e(Lcom/facebook/ads/internal/view/e/c/d;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.d.a (com.facebook.ads.internal.view.e.c.d$a)
.class public final enum Lcom/facebook/ads/internal/view/e/c/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/view/e/c/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/view/e/c/d$a;

.field public static final enum b:Lcom/facebook/ads/internal/view/e/c/d$a;

.field public static final enum c:Lcom/facebook/ads/internal/view/e/c/d$a;

.field private static final synthetic d:[Lcom/facebook/ads/internal/view/e/c/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/d$a;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/e/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/e/c/d$a;->a:Lcom/facebook/ads/internal/view/e/c/d$a;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/d$a;

    const-string v1, "INVSIBLE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/view/e/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/e/c/d$a;->b:Lcom/facebook/ads/internal/view/e/c/d$a;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/d$a;

    const-string v1, "FADE_OUT_ON_PLAY"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/view/e/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/e/c/d$a;->c:Lcom/facebook/ads/internal/view/e/c/d$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/ads/internal/view/e/c/d$a;

    sget-object v1, Lcom/facebook/ads/internal/view/e/c/d$a;->a:Lcom/facebook/ads/internal/view/e/c/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/view/e/c/d$a;->b:Lcom/facebook/ads/internal/view/e/c/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/view/e/c/d$a;->c:Lcom/facebook/ads/internal/view/e/c/d$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ads/internal/view/e/c/d$a;->d:[Lcom/facebook/ads/internal/view/e/c/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/view/e/c/d$a;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/view/e/c/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/e/c/d$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/view/e/c/d$a;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/view/e/c/d$a;->d:[Lcom/facebook/ads/internal/view/e/c/d$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/view/e/c/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/view/e/c/d$a;

    return-object v0
.end method
