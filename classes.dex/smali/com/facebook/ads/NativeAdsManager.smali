###### Class com.facebook.ads.NativeAdsManager (com.facebook.ads.NativeAdsManager)
.class public Lcom/facebook/ads/NativeAdsManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/NativeAdsManager$Listener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/facebook/ads/internal/protocol/d;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Lcom/facebook/ads/NativeAdsManager$Listener;

.field private i:Lcom/facebook/ads/internal/a;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/NativeAdsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/NativeAdsManager;->a:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/internal/protocol/d;->a:Lcom/facebook/ads/internal/protocol/d;

    sput-object v0, Lcom/facebook/ads/NativeAdsManager;->b:Lcom/facebook/ads/internal/protocol/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-object p1, p0, Lcom/facebook/ads/NativeAdsManager;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/NativeAdsManager;->d:Ljava/lang/String;

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/NativeAdsManager;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->f:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/NativeAdsManager;->g:I

    iput-boolean v1, p0, Lcom/facebook/ads/NativeAdsManager;->k:Z

    iput-boolean v1, p0, Lcom/facebook/ads/NativeAdsManager;->j:Z

    :try_start_26
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_32

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v0

    sget-object v1, Lcom/facebook/ads/NativeAdsManager;->a:Ljava/lang/String;

    const-string v2, "Failed to initialize CookieManager."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAdsManager;I)I
    .registers 2

    iput p1, p0, Lcom/facebook/ads/NativeAdsManager;->g:I

    return p1
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAdsManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/NativeAdsManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/NativeAdsManager;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/NativeAdsManager;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/NativeAdsManager;)Lcom/facebook/ads/NativeAdsManager$Listener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->h:Lcom/facebook/ads/NativeAdsManager$Listener;

    return-object v0
.end method


# virtual methods
.method public disableAutoRefresh()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/NativeAdsManager;->j:Z

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->i:Lcom/facebook/ads/internal/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->i:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->c()V

    :cond_c
    return-void
.end method

.method public getUniqueNativeAdCount()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAdsManager;->k:Z

    return v0
.end method

.method public loadAds()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->NONE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/NativeAdsManager;->loadAds(Ljava/util/EnumSet;)V

    return-void
.end method

