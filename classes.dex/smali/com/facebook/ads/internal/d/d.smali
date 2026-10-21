###### Class com.facebook.ads.internal.d.d (com.facebook.ads.internal.d.d)
.class public Lcom/facebook/ads/internal/d/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/facebook/ads/internal/d/d;


# instance fields
.field private final c:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/facebook/ads/internal/p/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/d/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/d/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/d/d$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/d/d$1;-><init>(Lcom/facebook/ads/internal/d/d;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/d/d;->c:Ljava/util/concurrent/Future;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/ads/internal/d/d;
    .registers 4

    sget-object v0, Lcom/facebook/ads/internal/d/d;->b:Lcom/facebook/ads/internal/d/d;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/facebook/ads/internal/d/d;

    monitor-enter v1

    :try_start_b
    sget-object v2, Lcom/facebook/ads/internal/d/d;->b:Lcom/facebook/ads/internal/d/d;

    if-nez v2, :cond_16

    new-instance v2, Lcom/facebook/ads/internal/d/d;

    invoke-direct {v2, v0}, Lcom/facebook/ads/internal/d/d;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/facebook/ads/internal/d/d;->b:Lcom/facebook/ads/internal/d/d;

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1a

    :cond_17
    sget-object v0, Lcom/facebook/ads/internal/d/d;->b:Lcom/facebook/ads/internal/d/d;

    return-object v0

    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private a()Lcom/facebook/ads/internal/p/b/f;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/d/d;->c:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x1f4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/p/b/f;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_c} :catch_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_c} :catch_19

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    :goto_e
    sget-object v1, Lcom/facebook/ads/internal/d/d;->a:Ljava/lang/String;

    const-string v2, "Timed out waiting for cache server."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_c

    :catch_17
    move-exception v0

    goto :goto_e

    :catch_19
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/internal/d/d;->a()Lcom/facebook/ads/internal/p/b/f;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/p/b/f;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/facebook/ads/internal/d/d;->a()Lcom/facebook/ads/internal/p/b/f;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/p/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

###### Class com.facebook.ads.internal.d.d.AnonymousClass1 (com.facebook.ads.internal.d.d$1)
.class Lcom/facebook/ads/internal/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/d/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/facebook/ads/internal/p/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/ads/internal/d/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/d/d;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/d/d$1;->b:Lcom/facebook/ads/internal/d/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/d/d$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/p/b/f;
    .registers 3

    new-instance v0, Lcom/facebook/ads/internal/p/b/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/d/d$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/p/b/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/d/d$1;->a()Lcom/facebook/ads/internal/p/b/f;

    move-result-object v0

    return-object v0
.end method
