###### Class com.moat.analytics.mobile.vng.w (com.moat.analytics.mobile.vng.w)
.class Lcom/moat/analytics/mobile/vng/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/w$b;,
        Lcom/moat/analytics/mobile/vng/w$e;,
        Lcom/moat/analytics/mobile/vng/w$c;,
        Lcom/moat/analytics/mobile/vng/w$a;,
        Lcom/moat/analytics/mobile/vng/w$d;
    }
.end annotation


# static fields
.field private static g:Lcom/moat/analytics/mobile/vng/w;

.field private static final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/moat/analytics/mobile/vng/w$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:Lcom/moat/analytics/mobile/vng/w$d;

.field volatile b:Z

.field volatile c:Z

.field volatile d:I

.field private e:J

.field private f:J

.field private i:Landroid/os/Handler;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile k:J

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/vng/w;->h:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/moat/analytics/mobile/vng/w;->e:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/moat/analytics/mobile/vng/w;->f:J

    sget-object v0, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/vng/w;->b:Z

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/vng/w;->c:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/vng/w;->d:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/vng/w;->k:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    :try_start_33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->i:Landroid/os/Handler;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_3f

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_3e
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/w;J)J
    .registers 4

    iput-wide p1, p0, Lcom/moat/analytics/mobile/vng/w;->k:J

    return-wide p1
.end method

.method static declared-synchronized a()Lcom/moat/analytics/mobile/vng/w;
    .registers 2

    const-class v1, Lcom/moat/analytics/mobile/vng/w;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/moat/analytics/mobile/vng/w;->g:Lcom/moat/analytics/mobile/vng/w;

    if-nez v0, :cond_e

    new-instance v0, Lcom/moat/analytics/mobile/vng/w;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/w;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/vng/w;->g:Lcom/moat/analytics/mobile/vng/w;

    :cond_e
    sget-object v0, Lcom/moat/analytics/mobile/vng/w;->g:Lcom/moat/analytics/mobile/vng/w;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(J)V
    .registers 6

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x3

    const-string v1, "OnOff"

    const-string v2, "Performing status check."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/w$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/moat/analytics/mobile/vng/w$1;-><init>(Lcom/moat/analytics/mobile/vng/w;J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_a
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/w;)V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/w;->d()V

    return-void
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/vng/w;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/vng/w;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/vng/w;->a(J)V

    return-void
.end method

.method static synthetic c()Ljava/util/Queue;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/w;->h:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/vng/w;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/moat/analytics/mobile/vng/w;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private d()V
    .registers 11

    sget-object v1, Lcom/moat/analytics/mobile/vng/w;->h:Ljava/util/Queue;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/moat/analytics/mobile/vng/w;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/w$c;

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w$c;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0xea60

    cmp-long v0, v6, v8

    if-ltz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :try_start_2f
    sget-object v0, Lcom/moat/analytics/mobile/vng/w;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0xf

    if-lt v0, v2, :cond_45

    const/4 v0, 0x0

    :goto_3a
    const/4 v2, 0x5

    if-ge v0, v2, :cond_45

    sget-object v2, Lcom/moat/analytics/mobile/vng/w;->h:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_2f .. :try_end_46} :catchall_2c

    return-void
.end method

