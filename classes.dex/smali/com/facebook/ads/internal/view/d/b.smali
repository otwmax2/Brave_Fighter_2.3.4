###### Class com.facebook.ads.internal.view.d.b (com.facebook.ads.internal.view.d.b)
.class public Lcom/facebook/ads/internal/view/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/d/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/facebook/ads/internal/m/c;

.field private final g:Lcom/facebook/ads/internal/adapters/ad;

.field private final h:Ljava/lang/String;

.field private i:Ljava/util/concurrent/Executor;

.field private j:Lcom/facebook/ads/internal/view/a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/facebook/ads/internal/view/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/facebook/ads/internal/view/b/a$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/view/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/d/b;->a:Ljava/lang/String;

    const/high16 v0, 0x40800000    # 4.0f

    sget v1, Lcom/facebook/ads/internal/q/a/v;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/d/b;->b:I

    const/high16 v0, 0x42900000    # 72.0f

    sget v1, Lcom/facebook/ads/internal/q/a/v;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/d/b;->c:I

    const/high16 v0, 0x41000000    # 8.0f

    sget v1, Lcom/facebook/ads/internal/q/a/v;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/d/b;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/adapters/ad;Lcom/facebook/ads/internal/view/a$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/d/b;->f:Lcom/facebook/ads/internal/m/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/d/b;->j:Lcom/facebook/ads/internal/view/a$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ad;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/c;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->h:Ljava/lang/String;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b;->g()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/a$a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->j:Lcom/facebook/ads/internal/view/a$a;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/d/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/m/c;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->f:Lcom/facebook/ads/internal/m/c;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/adapters/ad;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/b/a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/view/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->j:Lcom/facebook/ads/internal/view/a$a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->j:Lcom/facebook/ads/internal/view/a$a;

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->c:Lcom/facebook/ads/internal/view/e/b/z;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private h()Landroid/view/View;
    .registers 12

    const/16 v10, 0x11

    const/4 v9, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/facebook/ads/internal/view/component/i;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/ad;->n()Lcom/facebook/ads/internal/adapters/j;

    move-result-object v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/view/component/i;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/j;ZZZ)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/ad;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/ad;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/facebook/ads/internal/view/component/i;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v10}, Lcom/facebook/ads/internal/view/component/i;->setAlignment(I)V

    new-instance v1, Lcom/facebook/ads/internal/view/component/a;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    sget-object v5, Lcom/facebook/ads/internal/view/e/b/z;->e:Lcom/facebook/ads/internal/view/e/b/z;

    invoke-virtual {v5}, Lcom/facebook/ads/internal/view/e/b/z;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v6}, Lcom/facebook/ads/internal/adapters/ad;->n()Lcom/facebook/ads/internal/adapters/j;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/ads/internal/view/d/b;->f:Lcom/facebook/ads/internal/m/c;

    iget-object v8, p0, Lcom/facebook/ads/internal/view/d/b;->j:Lcom/facebook/ads/internal/view/a$a;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/internal/view/component/a;-><init>(Landroid/content/Context;ZZLjava/lang/String;Lcom/facebook/ads/internal/adapters/j;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/view/a$a;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/ad;->q()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v5}, Lcom/facebook/ads/internal/adapters/ad;->p()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v6}, Lcom/facebook/ads/internal/adapters/ad;->b()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v5, v6, v7}, Lcom/facebook/ads/internal/view/component/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v2, Lcom/facebook/ads/internal/view/component/e;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/facebook/ads/internal/view/component/e;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x32

    invoke-virtual {v2, v5}, Lcom/facebook/ads/internal/view/component/e;->setRadius(I)V

    new-instance v5, Lcom/facebook/ads/internal/view/b/d;

    invoke-direct {v5, v2}, Lcom/facebook/ads/internal/view/b/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v5}, Lcom/facebook/ads/internal/view/b/d;->a()Lcom/facebook/ads/internal/view/b/d;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v6}, Lcom/facebook/ads/internal/adapters/ad;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/ads/internal/view/b/d;->a(Ljava/lang/String;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v6, Lcom/facebook/ads/internal/view/d/b;->c:I

    sget v7, Lcom/facebook/ads/internal/view/d/b;->c:I

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/facebook/ads/internal/view/d/b;->d:I

    sget v6, Lcom/facebook/ads/internal/view/d/b;->d:I

    invoke-virtual {v2, v4, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v5
.end method

.method private i()Landroid/view/View;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/facebook/ads/internal/view/d/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/ad;->o()Ljava/util/List;

    move-result-object v2

    sget v3, Lcom/facebook/ads/internal/view/d/b;->b:I

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/view/d/c;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method private j()Landroid/view/View;
    .registers 7

    new-instance v0, Lcom/facebook/ads/internal/view/d/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b$1;-><init>(Lcom/facebook/ads/internal/view/d/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->l:Lcom/facebook/ads/internal/view/b/a$b;

    new-instance v0, Lcom/facebook/ads/internal/view/b/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d/b;->l:Lcom/facebook/ads/internal/view/b/a$b;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/view/b/a;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    invoke-static {}, Lcom/facebook/ads/internal/q/c/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b;->h:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/b/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b;->b()Lcom/facebook/ads/internal/view/d/b$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/d/b$a;->b:Lcom/facebook/ads/internal/view/d/b$a;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Lcom/facebook/ads/internal/view/d/b$a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ad;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/facebook/ads/internal/view/d/b$a;->a:Lcom/facebook/ads/internal/view/d/b$a;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/facebook/ads/internal/view/d/b$a;->b:Lcom/facebook/ads/internal/view/d/b$a;

    goto :goto_e

    :cond_1a
    sget-object v0, Lcom/facebook/ads/internal/view/d/b$a;->c:Lcom/facebook/ads/internal/view/d/b$a;

    goto :goto_e
.end method

.method public c()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Lcom/facebook/ads/internal/view/d/b$a;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b;->b()Lcom/facebook/ads/internal/view/d/b$a;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/view/d/b$3;->a:[I

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/d/b$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_2e

    new-instance v0, Landroid/util/Pair;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b;->h()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_18
    return-object v0

    :pswitch_19
    new-instance v0, Landroid/util/Pair;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b;->j()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    :pswitch_23
    new-instance v0, Landroid/util/Pair;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b;->i()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_23
    .end packed-switch
.end method

.method public d()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ad;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/facebook/ads/internal/q/c/e;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/q/c/e;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    new-instance v0, Lcom/facebook/ads/internal/view/d/b$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b$2;-><init>(Lcom/facebook/ads/internal/view/d/b;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/q/c/e;->a(Lcom/facebook/ads/internal/q/c/e$a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->i:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/ad;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/internal/q/c/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_31
    return-void
.end method

.method public e()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/q/c/b;->a(Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    iput-object v1, p0, Lcom/facebook/ads/internal/view/d/b;->l:Lcom/facebook/ads/internal/view/b/a$b;

    :cond_e
    return-void
.end method

###### Class com.facebook.ads.internal.view.d.b.AnonymousClass1 (com.facebook.ads.internal.view.d.b$1)
.class Lcom/facebook/ads/internal/view/d/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b;->j()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->f(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/b/a;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->e(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/adapters/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ad;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->f(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/b/a;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/view/d/b$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/view/d/b$1$1;-><init>(Lcom/facebook/ads/internal/view/d/b$1;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/b/a;->post(Ljava/lang/Runnable;)Z

    :cond_26
    return-void
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "fbad"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->a(Lcom/facebook/ads/internal/view/d/b;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    const-string v1, "fbad"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/d/b;->b(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/d/b;->b(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/view/e/b/z;->e:Lcom/facebook/ads/internal/view/e/b/z;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/e/b/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_4f
    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/d/b;->c(Lcom/facebook/ads/internal/view/d/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/d/b;->d(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/m/c;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/d/b;->e(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/adapters/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/ad;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0, p2}, Lcom/facebook/ads/internal/a/b;->a(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_21

    :try_start_6b
    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->b()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_21

    :catch_6f
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/internal/view/d/b;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public b()V
    .registers 1

    return-void
.end method

###### Class com.facebook.ads.internal.view.d.b.AnonymousClass1.RunnableC00221 (com.facebook.ads.internal.view.d.b$1$1)
.class Lcom/facebook/ads/internal/view/d/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d/b$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b$1;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b$1$1;->a:Lcom/facebook/ads/internal/view/d/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$1$1;->a:Lcom/facebook/ads/internal/view/d/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->f(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/b/a;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$1$1;->a:Lcom/facebook/ads/internal/view/d/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->f(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_18
    invoke-static {}, Lcom/facebook/ads/internal/view/d/b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Webview already destroyed, cannot activate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$1$1;->a:Lcom/facebook/ads/internal/view/d/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->f(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/b/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b$1$1;->a:Lcom/facebook/ads/internal/view/d/b$1;

    iget-object v2, v2, Lcom/facebook/ads/internal/view/d/b$1;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/d/b;->e(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/adapters/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/ad;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/b/a;->loadUrl(Ljava/lang/String;)V

    goto :goto_21
.end method

###### Class com.facebook.ads.internal.view.d.b.AnonymousClass2 (com.facebook.ads.internal.view.d.b$2)
.class Lcom/facebook/ads/internal/view/d/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/q/c/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/d/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/d/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/d/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b$2;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$2;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->b(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$2;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->b(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->i:Lcom/facebook/ads/internal/view/e/b/z;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/q/c/f;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$2;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->b(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/facebook/ads/internal/q/c/f;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$2;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->b(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->h:Lcom/facebook/ads/internal/view/e/b/z;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b$2;->a:Lcom/facebook/ads/internal/view/d/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/d/b;->b(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->i:Lcom/facebook/ads/internal/view/e/b/z;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    goto :goto_8
.end method

###### Class com.facebook.ads.internal.view.d.b.AnonymousClass3 (com.facebook.ads.internal.view.d.b$3)
.class synthetic Lcom/facebook/ads/internal/view/d/b$3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/d/b;
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

    invoke-static {}, Lcom/facebook/ads/internal/view/d/b$a;->values()[Lcom/facebook/ads/internal/view/d/b$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/view/d/b$3;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/view/d/b$3;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/view/d/b$a;->b:Lcom/facebook/ads/internal/view/d/b$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/d/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/internal/view/d/b$3;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/view/d/b$a;->a:Lcom/facebook/ads/internal/view/d/b$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/d/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/ads/internal/view/d/b$3;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/view/d/b$a;->c:Lcom/facebook/ads/internal/view/d/b$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/d/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method

###### Class com.facebook.ads.internal.view.d.b.a (com.facebook.ads.internal.view.d.b$a)
.class public final enum Lcom/facebook/ads/internal/view/d/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/view/d/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/view/d/b$a;

.field public static final enum b:Lcom/facebook/ads/internal/view/d/b$a;

.field public static final enum c:Lcom/facebook/ads/internal/view/d/b$a;

.field private static final synthetic d:[Lcom/facebook/ads/internal/view/d/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/view/d/b$a;

    const-string v1, "SCREENSHOTS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/d/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/d/b$a;->a:Lcom/facebook/ads/internal/view/d/b$a;

    new-instance v0, Lcom/facebook/ads/internal/view/d/b$a;

    const-string v1, "MARKUP"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/view/d/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/d/b$a;->b:Lcom/facebook/ads/internal/view/d/b$a;

    new-instance v0, Lcom/facebook/ads/internal/view/d/b$a;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/view/d/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/view/d/b$a;->c:Lcom/facebook/ads/internal/view/d/b$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/ads/internal/view/d/b$a;

    sget-object v1, Lcom/facebook/ads/internal/view/d/b$a;->a:Lcom/facebook/ads/internal/view/d/b$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/view/d/b$a;->b:Lcom/facebook/ads/internal/view/d/b$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/view/d/b$a;->c:Lcom/facebook/ads/internal/view/d/b$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ads/internal/view/d/b$a;->d:[Lcom/facebook/ads/internal/view/d/b$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/view/d/b$a;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/view/d/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/d/b$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/view/d/b$a;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/view/d/b$a;->d:[Lcom/facebook/ads/internal/view/d/b$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/view/d/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/view/d/b$a;

    return-object v0
.end method
