###### Class com.facebook.ads.internal.p.b.f (com.facebook.ads.internal.p.b.f)
.class public Lcom/facebook/ads/internal/p/b/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/p/b/f$a;,
        Lcom/facebook/ads/internal/p/b/f$c;,
        Lcom/facebook/ads/internal/p/b/f$b;,
        Lcom/facebook/ads/internal/p/b/f$d;,
        Lcom/facebook/ads/internal/p/b/f$e;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/p/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/net/ServerSocket;

.field private final e:I

.field private final f:Ljava/lang/Thread;

.field private final g:Lcom/facebook/ads/internal/p/b/c;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/facebook/ads/internal/p/b/f$a;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/p/b/f$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/facebook/ads/internal/p/b/f$a;->a(Lcom/facebook/ads/internal/p/b/f$a;)Lcom/facebook/ads/internal/p/b/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/p/b/f;-><init>(Lcom/facebook/ads/internal/p/b/c;)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/ads/internal/p/b/c;)V
    .registers 6

    const/16 v1, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->a:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/ads/internal/p/b/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/p/b/c;

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->g:Lcom/facebook/ads/internal/p/b/c;

    :try_start_21
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/p/b/f;->d:Ljava/net/ServerSocket;

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/p/b/f;->e:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/facebook/ads/internal/p/b/f$e;

    invoke-direct {v2, p0, v0}, Lcom/facebook/ads/internal/p/b/f$e;-><init>(Lcom/facebook/ads/internal/p/b/f;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/p/b/f;->f:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/f;->f:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const-string v0, "ProxyCache"

    const-string v1, "Proxy cache server started. Ping it..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/f;->b()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_5d} :catch_6c
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_5d} :catch_5e

    return-void

    :catch_5e
    move-exception v0

    :goto_5f
    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/f;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error starting local proxy server"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6c
    move-exception v0

    goto :goto_5f
.end method

.method static synthetic a(Lcom/facebook/ads/internal/p/b/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/f;->e()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/p/b/f;Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->a(Ljava/net/Socket;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "ProxyCache"

    const-string v1, "HttpProxyCacheServer error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/p/b/d;->a(Ljava/io/InputStream;)Lcom/facebook/ads/internal/p/b/d;

    move-result-object v0

    const-string v1, "ProxyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request to cache proxy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/facebook/ads/internal/p/b/d;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/ads/internal/p/b/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ping"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->b(Ljava/net/Socket;)V
    :try_end_31
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_31} :catch_59
    .catch Lcom/facebook/ads/internal/p/b/l; {:try_start_0 .. :try_end_31} :catch_81
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_cd
    .catchall {:try_start_0 .. :try_end_31} :catchall_ac

    :goto_31
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->c(Ljava/net/Socket;)V

    const-string v0, "ProxyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/f;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return-void

    :cond_51
    :try_start_51
    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/p/b/f;->e(Ljava/lang/String;)Lcom/facebook/ads/internal/p/b/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/internal/p/b/g;->a(Lcom/facebook/ads/internal/p/b/d;Ljava/net/Socket;)V
    :try_end_58
    .catch Ljava/net/SocketException; {:try_start_51 .. :try_end_58} :catch_59
    .catch Lcom/facebook/ads/internal/p/b/l; {:try_start_51 .. :try_end_58} :catch_81
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_58} :catch_cd
    .catchall {:try_start_51 .. :try_end_58} :catchall_ac

    goto :goto_31

    :catch_59
    move-exception v0

    :try_start_5a
    const-string v0, "ProxyCache"

    const-string v1, "Closing socket... Socket is closed by client."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_ac

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->c(Ljava/net/Socket;)V

    const-string v0, "ProxyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/f;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :catch_81
    move-exception v0

    :goto_82
    :try_start_82
    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    const-string v2, "Error processing request"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/p/b/f;->a(Ljava/lang/Throwable;)V
    :try_end_8c
    .catchall {:try_start_82 .. :try_end_8c} :catchall_ac

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->c(Ljava/net/Socket;)V

    const-string v0, "ProxyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/f;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :catchall_ac
    move-exception v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->c(Ljava/net/Socket;)V

    const-string v1, "ProxyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opened connections: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/f;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_cd
    move-exception v0

    goto :goto_82
