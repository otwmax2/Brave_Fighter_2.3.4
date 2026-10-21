###### Class com.facebook.ads.internal.p.a.a (com.facebook.ads.internal.p.a.a)
.class public Lcom/facebook/ads/internal/p/a/a;
.super Ljava/lang/Object;


# static fields
.field private static f:[I

.field private static final g:Ljava/lang/String;


# instance fields
.field protected final a:Lcom/facebook/ads/internal/p/a/q;

.field protected final b:Lcom/facebook/ads/internal/p/a/d;

.field protected c:Lcom/facebook/ads/internal/p/a/r;

.field protected d:I

.field protected e:I

.field private h:I

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x14

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/p/a/a;->f:[I

    const-class v0, Lcom/facebook/ads/internal/p/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/p/a/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/p/a/a;->c()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1a

    invoke-static {}, Lcom/facebook/ads/internal/p/a/a;->a()V

    :cond_1a
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/p/a/e;

    invoke-direct {v0}, Lcom/facebook/ads/internal/p/a/e;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->b:Lcom/facebook/ads/internal/p/a/d;

    new-instance v0, Lcom/facebook/ads/internal/p/a/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/p/a/g;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/facebook/ads/internal/p/a/a;->d:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/facebook/ads/internal/p/a/a;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/internal/p/a/a;->h:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->i:Ljava/util/Map;

    new-instance v0, Lcom/facebook/ads/internal/p/a/a$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/p/a/a$1;-><init>(Lcom/facebook/ads/internal/p/a/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->a:Lcom/facebook/ads/internal/p/a/q;

    return-void
.end method

.method public static a()V
    .registers 1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    :cond_e
    return-void
.end method

.method private static c()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_d

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_d
    return-void
.end method

.method private c(Ljava/net/HttpURLConnection;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/internal/p/a/a;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_22
    return-void
.end method


# virtual methods
.method protected a(I)I
    .registers 4

    sget-object v0, Lcom/facebook/ads/internal/p/a/a;->f:[I

    add-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method protected a(Ljava/net/HttpURLConnection;[B)I
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->a:Lcom/facebook/ads/internal/p/a/q;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/p/a/q;->a(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->a:Lcom/facebook/ads/internal/p/a/q;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/internal/p/a/q;->a(Ljava/io/OutputStream;[B)V

    :cond_e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    move-result v0

    if-eqz v1, :cond_17

    :try_start_14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_1f

    :cond_17
    :goto_17
    return v0

    :catchall_18
    move-exception v0

    if-eqz v1, :cond_1e

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_21

    :cond_1e
    :goto_1e
    throw v0

    :catch_1f
    move-exception v1

    goto :goto_17

    :catch_21
    move-exception v1

    goto :goto_1e
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/ads/internal/p/a/a;
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Lcom/facebook/ads/internal/p/a/l;)Lcom/facebook/ads/internal/p/a/n;
    .registers 9

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_5
    iget v3, p0, Lcom/facebook/ads/internal/p/a/a;->h:I

    if-ge v2, v3, :cond_8a

    :try_start_9
    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/p/a/a;->a(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/p/a/a;->c(I)V

    iget-object v3, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v3}, Lcom/facebook/ads/internal/p/a/r;->a()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "of"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/facebook/ads/internal/p/a/a;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", trying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/l;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/facebook/ads/internal/p/a/r;->a(Ljava/lang/String;)V

    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/l;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/l;->b()Lcom/facebook/ads/internal/p/a/j;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/l;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/l;->d()[B

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/facebook/ads/internal/p/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/j;Ljava/lang/String;[B)Lcom/facebook/ads/internal/p/a/n;
    :try_end_5d
    .catch Lcom/facebook/ads/internal/p/a/m; {:try_start_9 .. :try_end_5d} :catch_62

    move-result-object v3

    if-eqz v3, :cond_6f

    move-object v0, v3

    :goto_61
    return-object v0

    :catch_62
    move-exception v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/facebook/ads/internal/p/a/a;->a(Ljava/lang/Throwable;J)Z

    move-result v4

    if-eqz v4, :cond_72

    iget v4, p0, Lcom/facebook/ads/internal/p/a/a;->h:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_72

    :cond_6f
    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_72
    iget-object v4, p0, Lcom/facebook/ads/internal/p/a/a;->a:Lcom/facebook/ads/internal/p/a/q;

    invoke-interface {v4, v3}, Lcom/facebook/ads/internal/p/a/q;->a(Lcom/facebook/ads/internal/p/a/m;)Z

    move-result v4

    if-eqz v4, :cond_89

    iget v4, p0, Lcom/facebook/ads/internal/p/a/a;->h:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_89

    :try_start_80
    iget v4, p0, Lcom/facebook/ads/internal/p/a/a;->d:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_86
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_86} :catch_87

    goto :goto_6f

    :catch_87
    move-exception v0

    throw v3

    :cond_89
    throw v3

    :cond_8a
    const/4 v0, 0x0

    goto :goto_61
.end method

.method protected a(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/j;Ljava/lang/String;[B)Lcom/facebook/ads/internal/p/a/n;
    .registers 13

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lcom/facebook/ads/internal/p/a/a;->j:Z

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/p/a/a;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_11d
    .catchall {:try_start_5 .. :try_end_a} :catchall_11a

    move-result-object v2

    :try_start_b
    invoke-virtual {p0, v2, p2, p3}, Lcom/facebook/ads/internal/p/a/a;->a(Ljava/net/HttpURLConnection;Lcom/facebook/ads/internal/p/a/j;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/facebook/ads/internal/p/a/a;->c(Ljava/net/HttpURLConnection;)V

    iget-object v5, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v5}, Lcom/facebook/ads/internal/p/a/r;->a()Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v5, v2, p4}, Lcom/facebook/ads/internal/p/a/r;->a(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    :cond_1e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/facebook/ads/internal/p/a/a;->j:Z

    iget-object v5, p0, Lcom/facebook/ads/internal/p/a/a;->l:Ljava/util/Set;

    if-eqz v5, :cond_78

    iget-object v5, p0, Lcom/facebook/ads/internal/p/a/a;->l:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_78

    move v5, v1

    :goto_31
    iget-object v7, p0, Lcom/facebook/ads/internal/p/a/a;->k:Ljava/util/Set;

    if-eqz v7, :cond_7a

    iget-object v7, p0, Lcom/facebook/ads/internal/p/a/a;->k:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7a

    :goto_3d
    instance-of v4, v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3f} :catch_85
    .catchall {:try_start_b .. :try_end_3f} :catchall_ae

    if-eqz v4, :cond_50

    if-nez v5, :cond_45

    if-eqz v1, :cond_50

    :cond_45
    :try_start_45
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    iget-object v4, p0, Lcom/facebook/ads/internal/p/a/a;->l:Ljava/util/Set;

    iget-object v5, p0, Lcom/facebook/ads/internal/p/a/a;->k:Ljava/util/Set;

    invoke-static {v1, v4, v5}, Lcom/facebook/ads/internal/p/a/o;->a(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_50} :catch_7c
    .catchall {:try_start_45 .. :try_end_50} :catchall_ae

    :cond_50
    :goto_50
    :try_start_50
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v1

    if-eqz v1, :cond_5b

    if-eqz p4, :cond_5b

    invoke-virtual {p0, v2, p4}, Lcom/facebook/ads/internal/p/a/a;->a(Ljava/net/HttpURLConnection;[B)I

    :cond_5b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/p/a/a;->a(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/p/a/n;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_64} :catch_85
    .catchall {:try_start_50 .. :try_end_64} :catchall_ae

    move-result-object v1

    :goto_65
    iget-object v3, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v3}, Lcom/facebook/ads/internal/p/a/r;->a()Z

    move-result v3

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v3, v1}, Lcom/facebook/ads/internal/p/a/r;->a(Lcom/facebook/ads/internal/p/a/n;)V

    :cond_72
    if-eqz v2, :cond_77

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_77
    :goto_77
    return-object v1

    :cond_78
    move v5, v4

    goto :goto_31

    :cond_7a
    move v1, v4

    goto :goto_3d

    :catch_7c
    move-exception v1

    :try_start_7d
    sget-object v4, Lcom/facebook/ads/internal/p/a/a;->g:Ljava/lang/String;

    const-string v5, "Unable to validate SSL certificates."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_84} :catch_85
    .catchall {:try_start_7d .. :try_end_84} :catchall_ae

    goto :goto_50

    :catch_85
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    :goto_88
    :try_start_88
    invoke-virtual {p0, v4}, Lcom/facebook/ads/internal/p/a/a;->b(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/p/a/n;
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_cd
    .catchall {:try_start_88 .. :try_end_8b} :catchall_f6

    move-result-object v1

    if-eqz v1, :cond_c2

    :try_start_8e
    invoke-virtual {v1}, Lcom/facebook/ads/internal/p/a/n;->a()I
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_c8

    move-result v3

    if-lez v3, :cond_c2

    iget-object v2, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v2}, Lcom/facebook/ads/internal/p/a/r;->a()Z

    move-result v2

    if-eqz v2, :cond_a1

    iget-object v2, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v2, v1}, Lcom/facebook/ads/internal/p/a/r;->a(Lcom/facebook/ads/internal/p/a/n;)V

    :cond_a1
    if-eqz v4, :cond_77

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_77

    :cond_a7
    :try_start_a7
    new-instance v1, Lcom/facebook/ads/internal/p/a/n;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/facebook/ads/internal/p/a/n;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ad} :catch_85
    .catchall {:try_start_a7 .. :try_end_ad} :catchall_ae

    goto :goto_65

    :catchall_ae
    move-exception v1

    :goto_af
    iget-object v4, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v4}, Lcom/facebook/ads/internal/p/a/r;->a()Z

    move-result v4

    if-eqz v4, :cond_bc

    iget-object v4, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v4, v3}, Lcom/facebook/ads/internal/p/a/r;->a(Lcom/facebook/ads/internal/p/a/n;)V

    :cond_bc
    if-eqz v2, :cond_c1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c1
    throw v1

    :cond_c2
    :try_start_c2
    new-instance v3, Lcom/facebook/ads/internal/p/a/m;

    invoke-direct {v3, v2, v1}, Lcom/facebook/ads/internal/p/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/p/a/n;)V

    throw v3
    :try_end_c8
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_c8

    :catchall_c8
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_af

    :catch_cd
    move-exception v1

    :try_start_ce
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_f6

    if-eqz v3, :cond_ed

    :try_start_d3
    invoke-virtual {v6}, Lcom/facebook/ads/internal/p/a/n;->a()I
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_f3

    move-result v1

    if-lez v1, :cond_ed

    iget-object v1, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v1}, Lcom/facebook/ads/internal/p/a/r;->a()Z

    move-result v1

    if-eqz v1, :cond_e6

    iget-object v1, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v1, v3}, Lcom/facebook/ads/internal/p/a/r;->a(Lcom/facebook/ads/internal/p/a/n;)V

    :cond_e6
    if-eqz v4, :cond_eb

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_eb
    move-object v1, v3

    goto :goto_77

    :cond_ed
    :try_start_ed
    new-instance v1, Lcom/facebook/ads/internal/p/a/m;

    invoke-direct {v1, v2, v6}, Lcom/facebook/ads/internal/p/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/p/a/n;)V

    throw v1

    :catchall_f3
    move-exception v1

    move-object v2, v4

    goto :goto_af

    :catchall_f6
    move-exception v1

    if-eqz v3, :cond_114

    invoke-virtual {v6}, Lcom/facebook/ads/internal/p/a/n;->a()I
    :try_end_fc
    .catchall {:try_start_ed .. :try_end_fc} :catchall_f3

    move-result v1

    if-lez v1, :cond_114

    iget-object v1, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v1}, Lcom/facebook/ads/internal/p/a/r;->a()Z

    move-result v1

    if-eqz v1, :cond_10c

    iget-object v1, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v1, v3}, Lcom/facebook/ads/internal/p/a/r;->a(Lcom/facebook/ads/internal/p/a/n;)V

    :cond_10c
    if-eqz v4, :cond_111

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_111
    move-object v1, v3

    goto/16 :goto_77

    :cond_114
    :try_start_114
    new-instance v1, Lcom/facebook/ads/internal/p/a/m;

    invoke-direct {v1, v2, v6}, Lcom/facebook/ads/internal/p/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/p/a/n;)V

    throw v1
    :try_end_11a
    .catchall {:try_start_114 .. :try_end_11a} :catchall_f3

    :catchall_11a
    move-exception v1

    move-object v2, v3

    goto :goto_af

    :catch_11d
    move-exception v1

    move-object v2, v1

    move-object v4, v3

    goto/16 :goto_88
