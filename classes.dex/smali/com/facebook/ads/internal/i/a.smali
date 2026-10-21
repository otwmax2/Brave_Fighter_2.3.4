###### Class com.facebook.ads.internal.i.a (com.facebook.ads.internal.i.a)
.class public Lcom/facebook/ads/internal/i/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/facebook/ads/internal/i/a;

.field private static c:Z


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/i/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/i/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/internal/i/a;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/i/a;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/ads/internal/i/a;
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/i/a;->b:Lcom/facebook/ads/internal/i/a;

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/i/a;->b:Lcom/facebook/ads/internal/i/a;

    if-nez v0, :cond_14

    new-instance v0, Lcom/facebook/ads/internal/i/a;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/i/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/ads/internal/i/a;->b:Lcom/facebook/ads/internal/i/a;

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_18

    :cond_15
    sget-object v0, Lcom/facebook/ads/internal/i/a;->b:Lcom/facebook/ads/internal/i/a;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 7

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/facebook/ads/internal/i/a;->c:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/ads/internal/i/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l/a;->g(Landroid/content/Context;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_35

    move-result v0

    if-eqz v0, :cond_27

    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/f/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/i/a;->d:Landroid/content/Context;

    new-instance v3, Lcom/facebook/ads/internal/i/c;

    iget-object v4, p0, Lcom/facebook/ads/internal/i/a;->d:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/facebook/ads/internal/i/c;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v3}, Lcom/facebook/ads/internal/i/c;->b()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/ads/internal/f/c;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_27} :catch_2c
    .catchall {:try_start_d .. :try_end_27} :catchall_35

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :try_start_28
    sput-boolean v0, Lcom/facebook/ads/internal/i/a;->c:Z
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_35

    :cond_2a
    monitor-exit p0

    return-void

    :catch_2c
    move-exception v0

    :try_start_2d
    sget-object v1, Lcom/facebook/ads/internal/i/a;->a:Ljava/lang/String;

    const-string v2, "No permissions to set the default uncaught exception handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_35

    goto :goto_27

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
