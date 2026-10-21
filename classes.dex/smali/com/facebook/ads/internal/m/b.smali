###### Class com.facebook.ads.internal.m.b (com.facebook.ads.internal.m.b)
.class public Lcom/facebook/ads/internal/m/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/m/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/facebook/ads/internal/m/b$a;

.field private final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final e:Landroid/net/ConnectivityManager;

.field private final f:Lcom/facebook/ads/internal/p/a/a;

.field private final g:Landroid/os/Handler;

.field private final h:J

.field private final i:J

.field private final j:Ljava/lang/Runnable;

.field private volatile k:Z

.field private l:I

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/m/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/m/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/o/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/m/b;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/b$a;)V
    .registers 11

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/m/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/m/b$1;-><init>(Lcom/facebook/ads/internal/m/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/m/b;->j:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/facebook/ads/internal/m/b;->c:Lcom/facebook/ads/internal/m/b$a;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/m/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/facebook/ads/internal/m/b;->e:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lcom/facebook/ads/internal/q/c/d;->b(Landroid/content/Context;)Lcom/facebook/ads/internal/p/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/m/b;->f:Lcom/facebook/ads/internal/p/a/a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/m/b;->g:Landroid/os/Handler;

    invoke-static {p1}, Lcom/facebook/ads/internal/l/a;->h(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/m/b;->h:J

    invoke-static {p1}, Lcom/facebook/ads/internal/l/a;->i(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/m/b;->i:J

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/m/b;)Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private a(J)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/m/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/m/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/m/b;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/m/b;)I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/internal/m/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/internal/m/b;->l:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/m/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/internal/m/b;->m:J

    return-wide v0
.end method

.method private c()V
    .registers 5

    iget v0, p0, Lcom/facebook/ads/internal/m/b;->l:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_c

    invoke-direct {p0}, Lcom/facebook/ads/internal/m/b;->e()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/m/b;->b()V

    :goto_b
    return-void

    :cond_c
    iget v0, p0, Lcom/facebook/ads/internal/m/b;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/facebook/ads/internal/m/b;->m:J

    :goto_15
    invoke-virtual {p0}, Lcom/facebook/ads/internal/m/b;->a()V

    goto :goto_b

    :cond_19
    iget-wide v0, p0, Lcom/facebook/ads/internal/m/b;->m:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/internal/m/b;->m:J

    goto :goto_15
.end method

.method private d()V
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/m/b;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_e
    iget-wide v0, p0, Lcom/facebook/ads/internal/m/b;->i:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/m/b;->a(J)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/internal/m/b;->c:Lcom/facebook/ads/internal/m/b$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/m/b$a;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_25

    invoke-direct {p0}, Lcom/facebook/ads/internal/m/b;->e()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_13

    :catch_20
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/ads/internal/m/b;->c()V

    goto :goto_13

    :cond_25
    :try_start_25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "attempt"

    iget v3, p0, Lcom/facebook/ads/internal/m/b;->l:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/facebook/ads/internal/p/a/p;

    invoke-direct {v0}, Lcom/facebook/ads/internal/p/a/p;-><init>()V

    const-string v2, "payload"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/internal/p/a/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/m/b;->f:Lcom/facebook/ads/internal/p/a/a;

    sget-object v3, Lcom/facebook/ads/internal/m/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/facebook/ads/internal/p/a/a;->b(Ljava/lang/String;Lcom/facebook/ads/internal/p/a/p;)Lcom/facebook/ads/internal/p/a/n;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-virtual {v2}, Lcom/facebook/ads/internal/p/a/n;->e()Ljava/lang/String;

    move-result-object v0

    :goto_56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_75

    const-string v0, "events"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b;->c:Lcom/facebook/ads/internal/m/b$a;

    const-string v2, "events"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/m/b$a;->b(Lorg/json/JSONArray;)V

    :cond_6f
    invoke-direct {p0}, Lcom/facebook/ads/internal/m/b;->c()V

    goto :goto_13

    :cond_73
    const/4 v0, 0x0

    goto :goto_56

    :cond_75
    invoke-virtual {v2}, Lcom/facebook/ads/internal/p/a/n;->a()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_94

    const-string v0, "events"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b;->c:Lcom/facebook/ads/internal/m/b$a;

    const-string v2, "events"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/m/b$a;->b(Lorg/json/JSONArray;)V

    :cond_90
    invoke-direct {p0}, Lcom/facebook/ads/internal/m/b;->c()V

    goto :goto_13

    :cond_94
    iget-object v1, p0, Lcom/facebook/ads/internal/m/b;->c:Lcom/facebook/ads/internal/m/b$a;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/ads/internal/m/b$a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-direct {p0}, Lcom/facebook/ads/internal/m/b;->c()V

    goto/16 :goto_13

    :cond_a6
    iget-object v0, p0, Lcom/facebook/ads/internal/m/b;->c:Lcom/facebook/ads/internal/m/b$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/m/b$a;->c()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-direct {p0}, Lcom/facebook/ads/internal/m/b;->c()V

    goto/16 :goto_13

    :cond_b3
    invoke-direct {p0}, Lcom/facebook/ads/internal/m/b;->e()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_b6} :catch_20

    goto/16 :goto_13