.end method

.method public a(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;)Lcom/facebook/ads/internal/p/a/n;
    .registers 4

    new-instance v0, Lcom/facebook/ads/internal/p/a/i;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/p/a/i;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/p/a/a;->b(Lcom/facebook/ads/internal/p/a/l;)Lcom/facebook/ads/internal/p/a/n;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/facebook/ads/internal/p/a/n;
    .registers 6

    new-instance v0, Lcom/facebook/ads/internal/p/a/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/facebook/ads/internal/p/a/k;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;Ljava/lang/String;[B)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/p/a/a;->b(Lcom/facebook/ads/internal/p/a/l;)Lcom/facebook/ads/internal/p/a/n;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/p/a/n;
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->a:Lcom/facebook/ads/internal/p/a/q;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/p/a/q;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a

    move-result-object v1

    if-eqz v1, :cond_f

    :try_start_9
    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->a:Lcom/facebook/ads/internal/p/a/q;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/p/a/q;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    :cond_f
    new-instance v0, Lcom/facebook/ads/internal/p/a/n;

    invoke-direct {v0, p1, v2}, Lcom/facebook/ads/internal/p/a/n;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_26

    if-eqz v1, :cond_19

    :try_start_16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_22

    :cond_19
    :goto_19
    return-object v0

    :catchall_1a
    move-exception v0

    move-object v1, v2

    :goto_1c
    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_24

    :cond_21
    :goto_21
    throw v0

    :catch_22
    move-exception v1

    goto :goto_19

    :catch_24
    move-exception v1

    goto :goto_21

    :catchall_26
    move-exception v0

    goto :goto_1c
