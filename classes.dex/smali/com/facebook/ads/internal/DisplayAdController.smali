###### Class com.facebook.ads.internal.DisplayAdController (com.facebook.ads.internal.DisplayAdController)
.class public Lcom/facebook/ads/internal/DisplayAdController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/o/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/DisplayAdController$c;,
        Lcom/facebook/ads/internal/DisplayAdController$b;,
        Lcom/facebook/ads/internal/DisplayAdController$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final h:Landroid/os/Handler;

.field private static i:Z


# instance fields
.field private A:Z

.field private final B:Lcom/facebook/ads/internal/m/c;

.field private final C:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field protected a:Lcom/facebook/ads/internal/adapters/a;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/facebook/ads/internal/protocol/AdPlacementType;

.field private final f:Lcom/facebook/ads/internal/o/c;

.field private final g:Landroid/os/Handler;

.field private final j:Ljava/lang/Runnable;

.field private final k:Ljava/lang/Runnable;

.field private volatile l:Z

.field private m:Z

.field private volatile n:Z

.field private o:Lcom/facebook/ads/internal/adapters/AdAdapter;

.field private p:Lcom/facebook/ads/internal/adapters/AdAdapter;

.field private q:Landroid/view/View;

.field private r:Lcom/facebook/ads/internal/h/c;

.field private s:Lcom/facebook/ads/internal/o/b;

.field private t:Lcom/facebook/ads/internal/protocol/f;

.field private u:Lcom/facebook/ads/internal/protocol/d;

.field private v:Lcom/facebook/ads/internal/protocol/e;

.field private w:I

.field private x:Z

.field private y:I

