###### Class com.facebook.ads.internal.adapters.m (com.facebook.ads.internal.adapters.m)
.class public Lcom/facebook/ads/internal/adapters/m;
.super Lcom/facebook/ads/internal/adapters/InterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/adapters/m$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/view/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Landroid/content/Context;

.field private f:Lcom/facebook/ads/internal/adapters/w;

.field private g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

.field private h:Z

.field private i:Lcom/facebook/ads/internal/adapters/r;

.field private j:Lcom/facebook/ads/internal/adapters/m$a;

.field private k:Lcom/facebook/ads/internal/adapters/v;

.field private l:Lcom/facebook/ads/internal/settings/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/adapters/m;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/InterstitialAdapter;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/m;->h:Z

    sget-object v0, Lcom/facebook/ads/internal/adapters/m$a;->a:Lcom/facebook/ads/internal/adapters/m$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->j:Lcom/facebook/ads/internal/adapters/m$a;

    return-void
.end method

.method private a()I
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->j:Lcom/facebook/ads/internal/adapters/m$a;

    sget-object v2, Lcom/facebook/ads/internal/adapters/m$a;->a:Lcom/facebook/ads/internal/adapters/m$a;

    if-ne v1, v2, :cond_1a

    const/4 v0, -0x1

    :goto_19
    return v0

    :cond_1a
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->j:Lcom/facebook/ads/internal/adapters/m$a;

    sget-object v2, Lcom/facebook/ads/internal/adapters/m$a;->c:Lcom/facebook/ads/internal/adapters/m$a;

    if-ne v1, v2, :cond_28

    packed-switch v0, :pswitch_data_30

    const/4 v0, 0x0

    goto :goto_19

    :pswitch_25
    const/16 v0, 0x8

    goto :goto_19

    :cond_28
    packed-switch v0, :pswitch_data_38

    const/4 v0, 0x1

    goto :goto_19

    :pswitch_2d
    const/16 v0, 0x9

    goto :goto_19

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_25
        :pswitch_25
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_2d
    .end packed-switch
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/m;Lcom/facebook/ads/internal/adapters/m$a;)Lcom/facebook/ads/internal/adapters/m$a;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/m;->j:Lcom/facebook/ads/internal/adapters/m$a;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/ads/internal/view/a;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/adapters/m;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/a;

    return-object v0
.end method

.method public static a(Lcom/facebook/ads/internal/view/a;)V
    .registers 4

    sget-object v0, Lcom/facebook/ads/internal/adapters/m;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_a

    sget-object v2, Lcom/facebook/ads/internal/adapters/m;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_26
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/facebook/ads/internal/view/a;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/adapters/m;->b(Ljava/lang/String;Lcom/facebook/ads/internal/view/a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/m;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/m;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/m;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Lcom/facebook/ads/internal/view/a;)V
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/adapters/m;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/v;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    return-object v0
.end method


