###### Class com.facebook.ads.internal.view.j (com.facebook.ads.internal.view.j)
.class public Lcom/facebook/ads/internal/view/j;
.super Lcom/facebook/ads/internal/view/m;


# instance fields
.field private final f:Lcom/facebook/ads/internal/q/a/s;

.field private g:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/view/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/ads/internal/view/component/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/facebook/ads/internal/r/a;

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/m;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;)V

    new-instance v0, Lcom/facebook/ads/internal/q/a/s;

    invoke-direct {v0}, Lcom/facebook/ads/internal/q/a/s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->f:Lcom/facebook/ads/internal/q/a/s;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/q/a/s;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->f:Lcom/facebook/ads/internal/q/a/s;

    return-object v0
.end method

.method private a(Lcom/facebook/ads/internal/adapters/v;)V
    .registers 12

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/v;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/v;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/v;->j()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/j;->o:I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/v;->k()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/j;->p:I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->k:Ljava/util/List;

    const/4 v1, 0x0

    :goto_28
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5a

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/facebook/ads/internal/adapters/d;

    iget-object v9, p0, Lcom/facebook/ads/internal/view/j;->k:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/internal/view/i$a;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v7}, Lcom/facebook/ads/internal/adapters/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/facebook/ads/internal/adapters/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/facebook/ads/internal/adapters/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/facebook/ads/internal/adapters/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/facebook/ads/internal/adapters/d;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/view/i$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_5a
    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/j;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/r/a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/view/component/d;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    :cond_17
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/d;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    :cond_22
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .registers 6

    const-string v0, "ad_data_bundle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/v;

    invoke-super {p0, p3, v0}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/adapters/v;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/j;->a(Lcom/facebook/ads/internal/adapters/v;)V

    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/j;->setUpLayout(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/view/j;->i:J

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public j()V
    .registers 1

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->a()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/j;->setUpLayout(I)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/m;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/facebook/ads/internal/view/m;->onDestroy()V

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/j;->i:J

    sget-object v2, Lcom/facebook/ads/internal/j/a$a;->c:Lcom/facebook/ads/internal/j/a$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/j;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/j/a;->a(JLcom/facebook/ads/internal/j/a$a;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/b;->a(Lcom/facebook/ads/internal/j/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/r/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/j;->f:Lcom/facebook/ads/internal/q/a/s;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/q/a/s;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/q/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->b:Lcom/facebook/ads/internal/m/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/j;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/m/c;->h(Ljava/lang/String;Ljava/util/Map;)V

    :cond_39
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/a;->b()V

    iput-object v4, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    iput-object v4, p0, Lcom/facebook/ads/internal/view/j;->k:Ljava/util/List;

    return-void
.end method

.method public setUpLayout(I)V
    .registers 15

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_112

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_15
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11b

    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v0, v11

    float-to-int v0, v0

    sub-int v0, v1, v0

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v0, v1, v7

    div-int/lit8 v8, v0, 0x8

    mul-int/lit8 v9, v8, 0x4

    const/4 v10, 0x0

    :goto_4b
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/facebook/ads/internal/view/i;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/j;->b:Lcom/facebook/ads/internal/m/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/j;->f:Lcom/facebook/ads/internal/q/a/s;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v4

    const/4 v5, 0x1

    if-ne p1, v5, :cond_12a

    iget-object v5, p0, Lcom/facebook/ads/internal/view/j;->d:Lcom/facebook/ads/internal/adapters/j;

    :goto_75
    iget-object v6, p0, Lcom/facebook/ads/internal/view/j;->h:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ads/internal/view/i;-><init>(Ljava/util/List;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/q/a/s;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/adapters/j;Ljava/lang/String;IIIZ)V

    invoke-virtual {v12, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/facebook/ads/internal/r/a;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    new-instance v4, Lcom/facebook/ads/internal/view/j$1;

    invoke-direct {v4, p0}, Lcom/facebook/ads/internal/view/j$1;-><init>(Lcom/facebook/ads/internal/view/j;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/r/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/r/a$a;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    iget v2, p0, Lcom/facebook/ads/internal/view/j;->o:I

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/r/a;->a(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    iget v2, p0, Lcom/facebook/ads/internal/view/j;->p:I

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/r/a;->b(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f4

    new-instance v1, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v1}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/facebook/ads/internal/view/j$2;

    invoke-direct {v2, p0, v0}, Lcom/facebook/ads/internal/view/j$2;-><init>(Lcom/facebook/ads/internal/view/j;Landroid/support/v7/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    new-instance v1, Lcom/facebook/ads/internal/view/component/d;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12e

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->d:Lcom/facebook/ads/internal/adapters/j;

    :goto_d0
    iget-object v3, p0, Lcom/facebook/ads/internal/view/j;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/ads/internal/view/component/d;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/j;I)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v11

    float-to-int v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/component/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f4
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_106
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/ads/internal/view/j;->a(Landroid/view/View;ZI)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/a;->a()V

    return-void

    :cond_112
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_15

    :cond_11b
    const/high16 v0, 0x42f00000    # 120.0f

    mul-float/2addr v0, v11

    float-to-int v0, v0

    sub-int v7, v2, v0

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v11

    float-to-int v8, v0

    mul-int/lit8 v9, v8, 0x2

    const/4 v10, 0x1

    goto/16 :goto_4b

    :cond_12a
    iget-object v5, p0, Lcom/facebook/ads/internal/view/j;->e:Lcom/facebook/ads/internal/adapters/j;

    goto/16 :goto_75

    :cond_12e
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->e:Lcom/facebook/ads/internal/adapters/j;

    goto :goto_d0
.end method

###### Class com.facebook.ads.internal.view.j.AnonymousClass1 (com.facebook.ads.internal.view.j$1)
.class Lcom/facebook/ads/internal/view/j$1;
.super Lcom/facebook/ads/internal/r/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/j;->setUpLayout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/j;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/j;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/j$1;->a:Lcom/facebook/ads/internal/view/j;

    invoke-direct {p0}, Lcom/facebook/ads/internal/r/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j$1;->a:Lcom/facebook/ads/internal/view/j;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/j;->a(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/q/a/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/q/a/s;->b()Z

    move-result v1

    if-nez v1, :cond_62

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j$1;->a:Lcom/facebook/ads/internal/view/j;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/j;->a(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/q/a/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/q/a/s;->a()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j$1;->a:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/j;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j$1;->a:Lcom/facebook/ads/internal/view/j;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/j;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v1

    const-string v2, "com.facebook.ads.interstitial.impression.logged"

    invoke-interface {v1, v2}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_2d
    iget-object v1, p0, Lcom/facebook/ads/internal/view/j$1;->a:Lcom/facebook/ads/internal/view/j;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/j;->b(Lcom/facebook/ads/internal/view/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_62

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j$1;->a:Lcom/facebook/ads/internal/view/j;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/j;->c(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/r/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/r/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/j$1;->a:Lcom/facebook/ads/internal/view/j;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/j;->a(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/q/a/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/q/a/s;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/q/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j$1;->a:Lcom/facebook/ads/internal/view/j;

    iget-object v1, v1, Lcom/facebook/ads/internal/view/j;->b:Lcom/facebook/ads/internal/m/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/j$1;->a:Lcom/facebook/ads/internal/view/j;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/j;->b(Lcom/facebook/ads/internal/view/j;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/m/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_62
    return-void
.end method

###### Class com.facebook.ads.internal.view.j.AnonymousClass2 (com.facebook.ads.internal.view.j$2)
.class Lcom/facebook/ads/internal/view/j$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/j;->setUpLayout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/LinearLayoutManager;

.field final synthetic b:Lcom/facebook/ads/internal/view/j;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/j;Landroid/support/v7/widget/LinearLayoutManager;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/view/j$2;->b:Lcom/facebook/ads/internal/view/j;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/j$2;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 10

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j$2;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j$2;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/j$2;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_54

    if-lez p2, :cond_39

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j$2;->b:Lcom/facebook/ads/internal/view/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/j;->d(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/view/component/d;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j$2;->b:Lcom/facebook/ads/internal/view/j;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/j;->d(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/view/component/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/component/d;->a(I)V

    :cond_2f
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j$2;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v1, p0, Lcom/facebook/ads/internal/view/j$2;->b:Lcom/facebook/ads/internal/view/j;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/j;->d(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/view/component/d;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j$2;->b:Lcom/facebook/ads/internal/view/j;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/j;->d(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/view/component/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/component/d;->a(I)V

    :cond_4a
    iget-object v1, p0, Lcom/facebook/ads/internal/view/j$2;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_38

    :cond_54
    iget-object v3, p0, Lcom/facebook/ads/internal/view/j$2;->b:Lcom/facebook/ads/internal/view/j;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/j;->d(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/view/component/d;

    move-result-object v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/facebook/ads/internal/view/j$2;->b:Lcom/facebook/ads/internal/view/j;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/j;->d(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/view/component/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/view/component/d;->a(I)V

    :cond_65
    if-eq v2, v0, :cond_70

    iget-object v3, p0, Lcom/facebook/ads/internal/view/j$2;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_70
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j$2;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    if-eq v2, v1, :cond_38

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j$2;->a:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_38
.end method