.field private final z:Lcom/facebook/ads/internal/DisplayAdController$c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/facebook/ads/internal/q/a/d;->a()V

    const-class v0, Lcom/facebook/ads/internal/DisplayAdController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/DisplayAdController;->b:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/ads/internal/DisplayAdController;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/internal/DisplayAdController;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/f;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/d;IZ)V
    .registers 19

    sget-object v0, Lcom/facebook/ads/CacheFlag;->NONE:Lcom/facebook/ads/CacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/internal/DisplayAdController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/f;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/d;IZLjava/util/EnumSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/f;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/protocol/d;IZLjava/util/EnumSet;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/protocol/f;",
            "Lcom/facebook/ads/internal/protocol/AdPlacementType;",
            "Lcom/facebook/ads/internal/protocol/e;",
            "Lcom/facebook/ads/internal/protocol/d;",
            "IZ",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->x:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->y:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/DisplayAdController;->t:Lcom/facebook/ads/internal/protocol/f;

    iput-object p4, p0, Lcom/facebook/ads/internal/DisplayAdController;->e:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    iput-object p5, p0, Lcom/facebook/ads/internal/DisplayAdController;->v:Lcom/facebook/ads/internal/protocol/e;

    iput-object p6, p0, Lcom/facebook/ads/internal/DisplayAdController;->u:Lcom/facebook/ads/internal/protocol/d;

    iput p7, p0, Lcom/facebook/ads/internal/DisplayAdController;->w:I

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/DisplayAdController$c;-><init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/DisplayAdController$1;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->z:Lcom/facebook/ads/internal/DisplayAdController$c;

    iput-object p9, p0, Lcom/facebook/ads/internal/DisplayAdController;->C:Ljava/util/EnumSet;

    new-instance v0, Lcom/facebook/ads/internal/o/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/o/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->f:Lcom/facebook/ads/internal/o/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->f:Lcom/facebook/ads/internal/o/c;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c$a;)V

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController$a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/DisplayAdController$a;-><init>(Lcom/facebook/ads/internal/DisplayAdController;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController$b;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/DisplayAdController$b;-><init>(Lcom/facebook/ads/internal/DisplayAdController;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->k:Ljava/lang/Runnable;

    iput-boolean p8, p0, Lcom/facebook/ads/internal/DisplayAdController;->m:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->i()V

    :try_start_4d
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_5b

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5b} :catch_6d

    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/i/a;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/a;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/d;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/m/d;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->B:Lcom/facebook/ads/internal/m/c;

    return-void

    :catch_6d
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/DisplayAdController;->b:Ljava/lang/String;

    const-string v2, "Failed to initialize CookieManager."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5b
.end method

.method static synthetic a(Lcom/facebook/ads/internal/DisplayAdController;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController;->q:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/adapters/AdAdapter;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/h/c;)Lcom/facebook/ads/internal/h/c;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController;->r:Lcom/facebook/ads/internal/h/c;

    return-object p1
.end method

.method private a(J)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "delay"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/DisplayAdController;J)Ljava/util/Map;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/DisplayAdController;->a(J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/DisplayAdController;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->n()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/util/List;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/DisplayAdController;->a(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/facebook/ads/internal/adapters/AdAdapter;->onDestroy()V

    :cond_5
    return-void
.end method

.method private a(Lcom/facebook/ads/internal/adapters/BannerAdapter;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/adapters/BannerAdapter;",
            "Lcom/facebook/ads/internal/h/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController$8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/DisplayAdController$8;-><init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/BannerAdapter;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->g:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/h/d;->j()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController;->B:Lcom/facebook/ads/internal/m/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/DisplayAdController;->v:Lcom/facebook/ads/internal/protocol/e;

    new-instance v4, Lcom/facebook/ads/internal/DisplayAdController$9;

    invoke-direct {v4, p0, v0}, Lcom/facebook/ads/internal/DisplayAdController$9;-><init>(Lcom/facebook/ads/internal/DisplayAdController;Ljava/lang/Runnable;)V

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/BannerAdapter;->loadBannerAd(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/protocol/e;Lcom/facebook/ads/internal/adapters/BannerAdapterListener;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/adapters/InterstitialAdapter;",
            "Lcom/facebook/ads/internal/h/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/facebook/ads/internal/DisplayAdController$10;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/DisplayAdController$10;-><init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->g:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/h/d;->j()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/internal/DisplayAdController$11;

    invoke-direct {v2, p0, v0}, Lcom/facebook/ads/internal/DisplayAdController$11;-><init>(Lcom/facebook/ads/internal/DisplayAdController;Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/facebook/ads/internal/DisplayAdController;->B:Lcom/facebook/ads/internal/m/c;

    iget-object v5, p0, Lcom/facebook/ads/internal/DisplayAdController;->C:Ljava/util/EnumSet;

    move-object v0, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/InterstitialAdapter;->loadInterstitialAd(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/m/c;Ljava/util/EnumSet;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/h/c;Lcom/facebook/ads/internal/h/a;Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/adapters/ab;",
            "Lcom/facebook/ads/internal/h/c;",
            "Lcom/facebook/ads/internal/h/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v1, Lcom/facebook/ads/internal/DisplayAdController$12;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/DisplayAdController$12;-><init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/ab;JLcom/facebook/ads/internal/h/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->g:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/h/d;->j()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v6, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    new-instance v7, Lcom/facebook/ads/internal/DisplayAdController$2;

    move-object v8, p0

    move-object v9, v1

    move-wide v10, v4

    move-object/from16 v12, p3

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/internal/DisplayAdController$2;-><init>(Lcom/facebook/ads/internal/DisplayAdController;Ljava/lang/Runnable;JLcom/facebook/ads/internal/h/a;)V

    iget-object v8, p0, Lcom/facebook/ads/internal/DisplayAdController;->B:Lcom/facebook/ads/internal/m/c;

    invoke-static {}, Lcom/facebook/ads/NativeAd;->getViewTraversalPredicate()Lcom/facebook/ads/internal/n/e$d;

    move-result-object v10

    move-object v5, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/internal/adapters/ab;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ac;Lcom/facebook/ads/internal/m/c;Ljava/util/Map;Lcom/facebook/ads/internal/n/e$d;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/adapters/ae;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/adapters/ae;",
            "Lcom/facebook/ads/internal/h/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    new-instance v1, Lcom/facebook/ads/internal/DisplayAdController$7;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/DisplayAdController$7;-><init>(Lcom/facebook/ads/internal/DisplayAdController;)V

    iget-boolean v2, p0, Lcom/facebook/ads/internal/DisplayAdController;->x:Z

    invoke-virtual {p1, v0, v1, p3, v2}, Lcom/facebook/ads/internal/adapters/ae;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/af;Ljava/util/Map;Z)V

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/adapters/u;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/adapters/u;",
            "Lcom/facebook/ads/internal/h/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/internal/DisplayAdController$6;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/DisplayAdController$6;-><init>(Lcom/facebook/ads/internal/DisplayAdController;)V

    iget-object v4, p0, Lcom/facebook/ads/internal/DisplayAdController;->B:Lcom/facebook/ads/internal/m/c;

    iget-object v5, p0, Lcom/facebook/ads/internal/DisplayAdController;->C:Ljava/util/EnumSet;

    move-object v0, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/u;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Ljava/util/Map;Lcom/facebook/ads/internal/m/c;Ljava/util/EnumSet;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/facebook/ads/internal/q/c/e;

    iget-object v3, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lcom/facebook/ads/internal/q/c/e;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/q/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d
.end method

.method static synthetic a(Lcom/facebook/ads/internal/DisplayAdController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/DisplayAdController;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/DisplayAdController;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->l()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/DisplayAdController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/DisplayAdController;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/DisplayAdController;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->m()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 16

    const/4 v7, 0x0

    :try_start_1
    new-instance v12, Lcom/facebook/ads/internal/protocol/h;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController;->t:Lcom/facebook/ads/internal/protocol/f;

    invoke-direct {v12, v0, p1, v1, v2}, Lcom/facebook/ads/internal/protocol/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/f;)V
    :try_end_c
    .catch Lcom/facebook/ads/internal/protocol/b; {:try_start_1 .. :try_end_c} :catch_74

    new-instance v0, Lcom/facebook/ads/internal/o/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    new-instance v2, Lcom/facebook/ads/internal/i/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/facebook/ads/internal/i/c;-><init>(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/facebook/ads/internal/DisplayAdController;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/ads/internal/DisplayAdController;->v:Lcom/facebook/ads/internal/protocol/e;

    if-eqz v4, :cond_7d

    new-instance v4, Lcom/facebook/ads/internal/q/a/k;

    iget-object v5, p0, Lcom/facebook/ads/internal/DisplayAdController;->v:Lcom/facebook/ads/internal/protocol/e;

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/e;->b()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/internal/DisplayAdController;->v:Lcom/facebook/ads/internal/protocol/e;

    invoke-virtual {v6}, Lcom/facebook/ads/internal/protocol/e;->a()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/facebook/ads/internal/q/a/k;-><init>(II)V

    :goto_2f
    iget-object v5, p0, Lcom/facebook/ads/internal/DisplayAdController;->t:Lcom/facebook/ads/internal/protocol/f;

    iget-object v6, p0, Lcom/facebook/ads/internal/DisplayAdController;->u:Lcom/facebook/ads/internal/protocol/d;

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v8

    sget-object v9, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    if-eq v8, v9, :cond_43

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/ads/AdSettings$TestAdType;->getAdTypeString()Ljava/lang/String;

    move-result-object v7

    :cond_43
    iget-object v8, p0, Lcom/facebook/ads/internal/DisplayAdController;->t:Lcom/facebook/ads/internal/protocol/f;

    invoke-static {v8}, Lcom/facebook/ads/internal/protocol/c;->a(Lcom/facebook/ads/internal/protocol/f;)Lcom/facebook/ads/internal/protocol/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/ads/internal/protocol/c;->a()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/ads/internal/adapters/f;->a(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/facebook/ads/internal/DisplayAdController;->w:I

    iget-object v10, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v10

    invoke-static {}, Lcom/facebook/ads/AdSettings;->isChildDirected()Z

    move-result v11

    iget-object v13, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    invoke-static {v13}, Lcom/facebook/ads/internal/l/a;->m(Landroid/content/Context;)I

    move-result v13

    invoke-static {v13}, Lcom/facebook/ads/internal/q/a/n;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v0 .. v13}, Lcom/facebook/ads/internal/o/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/i/c;Ljava/lang/String;Lcom/facebook/ads/internal/q/a/k;Lcom/facebook/ads/internal/protocol/f;Lcom/facebook/ads/internal/protocol/d;Ljava/lang/String;Ljava/lang/String;IZZLcom/facebook/ads/internal/protocol/h;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->s:Lcom/facebook/ads/internal/o/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->f:Lcom/facebook/ads/internal/o/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->s:Lcom/facebook/ads/internal/o/b;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/b;)V

    :goto_73
    return-void

    :catch_74
    move-exception v0

    invoke-static {v0}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/b;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/protocol/a;)V

    goto :goto_73

    :cond_7d
    move-object v4, v7

    goto :goto_2f
.end method

.method static synthetic d(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/adapters/AdAdapter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->o:Lcom/facebook/ads/internal/adapters/AdAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/adapters/AdAdapter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/ads/internal/DisplayAdController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->n:Z

    return v0
.end method

.method static synthetic h(Lcom/facebook/ads/internal/DisplayAdController;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->o()V

    return-void
.end method

.method static synthetic i(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    return-object v0
.end method

.method private i()V
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->m:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController;->z:Lcom/facebook/ads/internal/DisplayAdController$c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->A:Z

    goto :goto_4
.end method

.method static synthetic j(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/o/b;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->s:Lcom/facebook/ads/internal/o/b;

    return-object v0
.end method

.method private j()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->A:Z

    if-eqz v0, :cond_e

    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->z:Lcom/facebook/ads/internal/DisplayAdController$c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->A:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string v1, "Error unregistering screen state receiever"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/j/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/b;->a(Lcom/facebook/ads/internal/j/a;)V

    goto :goto_e
.end method

.method private k()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->e:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->e:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->v:Lcom/facebook/ads/internal/protocol/e;

    if-nez v0, :cond_e

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->v:Lcom/facebook/ads/internal/protocol/e;

    sget-object v1, Lcom/facebook/ads/internal/protocol/e;->b:Lcom/facebook/ads/internal/protocol/e;

    if-ne v0, v1, :cond_17

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_6

    :cond_17
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_6
.end method

.method static synthetic k(Lcom/facebook/ads/internal/DisplayAdController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->m:Z

    return v0
.end method

.method private declared-synchronized l()V
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController;->h:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/internal/DisplayAdController$5;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/DisplayAdController$5;-><init>(Lcom/facebook/ads/internal/DisplayAdController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic l(Lcom/facebook/ads/internal/DisplayAdController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->l:Z

    return v0
.end method

.method static synthetic m(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->k()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .registers 9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->o:Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->r:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/h/c;->d()Lcom/facebook/ads/internal/h/a;

    move-result-object v2

    if-nez v2, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->n()V

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {v2}, Lcom/facebook/ads/internal/h/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/d;->b()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/internal/adapters/f;->a(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    if-nez v0, :cond_4a

    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->l()V

    goto :goto_1b

    :cond_4a
    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->k()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v3

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v4

    if-eq v3, v4, :cond_62

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    goto :goto_1b

    :cond_62
    iput-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->o:Lcom/facebook/ads/internal/adapters/AdAdapter;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v2}, Lcom/facebook/ads/internal/h/a;->b()Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "definition"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "placementId"

    iget-object v6, p0, Lcom/facebook/ads/internal/DisplayAdController;->d:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "requestTime"

    invoke-virtual {v4}, Lcom/facebook/ads/internal/h/d;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/ads/internal/DisplayAdController;->s:Lcom/facebook/ads/internal/o/b;

    if-nez v4, :cond_a2

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v1, "environment is empty"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    goto/16 :goto_1b

    :cond_a2
    sget-object v4, Lcom/facebook/ads/internal/DisplayAdController$4;->a:[I

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_de

    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController;->b:Ljava/lang/String;

    const-string v1, "attempt unexpected adapter type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :pswitch_ba
    check-cast v0, Lcom/facebook/ads/internal/adapters/BannerAdapter;

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/BannerAdapter;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V

    goto/16 :goto_1b

    :pswitch_c1
    check-cast v0, Lcom/facebook/ads/internal/adapters/InterstitialAdapter;

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V

    goto/16 :goto_1b

    :pswitch_c8
    check-cast v0, Lcom/facebook/ads/internal/adapters/ab;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/h/c;Lcom/facebook/ads/internal/h/a;Ljava/util/Map;)V

    goto/16 :goto_1b

    :pswitch_cf
    check-cast v0, Lcom/facebook/ads/internal/adapters/u;

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/u;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V

    goto/16 :goto_1b

    :pswitch_d6
    check-cast v0, Lcom/facebook/ads/internal/adapters/ae;

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/ae;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V

    goto/16 :goto_1b

    nop

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_ba
        :pswitch_c8
        :pswitch_cf
        :pswitch_d6
    .end packed-switch
.end method

.method static synthetic n(Lcom/facebook/ads/internal/DisplayAdController;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private n()V
    .registers 7

    const-wide/16 v4, 0x3e8

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->m:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->l:Z

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController$4;->a:[I

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->k()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_74

    goto :goto_b

    :pswitch_1c
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/q/e/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->g:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2b
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->r:Lcom/facebook/ads/internal/h/c;

    if-nez v0, :cond_69

    const-wide/16 v2, 0x7530

    :goto_31
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->g:Landroid/os/Handler;

    iget-object v4, p0, Lcom/facebook/ads/internal/DisplayAdController;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->l:Z

    goto :goto_b

    :pswitch_41
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->r:Lcom/facebook/ads/internal/h/c;

    if-nez v0, :cond_5e

    move v0, v1

    :goto_46
    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController;->q:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;I)Lcom/facebook/ads/internal/r/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/b;->a()Z

    move-result v0

    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController;->q:Landroid/view/View;

    if-eqz v2, :cond_2b

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    :cond_5e
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->r:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/d;->f()I

    move-result v0

    goto :goto_46

    :cond_69
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->r:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/d;->c()J

    move-result-wide v2

    goto :goto_31

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_41
    .end packed-switch
.end method

.method private o()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->l:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->l:Z

    goto :goto_4
.end method

.method private p()Landroid/os/Handler;
    .registers 2

    invoke-static {}, Lcom/facebook/ads/internal/DisplayAdController;->q()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->g:Landroid/os/Handler;

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController;->h:Landroid/os/Handler;

    goto :goto_8
.end method

.method private static declared-synchronized q()Z
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/DisplayAdController;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/facebook/ads/internal/DisplayAdController;->i:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static declared-synchronized setMainThreadForced(Z)V
    .registers 5

    const-class v1, Lcom/facebook/ads/internal/DisplayAdController;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayAdController changed main thread forced from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/facebook/ads/internal/DisplayAdController;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean p0, Lcom/facebook/ads/internal/DisplayAdController;->i:Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    monitor-exit v1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/h/d;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->r:Lcom/facebook/ads/internal/h/c;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->r:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v0

    goto :goto_5
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/internal/DisplayAdController;->y:I

    return-void
.end method

.method public a(Lcom/facebook/ads/RewardData;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no adapter ready to set reward on"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-eq v0, v1, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can only set on rewarded video ads"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    check-cast v0, Lcom/facebook/ads/internal/adapters/ae;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/ae;->a(Lcom/facebook/ads/RewardData;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    return-void
.end method

.method public declared-synchronized a(Lcom/facebook/ads/internal/o/g;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->p()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/DisplayAdController$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/DisplayAdController$1;-><init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/o/g;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/ads/internal/protocol/a;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->p()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/DisplayAdController$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/DisplayAdController$3;-><init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/protocol/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/DisplayAdController;->x:Z

    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    if-nez v0, :cond_24

    new-instance v0, Lcom/facebook/ads/internal/protocol/b;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_ADAPTER_ON_START:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v2, "Adapter is null on startAd"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/protocol/b;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->n:Z

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ad already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->n:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/DisplayAdController$4;->a:[I

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_90

    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController;->b:Ljava/lang/String;

    const-string v1, "start unexpected adapter type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :pswitch_4c
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    check-cast v0, Lcom/facebook/ads/internal/adapters/InterstitialAdapter;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/InterstitialAdapter;->show()Z

    goto :goto_23

    :pswitch_54
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->q:Landroid/view/View;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->n()V

    goto :goto_23

    :pswitch_63
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    check-cast v0, Lcom/facebook/ads/internal/adapters/ab;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->c_()Z

    move-result v1

    if-nez v1, :cond_75

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ad is not ready or already displayed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/ab;)V

    goto :goto_23

    :pswitch_7b
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    check-cast v0, Lcom/facebook/ads/internal/adapters/u;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/u;->e()Z

    goto :goto_23

    :pswitch_83
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    check-cast v0, Lcom/facebook/ads/internal/adapters/ae;

    iget v1, p0, Lcom/facebook/ads/internal/DisplayAdController;->y:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/ae;->a(I)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ae;->b()Z

    goto :goto_23

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_54
        :pswitch_63
        :pswitch_7b
        :pswitch_83
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->o()V

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->j()V

    if-nez p1, :cond_a

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->n:Z

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->o()V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->f:Lcom/facebook/ads/internal/o/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/o/c;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->q:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->n:Z

    goto :goto_9
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/DisplayAdController;->b(Z)V

    return-void
.end method

.method public d()V
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->n:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->o()V

    goto :goto_4
.end method

.method public e()V
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->n:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->n()V

    goto :goto_4
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->m:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/DisplayAdController;->o()V

    return-void
.end method

.method public g()Lcom/facebook/ads/internal/m/c;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->B:Lcom/facebook/ads/internal/m/c;

    return-object v0
.end method

.method public h()Lcom/facebook/ads/internal/adapters/AdAdapter;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController;->p:Lcom/facebook/ads/internal/adapters/AdAdapter;

    return-object v0
.end method

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass1 (com.facebook.ads.internal.DisplayAdController$1)
.class Lcom/facebook/ads/internal/DisplayAdController$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/o/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/o/g;

.field final synthetic b:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/o/g;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$1;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$1;->a:Lcom/facebook/ads/internal/o/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$1;->a:Lcom/facebook/ads/internal/o/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/o/g;->a()Lcom/facebook/ads/internal/h/c;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v1

    if-nez v1, :cond_16

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid placement in response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$1;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/h/c;)Lcom/facebook/ads/internal/h/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$1;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass10 (com.facebook.ads.internal.DisplayAdController$10)
.class Lcom/facebook/ads/internal/DisplayAdController$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/InterstitialAdapter;

.field final synthetic b:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->a:Lcom/facebook/ads/internal/adapters/InterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->a:Lcom/facebook/ads/internal/adapters/InterstitialAdapter;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$10;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass11 (com.facebook.ads.internal.DisplayAdController$11)
.class Lcom/facebook/ads/internal/DisplayAdController$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->a()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    :goto_e
    if-eqz p3, :cond_3c

    if-eqz v0, :cond_3c

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v1}, Lcom/facebook/ads/internal/DisplayAdController;->j(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/o/b;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/internal/o/b;->b:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_2a

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2a
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v1}, Lcom/facebook/ads/internal/DisplayAdController;->j(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/o/b;

    move-result-object v1

    iget-object v1, v1, Lcom/facebook/ads/internal/o/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3c
    return-void

    :cond_3d
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onInterstitialAdDismissed(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->e()V

    return-void
.end method

.method public onInterstitialAdDisplayed(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->d()V

    return-void
.end method

.method public onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->d(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_9

    :goto_8
    return-void

    :cond_9
    if-nez p1, :cond_23

    new-instance v0, Lcom/facebook/ads/internal/protocol/b;

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_ADAPTER_ON_LOAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v2, "Adapter is null on loadInterstitialAd"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/protocol/b;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v1}, Lcom/facebook/ads/internal/DisplayAdController;->i(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/DisplayAdController$11;->onInterstitialError(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/AdError;)V

    goto :goto_8

    :cond_23
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->e(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;)V

    goto :goto_8
.end method

.method public onInterstitialError(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/AdError;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->d(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->e(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    new-instance v1, Lcom/facebook/ads/internal/protocol/a;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/protocol/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    goto :goto_8
.end method

.method public onInterstitialLoggingImpression(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$11;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->b()V

    return-void
.end method

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass12 (com.facebook.ads.internal.DisplayAdController$12)
.class Lcom/facebook/ads/internal/DisplayAdController$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/h/c;Lcom/facebook/ads/internal/h/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/ab;

.field final synthetic b:J

.field final synthetic c:Lcom/facebook/ads/internal/h/a;

.field final synthetic d:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/ab;JLcom/facebook/ads/internal/h/a;)V
    .registers 7

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->a:Lcom/facebook/ads/internal/adapters/ab;

    iput-wide p3, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->b:J

    iput-object p5, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->c:Lcom/facebook/ads/internal/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->a:Lcom/facebook/ads/internal/adapters/ab;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->a:Lcom/facebook/ads/internal/adapters/ab;

    instance-of v0, v0, Lcom/facebook/ads/internal/adapters/x;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->i(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->a:Lcom/facebook/ads/internal/adapters/ab;

    check-cast v0, Lcom/facebook/ads/internal/adapters/x;

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/x;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Failed. Ad request timed out"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_35
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iget-wide v2, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->b:J

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;J)Ljava/util/Map;

    move-result-object v0

    const-string v1, "error"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    const-string v2, "timeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->d:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->c:Lcom/facebook/ads/internal/h/a;

    sget-object v3, Lcom/facebook/ads/internal/h/e;->a:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/h/a;->a(Lcom/facebook/ads/internal/h/e;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$12;->d:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass2 (com.facebook.ads.internal.DisplayAdController$2)
.class Lcom/facebook/ads/internal/DisplayAdController$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/h/c;Lcom/facebook/ads/internal/h/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:J

.field final synthetic f:Lcom/facebook/ads/internal/h/a;

.field final synthetic g:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Ljava/lang/Runnable;JLcom/facebook/ads/internal/h/a;)V
    .registers 7

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->d:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->e:J

    iput-object p5, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->f:Lcom/facebook/ads/internal/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->a:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->b:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/ab;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->d(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->e(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->a:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->a:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-wide v2, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->e:J

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;J)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->f:Lcom/facebook/ads/internal/h/a;

    sget-object v3, Lcom/facebook/ads/internal/h/e;->a:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/h/a;->a(Lcom/facebook/ads/internal/h/e;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_8
.end method

.method public a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/protocol/a;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->d(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->e(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->a:Z

    if-nez v0, :cond_53

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->a:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-wide v2, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->e:J

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;J)Ljava/util/Map;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/a;->a()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    invoke-virtual {p2}, Lcom/facebook/ads/internal/protocol/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v2, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->f:Lcom/facebook/ads/internal/h/a;

    sget-object v3, Lcom/facebook/ads/internal/h/e;->a:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/h/a;->a(Lcom/facebook/ads/internal/h/e;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/util/List;Ljava/util/Map;)V

    :cond_53
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;)V

    goto :goto_8
.end method

.method public b(Lcom/facebook/ads/internal/adapters/ab;)V
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->b:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->b:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->f:Lcom/facebook/ads/internal/h/a;

    sget-object v2, Lcom/facebook/ads/internal/h/e;->b:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/h/a;->a(Lcom/facebook/ads/internal/h/e;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/util/List;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/ab;)V
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->c:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->c:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->f:Lcom/facebook/ads/internal/h/a;

    sget-object v2, Lcom/facebook/ads/internal/h/e;->c:Lcom/facebook/ads/internal/h/e;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/h/a;->a(Lcom/facebook/ads/internal/h/e;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/util/List;Ljava/util/Map;)V

    :cond_15
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$2;->g:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->a()V

    :cond_22
    return-void
.end method

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass3 (com.facebook.ads.internal.DisplayAdController$3)
.class Lcom/facebook/ads/internal/DisplayAdController$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/protocol/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/protocol/a;

.field final synthetic b:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/protocol/a;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$3;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$3;->a:Lcom/facebook/ads/internal/protocol/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$3;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$3;->a:Lcom/facebook/ads/internal/protocol/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$3;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->k(Lcom/facebook/ads/internal/DisplayAdController;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$3;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->l(Lcom/facebook/ads/internal/DisplayAdController;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$3;->a:Lcom/facebook/ads/internal/protocol/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/a;->a()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    :pswitch_27
    goto :goto_19

    :pswitch_28
    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController$4;->a:[I

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$3;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v1}, Lcom/facebook/ads/internal/DisplayAdController;->m(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    goto :goto_19

    :pswitch_3a
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$3;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->e(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$3;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v1}, Lcom/facebook/ads/internal/DisplayAdController;->n(Lcom/facebook/ads/internal/DisplayAdController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$3;->b:Lcom/facebook/ads/internal/DisplayAdController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Z)Z

    goto :goto_19

    :pswitch_data_52
    .packed-switch 0x3e8
        :pswitch_28
        :pswitch_27
        :pswitch_28
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_3a
    .end packed-switch
.end method

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass4 (com.facebook.ads.internal.DisplayAdController$4)
.class synthetic Lcom/facebook/ads/internal/DisplayAdController$4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/DisplayAdController;
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

    invoke-static {}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->values()[Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/DisplayAdController$4;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController$4;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_49

    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController$4;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_47

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController$4;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController$4;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INSTREAM:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_43

    :goto_35
    :try_start_35
    sget-object v0, Lcom/facebook/ads/internal/DisplayAdController$4;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

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

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass5 (com.facebook.ads.internal.DisplayAdController$5)
.class Lcom/facebook/ads/internal/DisplayAdController$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$5;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$5;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->c(Lcom/facebook/ads/internal/DisplayAdController;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass6 (com.facebook.ads.internal.DisplayAdController$6)
.class Lcom/facebook/ads/internal/DisplayAdController$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/u;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/u;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/adapters/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/u;Lcom/facebook/ads/AdError;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    new-instance v1, Lcom/facebook/ads/internal/protocol/a;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/protocol/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->a()V

    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->b()V

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$6;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->c()V

    return-void
.end method

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass7 (com.facebook.ads.internal.DisplayAdController$7)
.class Lcom/facebook/ads/internal/DisplayAdController$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/ae;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->g()V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/ae;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/ae;Lcom/facebook/ads/AdError;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    new-instance v1, Lcom/facebook/ads/internal/protocol/a;

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERNAL_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/ae;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->a()V

    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/ae;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->b()V

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/ae;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->f()V

    return-void
.end method

.method public e(Lcom/facebook/ads/internal/adapters/ae;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->h()V

    return-void
.end method

.method public f(Lcom/facebook/ads/internal/adapters/ae;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$7;->a:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->i()V

    return-void
.end method

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass8 (com.facebook.ads.internal.DisplayAdController$8)
.class Lcom/facebook/ads/internal/DisplayAdController$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/BannerAdapter;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/BannerAdapter;

.field final synthetic b:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/BannerAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$8;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$8;->a:Lcom/facebook/ads/internal/adapters/BannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$8;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$8;->a:Lcom/facebook/ads/internal/adapters/BannerAdapter;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$8;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method

###### Class com.facebook.ads.internal.DisplayAdController.AnonymousClass9 (com.facebook.ads.internal.DisplayAdController$9)
.class Lcom/facebook/ads/internal/DisplayAdController$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/BannerAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/adapters/BannerAdapter;Lcom/facebook/ads/internal/h/c;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iput-object p2, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerAdClicked(Lcom/facebook/ads/internal/adapters/BannerAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->a()V

    return-void
.end method

.method public onBannerAdExpanded(Lcom/facebook/ads/internal/adapters/BannerAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->h(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method

.method public onBannerAdLoaded(Lcom/facebook/ads/internal/adapters/BannerAdapter;Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->d(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->e(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->f(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v1, p1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v1, p2}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v1}, Lcom/facebook/ads/internal/DisplayAdController;->g(Lcom/facebook/ads/internal/DisplayAdController;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    goto :goto_8

    :cond_34
    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v1, v1, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v1, p2}, Lcom/facebook/ads/internal/adapters/a;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;)V

    goto :goto_8
.end method

.method public onBannerAdMinimized(Lcom/facebook/ads/internal/adapters/BannerAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method

.method public onBannerError(Lcom/facebook/ads/internal/adapters/BannerAdapter;Lcom/facebook/ads/AdError;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->d(Lcom/facebook/ads/internal/DisplayAdController;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    if-eq p1, v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->e(Lcom/facebook/ads/internal/DisplayAdController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->b(Lcom/facebook/ads/internal/DisplayAdController;)V

    goto :goto_8
.end method

.method public onBannerLoggingImpression(Lcom/facebook/ads/internal/adapters/BannerAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$9;->b:Lcom/facebook/ads/internal/DisplayAdController;

    iget-object v0, v0, Lcom/facebook/ads/internal/DisplayAdController;->a:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->b()V

    return-void
.end method

###### Class com.facebook.ads.internal.DisplayAdController.a (com.facebook.ads.internal.DisplayAdController$a)
.class final Lcom/facebook/ads/internal/DisplayAdController$a;
.super Lcom/facebook/ads/internal/q/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/DisplayAdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/q/a/w",
        "<",
        "Lcom/facebook/ads/internal/DisplayAdController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/q/a/w;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/DisplayAdController$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/DisplayAdController;

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Z)Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;Ljava/lang/String;)V

    goto :goto_8
.end method

###### Class com.facebook.ads.internal.DisplayAdController.b (com.facebook.ads.internal.DisplayAdController$b)
.class final Lcom/facebook/ads/internal/DisplayAdController$b;
.super Lcom/facebook/ads/internal/q/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/DisplayAdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/q/a/w",
        "<",
        "Lcom/facebook/ads/internal/DisplayAdController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/q/a/w;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/DisplayAdController$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/DisplayAdController;

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;)V

    goto :goto_8
.end method

###### Class com.facebook.ads.internal.DisplayAdController.c (com.facebook.ads.internal.DisplayAdController$c)
.class Lcom/facebook/ads/internal/DisplayAdController$c;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/DisplayAdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/DisplayAdController;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/DisplayAdController$c;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/DisplayAdController;Lcom/facebook/ads/internal/DisplayAdController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/DisplayAdController$c;-><init>(Lcom/facebook/ads/internal/DisplayAdController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$c;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->h(Lcom/facebook/ads/internal/DisplayAdController;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/internal/DisplayAdController$c;->a:Lcom/facebook/ads/internal/DisplayAdController;

    invoke-static {v0}, Lcom/facebook/ads/internal/DisplayAdController;->a(Lcom/facebook/ads/internal/DisplayAdController;)V

    goto :goto_11
.end method