.method public loadAds(Ljava/util/EnumSet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/facebook/ads/internal/protocol/f;->j:Lcom/facebook/ads/internal/protocol/f;

    iget v6, p0, Lcom/facebook/ads/NativeAdsManager;->e:I

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->i:Lcom/facebook/ads/internal/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->i:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->b()V

    :cond_d
    new-instance v0, Lcom/facebook/ads/internal/a;

    iget-object v1, p0, Lcom/facebook/ads/NativeAdsManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/NativeAdsManager;->d:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/facebook/ads/NativeAdsManager;->b:Lcom/facebook/ads/internal/protocol/d;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/f;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/protocol/d;ILjava/util/EnumSet;)V

    iput-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->i:Lcom/facebook/ads/internal/a;

    iget-boolean v0, p0, Lcom/facebook/ads/NativeAdsManager;->j:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->i:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->c()V

    :cond_25
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->i:Lcom/facebook/ads/internal/a;

    new-instance v1, Lcom/facebook/ads/NativeAdsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/NativeAdsManager$1;-><init>(Lcom/facebook/ads/NativeAdsManager;Ljava/util/EnumSet;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/a;->a(Lcom/facebook/ads/internal/a$a;)V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->i:Lcom/facebook/ads/internal/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/a;->a()V

    return-void
.end method

.method public nextNativeAd()Lcom/facebook/ads/NativeAd;
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget v1, p0, Lcom/facebook/ads/NativeAdsManager;->g:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/NativeAdsManager;->g:I

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/facebook/ads/NativeAdsManager;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, v1, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    iget-object v2, p0, Lcom/facebook/ads/NativeAdsManager;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_9

    new-instance v1, Lcom/facebook/ads/NativeAd;

    invoke-direct {v1, v0}, Lcom/facebook/ads/NativeAd;-><init>(Lcom/facebook/ads/NativeAd;)V

    move-object v0, v1

    goto :goto_9
.end method

.method public setListener(Lcom/facebook/ads/NativeAdsManager$Listener;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/NativeAdsManager;->h:Lcom/facebook/ads/NativeAdsManager$Listener;

    return-void
.end method

###### Class com.facebook.ads.NativeAdsManager.AnonymousClass1 (com.facebook.ads.NativeAdsManager$1)
.class Lcom/facebook/ads/NativeAdsManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/NativeAdsManager;->loadAds(Ljava/util/EnumSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/EnumSet;

.field final synthetic b:Lcom/facebook/ads/NativeAdsManager;


# direct methods
.method constructor <init>(Lcom/facebook/ads/NativeAdsManager;Ljava/util/EnumSet;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    iput-object p2, p0, Lcom/facebook/ads/NativeAdsManager$1;->a:Ljava/util/EnumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdsManager;->c(Lcom/facebook/ads/NativeAdsManager;)Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdsManager;->c(Lcom/facebook/ads/NativeAdsManager;)Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/ads/AdError;->getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdError(Lcom/facebook/ads/AdError;)V

    :cond_15
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/adapters/ab;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/facebook/ads/internal/d/b;

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdsManager;->a(Lcom/facebook/ads/NativeAdsManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/d/b;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/ab;

    iget-object v3, p0, Lcom/facebook/ads/NativeAdsManager$1;->a:Ljava/util/EnumSet;

    sget-object v4, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->ICON:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->l()Lcom/facebook/ads/internal/n/f;

    move-result-object v3

    if-eqz v3, :cond_46

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->l()Lcom/facebook/ads/internal/n/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/n/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->l()Lcom/facebook/ads/internal/n/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/n/f;->c()I

    move-result v4

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->l()Lcom/facebook/ads/internal/n/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/internal/n/f;->b()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    :cond_46
    iget-object v3, p0, Lcom/facebook/ads/NativeAdsManager$1;->a:Ljava/util/EnumSet;

    sget-object v4, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->IMAGE:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->m()Lcom/facebook/ads/internal/n/f;

    move-result-object v3

    if-eqz v3, :cond_71

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->m()Lcom/facebook/ads/internal/n/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/n/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->m()Lcom/facebook/ads/internal/n/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/internal/n/f;->c()I

    move-result v4

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->m()Lcom/facebook/ads/internal/n/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/internal/n/f;->b()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    :cond_71
    iget-object v3, p0, Lcom/facebook/ads/NativeAdsManager$1;->a:Ljava/util/EnumSet;

    sget-object v4, Lcom/facebook/ads/NativeAd$MediaCacheFlag;->VIDEO:Lcom/facebook/ads/NativeAd$MediaCacheFlag;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ab;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;)V

    goto :goto_f

    :cond_8d
    new-instance v0, Lcom/facebook/ads/NativeAdsManager$1$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/NativeAdsManager$1$1;-><init>(Lcom/facebook/ads/NativeAdsManager$1;Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/d/b;->a(Lcom/facebook/ads/internal/d/a;)V

    return-void
.end method

###### Class com.facebook.ads.NativeAdsManager.AnonymousClass1.C00071 (com.facebook.ads.NativeAdsManager$1$1)
.class Lcom/facebook/ads/NativeAdsManager$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/NativeAdsManager$1;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/facebook/ads/NativeAdsManager$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/NativeAdsManager$1;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->b:Lcom/facebook/ads/NativeAdsManager$1;

    iput-object p2, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->b:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v0, v0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAdsManager;->a(Lcom/facebook/ads/NativeAdsManager;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->b:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v0, v0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdsManager;->b(Lcom/facebook/ads/NativeAdsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->b:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v0, v0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/NativeAdsManager;->a(Lcom/facebook/ads/NativeAdsManager;I)I

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/ab;

    iget-object v2, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->b:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v2, v2, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v2}, Lcom/facebook/ads/NativeAdsManager;->b(Lcom/facebook/ads/NativeAdsManager;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/facebook/ads/NativeAd;

    iget-object v4, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->b:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v4, v4, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v4}, Lcom/facebook/ads/NativeAdsManager;->a(Lcom/facebook/ads/NativeAdsManager;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/h/d;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_47
    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->b:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v0, v0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdsManager;->c(Lcom/facebook/ads/NativeAdsManager;)Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/facebook/ads/NativeAdsManager$1$1;->b:Lcom/facebook/ads/NativeAdsManager$1;

    iget-object v0, v0, Lcom/facebook/ads/NativeAdsManager$1;->b:Lcom/facebook/ads/NativeAdsManager;

    invoke-static {v0}, Lcom/facebook/ads/NativeAdsManager;->c(Lcom/facebook/ads/NativeAdsManager;)Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdsLoaded()V

    :cond_5c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/NativeAdsManager$1$1;->c()V

    return-void
.end method

.method public b()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/NativeAdsManager$1$1;->c()V

    return-void
.end method

###### Class com.facebook.ads.NativeAdsManager.Listener (com.facebook.ads.NativeAdsManager$Listener)
.class public interface abstract Lcom/facebook/ads/NativeAdsManager$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAdsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAdError(Lcom/facebook/ads/AdError;)V
.end method

.method public abstract onAdsLoaded()V
.end method