.end method

.method static synthetic a(Lcom/facebook/ads/internal/p/b/f;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .registers 8

    const/4 v3, 0x3

    const/16 v1, 0x12c

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_6
    if-ge v1, v3, :cond_5d

    :try_start_8
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/facebook/ads/internal/p/b/f$b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/facebook/ads/internal/p/b/f$b;-><init>(Lcom/facebook/ads/internal/p/b/f;Lcom/facebook/ads/internal/p/b/f$1;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    int-to-long v4, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/p/b/f;->h:Z

    iget-boolean v0, p0, Lcom/facebook/ads/internal/p/b/f;->h:Z

    if-eqz v0, :cond_28

    :goto_27
    return-void

    :cond_28
    int-to-long v4, v2

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_2c} :catch_33
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_2c} :catch_8b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_2c} :catch_8d

    :goto_2c
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v1, v2, 0x2

    move v2, v1

    move v1, v0

    goto :goto_6

    :catch_33
    move-exception v0

    :goto_34
    const-string v4, "ProxyCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error pinging server [attempt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    :cond_5d
    const-string v0, "ProxyCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shutdown server... Error pinging server [attempts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", max timeout: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/p/b/f;->a()V

    goto :goto_27

    :catch_8b
    move-exception v0

    goto :goto_34

    :catch_8d
    move-exception v0

    goto :goto_34
.end method

.method private b(Ljava/net/Socket;)V
    .registers 4

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "HTTP/1.1 200 OK\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const-string v1, "ping ok"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/p/b/f;)Z
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/f;->c()Z

    move-result v0

    return v0
.end method

