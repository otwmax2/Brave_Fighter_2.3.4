###### Class com.facebook.ads.internal.adapters.k (com.facebook.ads.internal.adapters.k)
.class public Lcom/facebook/ads/internal/adapters/k;
.super Lcom/facebook/ads/internal/adapters/BannerAdapter;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/facebook/ads/internal/view/b/a$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/facebook/ads/internal/view/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/facebook/ads/internal/adapters/s;

.field private e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/ads/internal/m/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/content/Context;

.field private i:J

.field private j:Lcom/facebook/ads/internal/j/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/adapters/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/adapters/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/BannerAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/k;J)J
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/internal/adapters/k;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/j/a$a;)Lcom/facebook/ads/internal/j/a$a;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/j/a$a;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/facebook/ads/internal/h/d;)V
    .registers 10

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/internal/adapters/k;->i:J

    iput-object v7, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/j/a$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->f:Ljava/util/Map;

    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/r;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/r;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->g:Lcom/facebook/ads/internal/m/c;

    invoke-static {v0, v6, v1}, Lcom/facebook/ads/internal/a/d;->a(Landroid/content/Context;Lcom/facebook/ads/internal/a/d$a;Lcom/facebook/ads/internal/m/c;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    sget-object v1, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/adapters/BannerAdapterListener;->onBannerError(Lcom/facebook/ads/internal/adapters/BannerAdapter;Lcom/facebook/ads/AdError;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    new-instance v0, Lcom/facebook/ads/internal/adapters/k$1;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/internal/adapters/k$1;-><init>(Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/r;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->b:Lcom/facebook/ads/internal/view/b/a$b;

    new-instance v0, Lcom/facebook/ads/internal/view/b/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->h:Landroid/content/Context;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->b:Lcom/facebook/ads/internal/view/b/a$b;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/h/d;->f()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/view/b/a;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->c:Lcom/facebook/ads/internal/view/b/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/h/d;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/h/d;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/b/a;->a(II)V

    new-instance v5, Lcom/facebook/ads/internal/adapters/k$2;

    invoke-direct {v5, p0}, Lcom/facebook/ads/internal/adapters/k$2;-><init>(Lcom/facebook/ads/internal/adapters/k;)V

    new-instance v0, Lcom/facebook/ads/internal/adapters/s;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->g:Lcom/facebook/ads/internal/m/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->c:Lcom/facebook/ads/internal/view/b/a;

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/k;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/b/a;->getViewabilityChecker()Lcom/facebook/ads/internal/r/a;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/s;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/q/c/a;Lcom/facebook/ads/internal/r/a;Lcom/facebook/ads/internal/adapters/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->d:Lcom/facebook/ads/internal/adapters/s;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->d:Lcom/facebook/ads/internal/adapters/s;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/internal/adapters/s;->a(Lcom/facebook/ads/internal/adapters/r;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-static {}, Lcom/facebook/ads/internal/q/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/facebook/ads/internal/adapters/r;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/b/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/adapters/BannerAdapterListener;->onBannerAdLoaded(Lcom/facebook/ads/internal/adapters/BannerAdapter;Landroid/view/View;)V

    goto :goto_26
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/k;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/m/c;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->g:Lcom/facebook/ads/internal/m/c;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/adapters/s;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->d:Lcom/facebook/ads/internal/adapters/s;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/adapters/k;)J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/internal/adapters/k;->i:J

    return-wide v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/j/a$a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/internal/j/a$a;

    return-object v0
.end method


# virtual methods
.method public loadBannerAd(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/adapters/BannerAdapterListener;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/m/c;",
            "Lcom/facebook/ads/internal/protocol/e;",
            "Lcom/facebook/ads/internal/adapters/BannerAdapterListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/k;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/k;->g:Lcom/facebook/ads/internal/m/c;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/k;->e:Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    iput-object p5, p0, Lcom/facebook/ads/internal/adapters/k;->f:Ljava/util/Map;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->f:Ljava/util/Map;

    const-string v1, "definition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/h/d;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/h/d;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->c:Lcom/facebook/ads/internal/view/b/a;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/q/c/b;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->c:Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/a;->destroy()V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->c:Lcom/facebook/ads/internal/view/b/a;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->b:Lcom/facebook/ads/internal/view/b/a$b;

    :cond_13
    return-void
.end method

###### Class com.facebook.ads.internal.adapters.k.AnonymousClass1 (com.facebook.ads.internal.adapters.k$1)
.class Lcom/facebook/ads/internal/adapters/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/h/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/r;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/adapters/r;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/k$1;->a:Lcom/facebook/ads/internal/adapters/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/k;->d(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/adapters/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/s;->b()V

    return-void
.end method

.method public a(I)V
    .registers 8

    const-wide/16 v4, 0x0

    if-nez p1, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/k;->e(Lcom/facebook/ads/internal/adapters/k;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/k;->f(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/j/a$a;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/k;->e(Lcom/facebook/ads/internal/adapters/k;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/k;->f(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/j/a$a;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k$1;->a:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/r;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/j/a;->a(JLcom/facebook/ads/internal/j/a$a;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/b;->a(Lcom/facebook/ads/internal/j/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v0, v4, v5}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/k;J)J

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/j/a$a;)Lcom/facebook/ads/internal/j/a$a;

    :cond_3a
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

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-interface {v1, v2}, Lcom/facebook/ads/internal/adapters/BannerAdapterListener;->onBannerAdClicked(Lcom/facebook/ads/internal/adapters/BannerAdapter;)V

    :cond_2d
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/k;->b(Lcom/facebook/ads/internal/adapters/k;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/k;->c(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/m/c;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k$1;->a:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/r;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0, p2}, Lcom/facebook/ads/internal/a/b;->a(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/a;

    move-result-object v0

    if-eqz v0, :cond_5a

    :try_start_45
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->a()Lcom/facebook/ads/internal/j/a$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/k;Lcom/facebook/ads/internal/j/a$a;)Lcom/facebook/ads/internal/j/a$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/k;J)J

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a/a;->b()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/internal/adapters/k;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/k;->d(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/adapters/s;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$1;->b:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/k;->d(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/adapters/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/s;->a()V

    :cond_11
    return-void
.end method

###### Class com.facebook.ads.internal.adapters.k.AnonymousClass2 (com.facebook.ads.internal.adapters.k$2)
.class Lcom/facebook/ads/internal/adapters/k$2;
.super Lcom/facebook/ads/internal/adapters/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/h/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/k;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/k$2;->a:Lcom/facebook/ads/internal/adapters/k;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$2;->a:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k$2;->a:Lcom/facebook/ads/internal/adapters/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/k;->a(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/adapters/BannerAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k$2;->a:Lcom/facebook/ads/internal/adapters/k;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/BannerAdapterListener;->onBannerLoggingImpression(Lcom/facebook/ads/internal/adapters/BannerAdapter;)V

    :cond_13
    return-void
.end method