.end method

.method protected a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_c

    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->a:Lcom/facebook/ads/internal/p/a/q;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/p/a/q;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Lcom/facebook/ads/internal/p/a/l;Lcom/facebook/ads/internal/p/a/b;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->b:Lcom/facebook/ads/internal/p/a/d;

    invoke-interface {v0, p0, p2}, Lcom/facebook/ads/internal/p/a/d;->a(Lcom/facebook/ads/internal/p/a/a;Lcom/facebook/ads/internal/p/a/b;)Lcom/facebook/ads/internal/p/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/p/a/c;->a(Lcom/facebook/ads/internal/p/a/l;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;Lcom/facebook/ads/internal/p/a/b;)V
    .registers 5

    new-instance v0, Lcom/facebook/ads/internal/p/a/k;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/p/a/k;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;)V

    invoke-virtual {p0, v0, p3}, Lcom/facebook/ads/internal/p/a/a;->a(Lcom/facebook/ads/internal/p/a/l;Lcom/facebook/ads/internal/p/a/b;)V

    return-void
.end method

.method protected a(Ljava/net/HttpURLConnection;Lcom/facebook/ads/internal/p/a/j;Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Lcom/facebook/ads/internal/p/a/a;->d:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/facebook/ads/internal/p/a/a;->e:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->a:Lcom/facebook/ads/internal/p/a/q;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/p/a/q;->a(Ljava/net/HttpURLConnection;Lcom/facebook/ads/internal/p/a/j;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/p/a/a;->l:Ljava/util/Set;

    return-void
.end method

.method protected a(Ljava/lang/Throwable;J)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    invoke-interface {v4}, Lcom/facebook/ads/internal/p/a/r;->a()Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, p0, Lcom/facebook/ads/internal/p/a/a;->c:Lcom/facebook/ads/internal/p/a/r;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ELAPSED TIME = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/facebook/ads/internal/p/a/a;->d:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", RT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/facebook/ads/internal/p/a/a;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/facebook/ads/internal/p/a/r;->a(Ljava/lang/String;)V

    :cond_42
    iget-boolean v4, p0, Lcom/facebook/ads/internal/p/a/a;->j:Z

    if-eqz v4, :cond_50

    iget v4, p0, Lcom/facebook/ads/internal/p/a/a;->e:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4e

    :cond_4d
    :goto_4d
    return v0

    :cond_4e
    move v0, v1

    goto :goto_4d

    :cond_50
    iget v4, p0, Lcom/facebook/ads/internal/p/a/a;->d:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4d

    move v0, v1

    goto :goto_4d
.end method

.method public b(Lcom/facebook/ads/internal/p/a/l;)Lcom/facebook/ads/internal/p/a/n;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/l;->b()Lcom/facebook/ads/internal/p/a/j;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/ads/internal/p/a/l;->d()[B

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/p/a/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/j;Ljava/lang/String;[B)Lcom/facebook/ads/internal/p/a/n;
    :try_end_14
    .catch Lcom/facebook/ads/internal/p/a/m; {:try_start_1 .. :try_end_14} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1d

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v1

    iget-object v2, p0, Lcom/facebook/ads/internal/p/a/a;->a:Lcom/facebook/ads/internal/p/a/q;

    invoke-interface {v2, v1}, Lcom/facebook/ads/internal/p/a/q;->a(Lcom/facebook/ads/internal/p/a/m;)Z

    goto :goto_15

    :catch_1d
    move-exception v1

    iget-object v2, p0, Lcom/facebook/ads/internal/p/a/a;->a:Lcom/facebook/ads/internal/p/a/q;

    new-instance v3, Lcom/facebook/ads/internal/p/a/m;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/internal/p/a/m;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/internal/p/a/n;)V

    invoke-interface {v2, v3}, Lcom/facebook/ads/internal/p/a/q;->a(Lcom/facebook/ads/internal/p/a/m;)Z

    goto :goto_15
.end method

.method public b(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;)Lcom/facebook/ads/internal/p/a/n;
    .registers 4

    new-instance v0, Lcom/facebook/ads/internal/p/a/k;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/internal/p/a/k;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/p/a/a;->b(Lcom/facebook/ads/internal/p/a/l;)Lcom/facebook/ads/internal/p/a/n;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/internal/p/a/n;
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_18

    move-result-object v1

    if-eqz v1, :cond_d

    :try_start_7
    iget-object v0, p0, Lcom/facebook/ads/internal/p/a/a;->a:Lcom/facebook/ads/internal/p/a/q;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/p/a/q;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    :cond_d
    new-instance v0, Lcom/facebook/ads/internal/p/a/n;

    invoke-direct {v0, p1, v2}, Lcom/facebook/ads/internal/p/a/n;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_24

    if-eqz v1, :cond_17

    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_20

    :cond_17
    :goto_17
    return-object v0

    :catchall_18
    move-exception v0

    move-object v1, v2

    :goto_1a
    if-eqz v1, :cond_1f

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_22

    :cond_1f
    :goto_1f
    throw v0

    :catch_20
    move-exception v1

    goto :goto_17

    :catch_22
    move-exception v1

    goto :goto_1f

    :catchall_24
    move-exception v0

    goto :goto_1a
.end method

.method public b()Lcom/facebook/ads/internal/p/a/p;
    .registers 2

    new-instance v0, Lcom/facebook/ads/internal/p/a/p;

    invoke-direct {v0}, Lcom/facebook/ads/internal/p/a/p;-><init>()V

    return-object v0
.end method

.method public b(I)V
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    const/16 v0, 0x12

    if-le p1, v0, :cond_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum retries must be between 1 and 18"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iput p1, p0, Lcom/facebook/ads/internal/p/a/a;->h:I

    return-void
.end method

.method public b(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/p/a/a;->k:Ljava/util/Set;

    return-void
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/internal/p/a/a;->d:I

    return-void
.end method

###### Class com.facebook.ads.internal.p.a.a.AnonymousClass1 (com.facebook.ads.internal.p.a.a$1)
.class Lcom/facebook/ads/internal/p/a/a$1;
.super Lcom/facebook/ads/internal/p/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/p/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/p/a/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/p/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/p/a/a$1;->a:Lcom/facebook/ads/internal/p/a/a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/a/f;-><init>()V

    return-void
.end method