.end method

.method static synthetic d(Lcom/facebook/ads/internal/m/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/m/b;->d()V

    return-void
.end method

.method private e()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/m/b;->l:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/internal/m/b;->m:J

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b;->c:Lcom/facebook/ads/internal/m/b$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/m/b$a;->b()V

    :cond_18
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/m/b;->k:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/m/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/facebook/ads/internal/m/b;->h:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/m/b;->a(J)V

    return-void
.end method

.method b()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/m/b;->k:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/m/b;->k:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/m/b;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/facebook/ads/internal/m/b;->i:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/m/b;->a(J)V

    goto :goto_4
.end method

###### Class com.facebook.ads.internal.m.b.AnonymousClass1 (com.facebook.ads.internal.m.b$1)
.class Lcom/facebook/ads/internal/m/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/m/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/m/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/m/b$1;->a:Lcom/facebook/ads/internal/m/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b$1;->a:Lcom/facebook/ads/internal/m/b;

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/m/b;->a(Lcom/facebook/ads/internal/m/b;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b$1;->a:Lcom/facebook/ads/internal/m/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/b;->a(Lcom/facebook/ads/internal/m/b;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Lcom/facebook/ads/internal/m/b$1$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/m/b$1$1;-><init>(Lcom/facebook/ads/internal/m/b$1;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/m/b$1;->a:Lcom/facebook/ads/internal/m/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/m/b;->a(Lcom/facebook/ads/internal/m/b;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/m/b$1$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_26
    return-void
.end method

###### Class com.facebook.ads.internal.m.b.AnonymousClass1.AsyncTaskC00151 (com.facebook.ads.internal.m.b$1$1)
.class Lcom/facebook/ads/internal/m/b$1$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/m/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/m/b$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/m/b$1;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/m/b$1$1;->a:Lcom/facebook/ads/internal/m/b$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b$1$1;->a:Lcom/facebook/ads/internal/m/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/m/b$1;->a:Lcom/facebook/ads/internal/m/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/b;->b(Lcom/facebook/ads/internal/m/b;)I

    iget-object v0, p0, Lcom/facebook/ads/internal/m/b$1$1;->a:Lcom/facebook/ads/internal/m/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/m/b$1;->a:Lcom/facebook/ads/internal/m/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/b;->c(Lcom/facebook/ads/internal/m/b;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    :try_start_15
    iget-object v0, p0, Lcom/facebook/ads/internal/m/b$1$1;->a:Lcom/facebook/ads/internal/m/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/m/b$1;->a:Lcom/facebook/ads/internal/m/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/b;->c(Lcom/facebook/ads/internal/m/b;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_20} :catch_29

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/facebook/ads/internal/m/b$1$1;->a:Lcom/facebook/ads/internal/m/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/m/b$1;->a:Lcom/facebook/ads/internal/m/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/m/b;->d(Lcom/facebook/ads/internal/m/b;)V

    const/4 v0, 0x0

    return-object v0

    :catch_29
    move-exception v0

    goto :goto_20
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/m/b$1$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.internal.m.b.a (com.facebook.ads.internal.m.b$a)
.class interface abstract Lcom/facebook/ads/internal/m/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a()Lorg/json/JSONObject;
.end method

.method public abstract a(Lorg/json/JSONArray;)Z
.end method

.method public abstract b()V
.end method

.method public abstract b(Lorg/json/JSONArray;)V
.end method

.method public abstract c()Z
.end method
