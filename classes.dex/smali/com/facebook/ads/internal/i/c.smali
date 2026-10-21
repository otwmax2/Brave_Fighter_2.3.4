###### Class com.facebook.ads.internal.i.c (com.facebook.ads.internal.i.c)
.class public Lcom/facebook/ads/internal/i/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static b:Ljava/lang/String;

.field private static final c:Lcom/facebook/ads/internal/q/a/f$a;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Lcom/facebook/ads/internal/g/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/internal/i/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/internal/i/c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/q/a/f;->a()Lcom/facebook/ads/internal/q/a/f$a;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/q/a/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/i/c;->d:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/internal/g/b;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/g/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-static {p1, p2}, Lcom/facebook/ads/internal/i/c;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/i/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/facebook/ads/internal/i/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Z)V
    .registers 7

    const/4 v4, 0x0

    sget-object v0, Lcom/facebook/ads/internal/i/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/facebook/ads/internal/q/a/m;->a()V

    const-string v0, "FBAdPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/g/b;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/g/b;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AFP;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/ads/internal/g/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/ads/internal/i/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/facebook/ads/internal/i/c$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/ads/internal/i/c$1;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz p1, :cond_a

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4e} :catch_4f

    goto :goto_a

    :catch_4f
    move-exception v0

    sget-object v0, Lcom/facebook/ads/internal/i/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_a
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/h;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/i/c;

    invoke-direct {v1, p0, v2}, Lcom/facebook/ads/internal/i/c;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/c;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/facebook/ads/internal/f/e;->a(Ljava/lang/Exception;Landroid/content/Context;Ljava/util/Map;)Lcom/facebook/ads/internal/f/d;

    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/i/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/i/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->d:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/i/c;->a(Landroid/content/Context;Z)V

    :try_start_7
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_42
    .catchall {:try_start_7 .. :try_end_c} :catchall_62

    :try_start_c
    new-instance v3, Landroid/util/Base64OutputStream;

    const/4 v0, 0x0

    invoke-direct {v3, v4, v0}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_70
    .catchall {:try_start_c .. :try_end_12} :catchall_67

    :try_start_12
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_74
    .catchall {:try_start_12 .. :try_end_17} :catchall_6b

    :try_start_17
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/c;->b()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_31} :catch_79
    .catchall {:try_start_17 .. :try_end_31} :catchall_6e

    move-result-object v0

    if-eqz v1, :cond_37

    :try_start_34
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    :cond_37
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/util/Base64OutputStream;->close()V

    :cond_3c
    if-eqz v4, :cond_41

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_41} :catch_7d

    :cond_41
    :goto_41
    return-object v0

    :catch_42
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_45
    :try_start_45
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Failed to build user token"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    :goto_50
    if-eqz v1, :cond_55

    :try_start_52
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V

    :cond_55
    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Landroid/util/Base64OutputStream;->close()V

    :cond_5a
    if-eqz v4, :cond_5f

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5f} :catch_60

    :cond_5f
    :goto_5f
    throw v0

    :catch_60
    move-exception v1

    goto :goto_5f

    :catchall_62
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_50

    :catchall_67
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_50

    :catchall_6b
    move-exception v0

    move-object v1, v2

    goto :goto_50

    :catchall_6e
    move-exception v0

    goto :goto_50

    :catch_70
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_45

    :catch_74
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_45

    :catch_79
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_45

    :catch_7d
    move-exception v1

    goto :goto_41
.end method

.method public b()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/i/c;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/g/a;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SDK"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SDK_VERSION"

    const-string v2, "4.28.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LOCALE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/facebook/ads/internal/q/a/v;->b:F

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/facebook/ads/internal/i/c;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v4, "DENSITY"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "SCREEN_WIDTH"

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SCREEN_HEIGHT"

    int-to-float v3, v3

    div-float v1, v3, v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ATTRIBUTION_ID"

    sget-object v2, Lcom/facebook/ads/internal/c/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ID_SOURCE"

    sget-object v2, Lcom/facebook/ads/internal/c/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OS"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OSVERS"

    sget-object v2, Lcom/facebook/ads/internal/g/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BUNDLE"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "APPNAME"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "APPVERS"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "APPBUILD"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/b;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CARRIER"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MAKE"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MODEL"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ROOTED"

    sget-object v2, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/q/a/f$a;

    iget v2, v2, Lcom/facebook/ads/internal/q/a/f$a;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "INSTALLER"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SDK_CAPABILITY"

    invoke-static {}, Lcom/facebook/ads/internal/q/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NETWORK_TYPE"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/q/c/d;->c(Landroid/content/Context;)Lcom/facebook/ads/internal/q/c/d$a;

    move-result-object v2

    iget v2, v2, Lcom/facebook/ads/internal/q/c/d$a;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SESSION_TIME"

    invoke-static {}, Lcom/facebook/ads/internal/q/a/m;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/q/a/r;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SESSION_ID"

    invoke-static {}, Lcom/facebook/ads/internal/q/a/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/internal/i/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_127

    const-string v1, "AFP"

    sget-object v2, Lcom/facebook/ads/internal/i/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_127
    iget-object v1, p0, Lcom/facebook/ads/internal/i/c;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/ads/internal/q/a/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_134

    const-string v2, "ASHAS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_134
    const-string v1, "UNITY"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/q/a/g;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getMediationService()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14e

    const-string v2, "MEDIATION_SERVICE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14e
    const-string v1, "ACCESSIBILITY_ENABLED"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/b;->i()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/g/b;->j()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_175

    const-string v1, "APP_MIN_SDK_VERSION"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/c;->e:Lcom/facebook/ads/internal/g/b;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/b;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_175
    const-string v1, "VALPARAMS"

    invoke-static {}, Lcom/facebook/ads/internal/i/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ANALOG"

    invoke-static {}, Lcom/facebook/ads/internal/g/a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/q/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

###### Class com.facebook.ads.internal.i.c.AnonymousClass1 (com.facebook.ads.internal.i.c$1)
.class final Lcom/facebook/ads/internal/i/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/i/c;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/SharedPreferences;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/internal/i/c$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/i/c$1;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/facebook/ads/internal/i/c$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/c$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/i/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/i/c;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c$1;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/c$1;->c:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/i/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/facebook/ads/internal/i/c;->d()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/c$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