.method private c(Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->d(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->e(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->f(Ljava/net/Socket;)V

    return-void
.end method

.method private c()Z
    .registers 8

    const/4 v1, 0x0

    const-string v0, "ping"

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/p/b/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/internal/p/b/h;

    invoke-direct {v2, v0}, Lcom/facebook/ads/internal/p/b/h;-><init>(Ljava/lang/String;)V

    :try_start_c
    const-string v0, "ping ok"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/p/b/h;->a(I)V

    array-length v3, v0

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/p/b/h;->a([B)I

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const-string v4, "ProxyCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ping response: `"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "`, pinged? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Lcom/facebook/ads/internal/p/b/l; {:try_start_c .. :try_end_47} :catch_4b
    .catchall {:try_start_c .. :try_end_47} :catchall_58

    invoke-virtual {v2}, Lcom/facebook/ads/internal/p/b/h;->b()V

    :goto_4a
    return v0

    :catch_4b
    move-exception v0

    :try_start_4c
    const-string v3, "ProxyCache"

    const-string v4, "Error reading ping response"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_58

    invoke-virtual {v2}, Lcom/facebook/ads/internal/p/b/h;->b()V

    move v0, v1

    goto :goto_4a

    :catchall_58
    move-exception v0

    invoke-virtual {v2}, Lcom/facebook/ads/internal/p/b/h;->b()V

    throw v0
.end method

.method private c(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/internal/p/b/h;

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/facebook/ads/internal/p/b/h;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/p/b/h;->a(I)V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :cond_12
    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/p/b/h;->a([B)I
    :try_end_15
    .catch Lcom/facebook/ads/internal/p/b/l; {:try_start_b .. :try_end_15} :catch_1e
    .catchall {:try_start_b .. :try_end_15} :catchall_2a

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    invoke-virtual {v2}, Lcom/facebook/ads/internal/p/b/h;->b()V

    const/4 v0, 0x1

    :goto_1d
    return v0

    :catch_1e
    move-exception v1

    :try_start_1f
    const-string v3, "ProxyCache"

    const-string v4, "Error reading url"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2a

    invoke-virtual {v2}, Lcom/facebook/ads/internal/p/b/h;->b()V

    goto :goto_1d

    :catchall_2a
    move-exception v0

    invoke-virtual {v2}, Lcom/facebook/ads/internal/p/b/h;->b()V

    throw v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "http://%s:%d/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "127.0.0.1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/facebook/ads/internal/p/b/f;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/facebook/ads/internal/p/b/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/p/b/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/p/b/g;->a()V

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1d

    return-void
.end method

.method private d(Ljava/net/Socket;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_13

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v0, "ProxyCache"

    const-string v1, "Releasing input stream... Socket is closed by client."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_13
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    const-string v2, "Error closing socket input stream"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/p/b/f;->a(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private e(Ljava/lang/String;)Lcom/facebook/ads/internal/p/b/g;
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/f;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/p/b/g;

    if-nez v0, :cond_19

    new-instance v0, Lcom/facebook/ads/internal/p/b/g;

    iget-object v2, p0, Lcom/facebook/ads/internal/p/b/f;->g:Lcom/facebook/ads/internal/p/b/c;

    invoke-direct {v0, p1, v2}, Lcom/facebook/ads/internal/p/b/g;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/p/b/c;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/p/b/f;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private e()V
    .registers 5

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const-string v1, "ProxyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accept new socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/facebook/ads/internal/p/b/f$d;

    invoke-direct {v2, p0, v0}, Lcom/facebook/ads/internal/p/b/f$d;-><init>(Lcom/facebook/ads/internal/p/b/f;Ljava/net/Socket;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_0

    :catch_33
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    const-string v2, "Error during waiting connection"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/p/b/f;->a(Ljava/lang/Throwable;)V

    :cond_3e
    return-void
.end method

.method private e(Ljava/net/Socket;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    const-string v2, "Error closing socket output stream"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/p/b/f;->a(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private f()I
    .registers 5

    iget-object v2, p0, Lcom/facebook/ads/internal/p/b/f;->a:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/f;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/p/b/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/p/b/g;->b()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_f

    :cond_22
    monitor-exit v2

    return v1

    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private f(Ljava/net/Socket;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    const-string v2, "Error closing socket"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/p/b/f;->a(Ljava/lang/Throwable;)V

    goto :goto_9
.end method


# virtual methods
.method public a()V
    .registers 4

    const-string v0, "ProxyCache"

    const-string v1, "Shutdown proxy server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/f;->d()V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_f
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->d:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    const-string v2, "Error shutting down proxy server"

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/p/b/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public a(Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x3

    const/16 v1, 0x12c

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_6
    if-ge v1, v3, :cond_55

    :try_start_8
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/facebook/ads/internal/p/b/f$c;

    invoke-direct {v4, p0, p1}, Lcom/facebook/ads/internal/p/b/f$c;-><init>(Lcom/facebook/ads/internal/p/b/f;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    :goto_1f
    return-void

    :cond_20
    int-to-long v4, v2

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_24} :catch_2b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_24} :catch_81

    :goto_24
    add-int/lit8 v0, v1, 0x1

    mul-int/lit8 v1, v2, 0x2

    move v2, v1

    move v1, v0

    goto :goto_6

    :catch_2b
    move-exception v0

    :goto_2c
    const-string v4, "ProxyCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error precaching url [attempt: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :cond_55
    const-string v0, "ProxyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutdown server... Error precaching url [attempts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/p/b/f;->a()V

    goto :goto_1f

    :catch_81
    move-exception v0

    goto :goto_2c
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/internal/p/b/f;->h:Z

    if-nez v0, :cond_b

    const-string v0, "ProxyCache"

    const-string v1, "Proxy server isn\'t pinged. Caching doesn\'t work."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-boolean v0, p0, Lcom/facebook/ads/internal/p/b/f;->h:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_13
    return-object p1
.end method

###### Class com.facebook.ads.internal.p.b.f.AnonymousClass1 (com.facebook.ads.internal.p.b.f$1)
.class synthetic Lcom/facebook/ads/internal/p/b/f$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/p/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.ads.internal.p.b.f.a (com.facebook.ads.internal.p.b.f$a)
.class public final Lcom/facebook/ads/internal/p/b/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/p/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/facebook/ads/internal/p/b/a/c;

.field private c:Lcom/facebook/ads/internal/p/b/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/ads/internal/p/b/o;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/f$a;->a:Ljava/io/File;

    new-instance v0, Lcom/facebook/ads/internal/p/b/a/g;

    const-wide/32 v2, 0x4000000

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/internal/p/b/a/g;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/f$a;->c:Lcom/facebook/ads/internal/p/b/a/a;

    new-instance v0, Lcom/facebook/ads/internal/p/b/a/f;

    invoke-direct {v0}, Lcom/facebook/ads/internal/p/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/f$a;->b:Lcom/facebook/ads/internal/p/b/a/c;

    return-void
.end method

.method private a()Lcom/facebook/ads/internal/p/b/c;
    .registers 5

    new-instance v0, Lcom/facebook/ads/internal/p/b/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/f$a;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/ads/internal/p/b/f$a;->b:Lcom/facebook/ads/internal/p/b/a/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/f$a;->c:Lcom/facebook/ads/internal/p/b/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/p/b/c;-><init>(Ljava/io/File;Lcom/facebook/ads/internal/p/b/a/c;Lcom/facebook/ads/internal/p/b/a/a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/p/b/f$a;)Lcom/facebook/ads/internal/p/b/c;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/f$a;->a()Lcom/facebook/ads/internal/p/b/c;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.internal.p.b.f.b (com.facebook.ads.internal.p.b.f$b)
.class Lcom/facebook/ads/internal/p/b/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/p/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.field final synthetic a:Lcom/facebook/ads/internal/p/b/f;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/p/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/p/b/f$b;->a:Lcom/facebook/ads/internal/p/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/p/b/f;Lcom/facebook/ads/internal/p/b/f$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/f$b;-><init>(Lcom/facebook/ads/internal/p/b/f;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f$b;->a:Lcom/facebook/ads/internal/p/b/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/p/b/f;->b(Lcom/facebook/ads/internal/p/b/f;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/p/b/f$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.internal.p.b.f.c (com.facebook.ads.internal.p.b.f$c)
.class Lcom/facebook/ads/internal/p/b/f$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/p/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
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
.field final synthetic a:Lcom/facebook/ads/internal/p/b/f;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/p/b/f;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/p/b/f$c;->a:Lcom/facebook/ads/internal/p/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/p/b/f$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f$c;->a:Lcom/facebook/ads/internal/p/b/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/f$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/p/b/f;->a(Lcom/facebook/ads/internal/p/b/f;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/p/b/f$c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.internal.p.b.f.d (com.facebook.ads.internal.p.b.f$d)
.class final Lcom/facebook/ads/internal/p/b/f$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/p/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/p/b/f;

.field private final b:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/p/b/f;Ljava/net/Socket;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/p/b/f$d;->a:Lcom/facebook/ads/internal/p/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/p/b/f$d;->b:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f$d;->a:Lcom/facebook/ads/internal/p/b/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/f$d;->b:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/p/b/f;->a(Lcom/facebook/ads/internal/p/b/f;Ljava/net/Socket;)V

    return-void
.end method

###### Class com.facebook.ads.internal.p.b.f.e (com.facebook.ads.internal.p.b.f$e)
.class final Lcom/facebook/ads/internal/p/b/f$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/p/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/p/b/f;

.field private final b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/p/b/f;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/p/b/f$e;->a:Lcom/facebook/ads/internal/p/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/p/b/f$e;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f$e;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/f$e;->a:Lcom/facebook/ads/internal/p/b/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/p/b/f;->a(Lcom/facebook/ads/internal/p/b/f;)V

    return-void
.end method