# virtual methods
.method public loadInterstitialAd(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/m/c;Ljava/util/EnumSet;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/m/c;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/m;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/m;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    const-string v0, "placementId"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->c:Ljava/lang/String;

    const-string v0, "requestTime"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/ads/internal/adapters/m;->d:J

    const-string v0, "data"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "markup"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    sget-object v1, Lcom/facebook/ads/internal/settings/a$a;->a:Lcom/facebook/ads/internal/settings/a$a;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->l:Lcom/facebook/ads/internal/settings/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/r;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/r;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->i:Lcom/facebook/ads/internal/adapters/r;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->i:Lcom/facebook/ads/internal/adapters/r;

    invoke-static {p1, v0, p4}, Lcom/facebook/ads/internal/a/d;->a(Landroid/content/Context;Lcom/facebook/ads/internal/a/d$a;Lcom/facebook/ads/internal/m/c;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialError(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/AdError;)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    new-instance v0, Lcom/facebook/ads/internal/adapters/w;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/facebook/ads/internal/adapters/w;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->f:Lcom/facebook/ads/internal/adapters/w;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->f:Lcom/facebook/ads/internal/adapters/w;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/w;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->i:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/r;->f()Ljava/util/Map;

    move-result-object v0

    const-string v1, "orientation"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, "orientation"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m$a;->a(I)Lcom/facebook/ads/internal/adapters/m$a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->j:Lcom/facebook/ads/internal/adapters/m$a;

    :cond_77
    iput-boolean v7, p0, Lcom/facebook/ads/internal/adapters/m;->h:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    goto :goto_46

    :cond_83
    const-string v2, "video"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b1

    sget-object v0, Lcom/facebook/ads/internal/settings/a$a;->b:Lcom/facebook/ads/internal/settings/a$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->l:Lcom/facebook/ads/internal/settings/a$a;

    new-instance v0, Lcom/facebook/ads/internal/adapters/w;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/facebook/ads/internal/adapters/w;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->f:Lcom/facebook/ads/internal/adapters/w;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->f:Lcom/facebook/ads/internal/adapters/w;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/w;->a()V

    new-instance v0, Lcom/facebook/ads/internal/adapters/n;

    invoke-direct {v0}, Lcom/facebook/ads/internal/adapters/n;-><init>()V

    new-instance v2, Lcom/facebook/ads/internal/adapters/m$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/ads/internal/adapters/m$1;-><init>(Lcom/facebook/ads/internal/adapters/m;Lcom/facebook/ads/internal/adapters/n;)V

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/n;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Ljava/util/Map;Lcom/facebook/ads/internal/m/c;Ljava/util/EnumSet;)V

    goto :goto_46

    :cond_b1
    invoke-static {v0, p1}, Lcom/facebook/ads/internal/adapters/v;->a(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/facebook/ads/internal/adapters/v;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_ca

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    sget-object v3, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    invoke-interface {v2, p0, v3}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialError(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/AdError;)V

    :cond_ca
    new-instance v2, Lcom/facebook/ads/internal/adapters/w;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/m;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/m;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    invoke-direct {v2, p1, v3, p0, v4}, Lcom/facebook/ads/internal/adapters/w;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->f:Lcom/facebook/ads/internal/adapters/w;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->f:Lcom/facebook/ads/internal/adapters/w;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/w;->a()V

    const-string v2, "carousel"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_140

    sget-object v0, Lcom/facebook/ads/internal/settings/a$a;->d:Lcom/facebook/ads/internal/settings/a$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->l:Lcom/facebook/ads/internal/settings/a$a;

    new-instance v0, Lcom/facebook/ads/internal/view/j;

    invoke-direct {v0, p1, p4}, Lcom/facebook/ads/internal/view/j;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/ads/internal/adapters/m;->b(Ljava/lang/String;Lcom/facebook/ads/internal/view/a;)V

    new-instance v2, Lcom/facebook/ads/internal/d/b;

    invoke-direct {v2, p1}, Lcom/facebook/ads/internal/d/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v6, v6}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object v3

    :goto_104
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_12f

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/d;->h()I

    move-result v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/d;->g()I

    move-result v0

    invoke-virtual {v2, v4, v5, v0}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_104

    :cond_12f
    new-instance v0, Lcom/facebook/ads/internal/adapters/m$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/m$2;-><init>(Lcom/facebook/ads/internal/adapters/m;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/d/b;->a(Lcom/facebook/ads/internal/d/a;)V

    iput-boolean v7, p0, Lcom/facebook/ads/internal/adapters/m;->h:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    goto/16 :goto_46

    :cond_140
    const-string v2, "video_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    sget-object v0, Lcom/facebook/ads/internal/settings/a$a;->b:Lcom/facebook/ads/internal/settings/a$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->l:Lcom/facebook/ads/internal/settings/a$a;

    new-instance v5, Lcom/facebook/ads/internal/d/b;

    invoke-direct {v5, p1}, Lcom/facebook/ads/internal/d/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/d;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/d;->h()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/d;->g()I

    move-result v0

    invoke-virtual {v5, v2, v3, v0}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v6, v6}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    sget-object v0, Lcom/facebook/ads/CacheFlag;->VIDEO:Lcom/facebook/ads/CacheFlag;

    invoke-virtual {p5, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;)V

    :cond_1a8
    new-instance v0, Lcom/facebook/ads/internal/adapters/m$3;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/m$3;-><init>(Lcom/facebook/ads/internal/adapters/m;Ljava/util/EnumSet;Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/d/b;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/internal/d/b;->a(Lcom/facebook/ads/internal/d/a;)V

    goto/16 :goto_46

    :cond_1b6
    sget-object v0, Lcom/facebook/ads/internal/settings/a$a;->c:Lcom/facebook/ads/internal/settings/a$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->l:Lcom/facebook/ads/internal/settings/a$a;

    new-instance v2, Lcom/facebook/ads/internal/d/b;

    invoke-direct {v2, p1}, Lcom/facebook/ads/internal/d/b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/d;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/d;->h()I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/d;->g()I

    move-result v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/v;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v6, v6}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    new-instance v0, Lcom/facebook/ads/internal/adapters/m$4;

    invoke-direct {v0, p0, p1, p4}, Lcom/facebook/ads/internal/adapters/m$4;-><init>(Lcom/facebook/ads/internal/adapters/m;Landroid/content/Context;Lcom/facebook/ads/internal/m/c;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/d/b;->a(Lcom/facebook/ads/internal/d/a;)V

    goto/16 :goto_46
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->f:Lcom/facebook/ads/internal/adapters/w;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->f:Lcom/facebook/ads/internal/adapters/w;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/w;->b()V

    :cond_9
    return-void
.end method

.method public show()Z
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/m;->h:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m;->g:Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    sget-object v1, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialError(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/AdError;)V

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->e:Landroid/content/Context;

    const-class v2, Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "predefinedOrientationKey"

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/m;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "uniqueId"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "placementId"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "requestTime"

    iget-wide v2, p0, Lcom/facebook/ads/internal/adapters/m;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "viewType"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->l:Lcom/facebook/ads/internal/settings/a$a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    if-eqz v1, :cond_56

    const-string v1, "ad_data_bundle"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m;->k:Lcom/facebook/ads/internal/adapters/v;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_4a
    :goto_4a
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_4f
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_54
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4f .. :try_end_54} :catch_60

    :goto_54
    const/4 v0, 0x1

    goto :goto_10

    :cond_56
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->i:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->i:Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/adapters/r;->a(Landroid/content/Intent;)V

    goto :goto_4a

    :catch_60
    move-exception v1

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->e:Landroid/content/Context;

    const-class v2, Lcom/facebook/ads/InterstitialAdActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_54
.end method

###### Class com.facebook.ads.internal.adapters.m.AnonymousClass1 (com.facebook.ads.internal.adapters.m$1)
.class Lcom/facebook/ads/internal/adapters/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/m;->loadInterstitialAd(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/m/c;Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/n;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/m;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/m;Lcom/facebook/ads/internal/adapters/n;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/m$1;->a:Lcom/facebook/ads/internal/adapters/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    goto :goto_e
.end method

.method public a(Lcom/facebook/ads/internal/adapters/u;Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m$1;->a:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/n;->k()Lcom/facebook/ads/internal/adapters/m$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;Lcom/facebook/ads/internal/adapters/m$a;)Lcom/facebook/ads/internal/adapters/m$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m;->b(Lcom/facebook/ads/internal/adapters/m;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m$1;->a:Lcom/facebook/ads/internal/adapters/n;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/m;->a(Ljava/lang/String;Lcom/facebook/ads/internal/view/a;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/u;Lcom/facebook/ads/AdError;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$1;->a:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/n;->l()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialError(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Lcom/facebook/ads/AdError;)V

    return-void
.end method

.method public b(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdClicked(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m$1;->b:Lcom/facebook/ads/internal/adapters/m;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialLoggingImpression(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    return-void
.end method

.method public d(Lcom/facebook/ads/internal/adapters/u;)V
    .registers 2

    return-void
.end method

###### Class com.facebook.ads.internal.adapters.m.AnonymousClass2 (com.facebook.ads.internal.adapters.m$2)
.class Lcom/facebook/ads/internal/adapters/m$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/m;->loadInterstitialAd(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/m/c;Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/m;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/m;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/m$2;->a:Lcom/facebook/ads/internal/adapters/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$2;->a:Lcom/facebook/ads/internal/adapters/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$2;->a:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m$2;->a:Lcom/facebook/ads/internal/adapters/m;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/m$2;->c()V

    return-void
.end method

.method public b()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/m$2;->c()V

    return-void
.end method

###### Class com.facebook.ads.internal.adapters.m.AnonymousClass3 (com.facebook.ads.internal.adapters.m$3)
.class Lcom/facebook/ads/internal/adapters/m$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/m;->loadInterstitialAd(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/m/c;Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/EnumSet;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/facebook/ads/internal/m/c;

.field final synthetic d:Lcom/facebook/ads/internal/d/b;

.field final synthetic e:Lcom/facebook/ads/internal/adapters/m;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/m;Ljava/util/EnumSet;Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/d/b;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/m$3;->e:Lcom/facebook/ads/internal/adapters/m;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/m$3;->a:Ljava/util/EnumSet;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/m$3;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/m$3;->c:Lcom/facebook/ads/internal/m/c;

    iput-object p5, p0, Lcom/facebook/ads/internal/adapters/m$3;->d:Lcom/facebook/ads/internal/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Z)V
    .registers 7

    new-instance v1, Lcom/facebook/ads/internal/view/l;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m$3;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/m$3;->c:Lcom/facebook/ads/internal/m/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$3;->e:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m;->c(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/v;

    move-result-object v4

    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$3;->d:Lcom/facebook/ads/internal/d/b;

    :goto_10
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/facebook/ads/internal/view/l;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/adapters/v;Lcom/facebook/ads/internal/d/b;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$3;->e:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m;->b(Lcom/facebook/ads/internal/adapters/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/m;->a(Ljava/lang/String;Lcom/facebook/ads/internal/view/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$3;->e:Lcom/facebook/ads/internal/adapters/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$3;->e:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m$3;->e:Lcom/facebook/ads/internal/adapters/m;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    return-void

    :cond_2e
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$3;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/facebook/ads/CacheFlag;->VIDEO:Lcom/facebook/ads/CacheFlag;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/m$3;->a(Z)V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/m$3;->a(Z)V

    return-void
.end method

###### Class com.facebook.ads.internal.adapters.m.AnonymousClass4 (com.facebook.ads.internal.adapters.m$4)
.class Lcom/facebook/ads/internal/adapters/m$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/m;->loadInterstitialAd(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;Ljava/util/Map;Lcom/facebook/ads/internal/m/c;Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/ads/internal/m/c;

.field final synthetic c:Lcom/facebook/ads/internal/adapters/m;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/m;Landroid/content/Context;Lcom/facebook/ads/internal/m/c;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/m$4;->c:Lcom/facebook/ads/internal/adapters/m;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/m$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/m$4;->b:Lcom/facebook/ads/internal/m/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .registers 5

    new-instance v0, Lcom/facebook/ads/internal/view/k;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/m$4;->c:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/m;->c(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/v;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/m$4;->b:Lcom/facebook/ads/internal/m/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/view/k;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/v;Lcom/facebook/ads/internal/m/c;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m$4;->c:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/m;->b(Lcom/facebook/ads/internal/adapters/m;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/adapters/m;->a(Ljava/lang/String;Lcom/facebook/ads/internal/view/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$4;->c:Lcom/facebook/ads/internal/adapters/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/m$4;->c:Lcom/facebook/ads/internal/adapters/m;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/m;)Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/m$4;->c:Lcom/facebook/ads/internal/adapters/m;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;->onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/InterstitialAdapter;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/m$4;->c()V

    return-void
.end method

.method public b()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/m$4;->c()V

    return-void
.end method

###### Class com.facebook.ads.internal.adapters.m.a (com.facebook.ads.internal.adapters.m$a)
.class public final enum Lcom/facebook/ads/internal/adapters/m$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/adapters/m$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/adapters/m$a;

.field public static final enum b:Lcom/facebook/ads/internal/adapters/m$a;

.field public static final enum c:Lcom/facebook/ads/internal/adapters/m$a;

.field private static final synthetic d:[Lcom/facebook/ads/internal/adapters/m$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/adapters/m$a;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/adapters/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/adapters/m$a;->a:Lcom/facebook/ads/internal/adapters/m$a;

    new-instance v0, Lcom/facebook/ads/internal/adapters/m$a;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/adapters/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/adapters/m$a;->b:Lcom/facebook/ads/internal/adapters/m$a;

    new-instance v0, Lcom/facebook/ads/internal/adapters/m$a;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/adapters/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/adapters/m$a;->c:Lcom/facebook/ads/internal/adapters/m$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/ads/internal/adapters/m$a;

    sget-object v1, Lcom/facebook/ads/internal/adapters/m$a;->a:Lcom/facebook/ads/internal/adapters/m$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/adapters/m$a;->b:Lcom/facebook/ads/internal/adapters/m$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/adapters/m$a;->c:Lcom/facebook/ads/internal/adapters/m$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ads/internal/adapters/m$a;->d:[Lcom/facebook/ads/internal/adapters/m$a;

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

.method public static a(I)Lcom/facebook/ads/internal/adapters/m$a;
    .registers 2

    if-nez p0, :cond_5

    sget-object v0, Lcom/facebook/ads/internal/adapters/m$a;->a:Lcom/facebook/ads/internal/adapters/m$a;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    sget-object v0, Lcom/facebook/ads/internal/adapters/m$a;->c:Lcom/facebook/ads/internal/adapters/m$a;

    goto :goto_4

    :cond_b
    sget-object v0, Lcom/facebook/ads/internal/adapters/m$a;->b:Lcom/facebook/ads/internal/adapters/m$a;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/m$a;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/adapters/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/m$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/adapters/m$a;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/m$a;->d:[Lcom/facebook/ads/internal/adapters/m$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/adapters/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/adapters/m$a;

    return-object v0
.end method