.method static synthetic e(Lcom/moat/analytics/mobile/vng/w;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/moat/analytics/mobile/vng/w$2;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/vng/w$2;-><init>(Lcom/moat/analytics/mobile/vng/w;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/w;->i:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a
.end method

.method static synthetic f(Lcom/moat/analytics/mobile/vng/w;)J
    .registers 3

    iget-wide v0, p0, Lcom/moat/analytics/mobile/vng/w;->f:J

    return-wide v0
.end method


# virtual methods
.method a(Lcom/moat/analytics/mobile/vng/w$b;)V
    .registers 6

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v0, v1, :cond_a

    invoke-interface {p1}, Lcom/moat/analytics/mobile/vng/w$b;->b()V

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/w;->d()V

    sget-object v0, Lcom/moat/analytics/mobile/vng/w;->h:Ljava/util/Queue;

    new-instance v1, Lcom/moat/analytics/mobile/vng/w$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/moat/analytics/mobile/vng/w$c;-><init>(Lcom/moat/analytics/mobile/vng/w;Ljava/lang/Long;Lcom/moat/analytics/mobile/vng/w$b;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/w;->e()V

    goto :goto_9
.end method

.method b()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/moat/analytics/mobile/vng/w;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/moat/analytics/mobile/vng/w;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/moat/analytics/mobile/vng/w;->a(J)V

    :cond_12
    return-void
.end method

###### Class com.moat.analytics.mobile.vng.w.AnonymousClass1 (com.moat.analytics.mobile.vng.w$1)
.class Lcom/moat/analytics/mobile/vng/w$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/w;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/moat/analytics/mobile/vng/w;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/w;J)V
    .registers 4

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iput-wide p2, p0, Lcom/moat/analytics/mobile/vng/w$1;->a:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const-string v0, "VNG"

    new-instance v0, Lcom/moat/analytics/mobile/vng/w$a;

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    const-string v2, "VNG"

    new-instance v4, Lcom/moat/analytics/mobile/vng/w$1$1;

    invoke-direct {v4, p0}, Lcom/moat/analytics/mobile/vng/w$1$1;-><init>(Lcom/moat/analytics/mobile/vng/w$1;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/moat/analytics/mobile/vng/w$a;-><init>(Lcom/moat/analytics/mobile/vng/w;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/vng/w$e;Lcom/moat/analytics/mobile/vng/w$1;)V

    iget-wide v4, p0, Lcom/moat/analytics/mobile/vng/w$1;->a:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

###### Class com.moat.analytics.mobile.vng.w.AnonymousClass1.C01661 (com.moat.analytics.mobile.vng.w$1$1)
.class Lcom/moat/analytics/mobile/vng/w$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/w$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/w$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/w$1;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/w$1;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/moat/analytics/mobile/vng/l;)V
    .registers 7

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->c()Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/k;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/vng/k;->a:Z

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/vng/l;->d()Lcom/moat/analytics/mobile/vng/w$d;

    move-result-object v3

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v3, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v2, v3, :cond_82

    if-eqz v0, :cond_82

    :cond_25
    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/vng/l;->d()Lcom/moat/analytics/mobile/vng/w$d;

    move-result-object v3

    iput-object v3, v2, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iget-object v2, v2, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v3, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v2, v3, :cond_43

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    sget-object v2, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    iput-object v2, v0, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    :cond_43
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v2, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v0, v2, :cond_55

    const/4 v0, 0x3

    const-string v2, "OnOff"

    const-string v3, "Moat enabled - Version 2.2.0"

    invoke-static {v0, v2, p0, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_55
    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->c()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/w$c;

    iget-object v3, p0, Lcom/moat/analytics/mobile/vng/w$1$1;->a:Lcom/moat/analytics/mobile/vng/w$1;

    iget-object v3, v3, Lcom/moat/analytics/mobile/vng/w$1;->b:Lcom/moat/analytics/mobile/vng/w;

    iget-object v3, v3, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v4, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v3, v4, :cond_7c

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w$c;->b:Lcom/moat/analytics/mobile/vng/w$b;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/vng/w$b;->b()V

    goto :goto_5d

    :catchall_79
    move-exception v0

    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_5 .. :try_end_7b} :catchall_79

    throw v0

    :cond_7c
    :try_start_7c
    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w$c;->b:Lcom/moat/analytics/mobile/vng/w$b;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/vng/w$b;->c()V

    goto :goto_5d

    :cond_82
    :goto_82
    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->c()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_94

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->c()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_82

    :cond_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_7c .. :try_end_95} :catchall_79

    return-void
.end method

###### Class com.moat.analytics.mobile.vng.w.AnonymousClass2 (com.moat.analytics.mobile.vng.w$2)
.class Lcom/moat/analytics/mobile/vng/w$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/w;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/w;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/w;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/w$2;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->c()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$2;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/w;->a(Lcom/moat/analytics/mobile/vng/w;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$2;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/w;->b(Lcom/moat/analytics/mobile/vng/w;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$2;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/w;->c(Lcom/moat/analytics/mobile/vng/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$2;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/w;->b(Lcom/moat/analytics/mobile/vng/w;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_1b

    :catch_31
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_1b
.end method

###### Class com.moat.analytics.mobile.vng.w.a (com.moat.analytics.mobile.vng.w$a)
.class Lcom/moat/analytics/mobile/vng/w$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/w;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/moat/analytics/mobile/vng/w$e;


# direct methods
.method private constructor <init>(Lcom/moat/analytics/mobile/vng/w;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/vng/w$e;)V
    .registers 9

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/w$a;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/moat/analytics/mobile/vng/w$a;->d:Lcom/moat/analytics/mobile/vng/w$e;

    iput-object p3, p0, Lcom/moat/analytics/mobile/vng/w$a;->b:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://z.moatads.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3f2ae9c1894282b5e0222f0d06bbf457191f816f"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/status.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/w$a;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/vng/w;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/vng/w$e;Lcom/moat/analytics/mobile/vng/w$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/moat/analytics/mobile/vng/w$a;-><init>(Lcom/moat/analytics/mobile/vng/w;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/vng/w$e;)V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/vng/w$a;)Lcom/moat/analytics/mobile/vng/w$e;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$a;->d:Lcom/moat/analytics/mobile/vng/w$e;

    return-object v0
.end method

.method private a()V
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/w$a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/vng/l;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/vng/l;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/w$a;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/vng/l;->a()Z

    move-result v3

    iput-boolean v3, v2, Lcom/moat/analytics/mobile/vng/w;->b:Z

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/w$a;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/vng/l;->b()Z

    move-result v3

    iput-boolean v3, v2, Lcom/moat/analytics/mobile/vng/w;->c:Z

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/w$a;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/vng/l;->c()I

    move-result v3

    iput v3, v2, Lcom/moat/analytics/mobile/vng/w;->d:I

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/moat/analytics/mobile/vng/w$a$1;

    invoke-direct {v2, p0, v1}, Lcom/moat/analytics/mobile/vng/w$a$1;-><init>(Lcom/moat/analytics/mobile/vng/w$a;Lcom/moat/analytics/mobile/vng/l;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/w$a;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/moat/analytics/mobile/vng/w;->a(Lcom/moat/analytics/mobile/vng/w;J)J

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/w$a;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/w;->d(Lcom/moat/analytics/mobile/vng/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$a;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/w;->e(Lcom/moat/analytics/mobile/vng/w;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_61

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$a;->a:Lcom/moat/analytics/mobile/vng/w;

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/w$a;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/w;->f(Lcom/moat/analytics/mobile/vng/w;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/moat/analytics/mobile/vng/w;->b(Lcom/moat/analytics/mobile/vng/w;J)V

    :cond_61
    :goto_61
    return-void

    :cond_62
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$a;->a:Lcom/moat/analytics/mobile/vng/w;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/w;->e(Lcom/moat/analytics/mobile/vng/w;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_61
.end method

.method private b()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/w$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2.2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/q;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    :try_start_2d
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/a/b/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_34

    :goto_33
    return-object v0

    :catch_34
    move-exception v0

    const/4 v0, 0x0

    goto :goto_33
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/w$a;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_12

    :goto_3
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_11
    return-void

    :catch_12
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_3
.end method

###### Class com.moat.analytics.mobile.vng.w.a.AnonymousClass1 (com.moat.analytics.mobile.vng.w$a$1)
.class Lcom/moat/analytics/mobile/vng/w$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/w$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/vng/l;

.field final synthetic b:Lcom/moat/analytics/mobile/vng/w$a;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/w$a;Lcom/moat/analytics/mobile/vng/l;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/w$a$1;->b:Lcom/moat/analytics/mobile/vng/w$a;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/w$a$1;->a:Lcom/moat/analytics/mobile/vng/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/w$a$1;->b:Lcom/moat/analytics/mobile/vng/w$a;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/w$a;->a(Lcom/moat/analytics/mobile/vng/w$a;)Lcom/moat/analytics/mobile/vng/w$e;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/w$a$1;->a:Lcom/moat/analytics/mobile/vng/l;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/vng/w$e;->a(Lcom/moat/analytics/mobile/vng/l;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_b
.end method

###### Class com.moat.analytics.mobile.vng.w.b (com.moat.analytics.mobile.vng.w$b)
.class interface abstract Lcom/moat/analytics/mobile/vng/w$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()V
.end method

###### Class com.moat.analytics.mobile.vng.w.c (com.moat.analytics.mobile.vng.w$c)
.class Lcom/moat/analytics/mobile/vng/w$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/Long;

.field final b:Lcom/moat/analytics/mobile/vng/w$b;

.field final synthetic c:Lcom/moat/analytics/mobile/vng/w;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/w;Ljava/lang/Long;Lcom/moat/analytics/mobile/vng/w$b;)V
    .registers 4

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/w$c;->c:Lcom/moat/analytics/mobile/vng/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/w$c;->a:Ljava/lang/Long;

    iput-object p3, p0, Lcom/moat/analytics/mobile/vng/w$c;->b:Lcom/moat/analytics/mobile/vng/w$b;

    return-void
.end method

###### Class com.moat.analytics.mobile.vng.w.d (com.moat.analytics.mobile.vng.w$d)
.class final enum Lcom/moat/analytics/mobile/vng/w$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moat/analytics/mobile/vng/w$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/vng/w$d;

.field public static final enum b:Lcom/moat/analytics/mobile/vng/w$d;

.field private static final synthetic c:[Lcom/moat/analytics/mobile/vng/w$d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/moat/analytics/mobile/vng/w$d;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/w$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    new-instance v0, Lcom/moat/analytics/mobile/vng/w$d;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, Lcom/moat/analytics/mobile/vng/w$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/moat/analytics/mobile/vng/w$d;->c:[Lcom/moat/analytics/mobile/vng/w$d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/w$d;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/vng/w$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/w$d;

    return-object v0
.end method

.method public static values()[Lcom/moat/analytics/mobile/vng/w$d;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/w$d;->c:[Lcom/moat/analytics/mobile/vng/w$d;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/vng/w$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/vng/w$d;

    return-object v0
.end method

###### Class com.moat.analytics.mobile.vng.w.e (com.moat.analytics.mobile.vng.w$e)
.class interface abstract Lcom/moat/analytics/mobile/vng/w$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "e"
.end annotation


# virtual methods
.method public abstract a(Lcom/moat/analytics/mobile/vng/l;)V
.end method
