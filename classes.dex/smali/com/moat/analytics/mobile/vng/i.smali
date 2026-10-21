###### Class com.moat.analytics.mobile.vng.i (com.moat.analytics.mobile.vng.i)
.class Lcom/moat/analytics/mobile/vng/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/moat/analytics/mobile/vng/i;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/moat/analytics/mobile/vng/j;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/moat/analytics/mobile/vng/b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/moat/analytics/mobile/vng/i;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/i;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/vng/i;->a:Lcom/moat/analytics/mobile/vng/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->c:Ljava/util/Map;

    return-void
.end method

.method static a()Lcom/moat/analytics/mobile/vng/i;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/i;->a:Lcom/moat/analytics/mobile/vng/i;

    return-object v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/i;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->b:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 9

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->f:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_c
    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    const-string v2, "Starting metadata reporting loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/vng/i$1;

    invoke-direct {v1, p0, p1}, Lcom/moat/analytics/mobile/vng/i$1;-><init>(Lcom/moat/analytics/mobile/vng/i;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_27
    return-void
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/vng/i;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->f:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 9

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->e:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_c
    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    const-string v2, "Starting view update loop"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/vng/i$2;

    invoke-direct {v1, p0, p1}, Lcom/moat/analytics/mobile/vng/i$2;-><init>(Lcom/moat/analytics/mobile/vng/i;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v4

    iget v4, v4, Lcom/moat/analytics/mobile/vng/w;->d:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_2c
    return-void
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/vng/i;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/moat/analytics/mobile/vng/i;)Ljava/util/concurrent/ScheduledFuture;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->e:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/moat/analytics/mobile/vng/b;)V
    .registers 7

    if-eqz p2, :cond_35

    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addActiveTracker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->c:Ljava/util/Map;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->c:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/i;->b(Landroid/content/Context;)V

    :cond_35
    return-void
.end method

.method a(Landroid/content/Context;Lcom/moat/analytics/mobile/vng/j;)V
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->b:Ljava/util/Map;

    if-eqz v0, :cond_10

    if-eqz p2, :cond_10

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->b:Ljava/util/Map;

    const-string v1, ""

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/i;->a(Landroid/content/Context;)V

    :cond_10
    return-void
.end method

.method a(Lcom/moat/analytics/mobile/vng/b;)V
    .registers 6

    if-eqz p1, :cond_28

    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeActiveTracker"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->c:Ljava/util/Map;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return-void
.end method

.method a(Lcom/moat/analytics/mobile/vng/j;)V
    .registers 6

    if-eqz p1, :cond_28

    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeSetupNeededBridge"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->b:Ljava/util/Map;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return-void
.end method

###### Class com.moat.analytics.mobile.vng.i.AnonymousClass1 (com.moat.analytics.mobile.vng.i$1)
.class Lcom/moat/analytics/mobile/vng/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/i;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/moat/analytics/mobile/vng/i;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/i;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/i$1;->b:Lcom/moat/analytics/mobile/vng/i;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/i$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "UPDATE_METADATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/i$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i$1;->b:Lcom/moat/analytics/mobile/vng/i;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/i;->a(Lcom/moat/analytics/mobile/vng/i;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i$1;->b:Lcom/moat/analytics/mobile/vng/i;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/i;->b(Lcom/moat/analytics/mobile/vng/i;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_2a
.end method

###### Class com.moat.analytics.mobile.vng.i.AnonymousClass2 (com.moat.analytics.mobile.vng.i$2)
.class Lcom/moat/analytics/mobile/vng/i$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/i;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/moat/analytics/mobile/vng/i;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/i;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/i$2;->b:Lcom/moat/analytics/mobile/vng/i;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/i$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "UPDATE_VIEW_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/i$2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i$2;->b:Lcom/moat/analytics/mobile/vng/i;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/i;->c(Lcom/moat/analytics/mobile/vng/i;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x3

    const-string v1, "JSUpdateLooper"

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/i$2;->b:Lcom/moat/analytics/mobile/vng/i;

    const-string v3, "No more active trackers"

    invoke-static {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/i$2;->b:Lcom/moat/analytics/mobile/vng/i;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/i;->d(Lcom/moat/analytics/mobile/vng/i;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_34
.end method
