###### Class com.facebook.ads.internal.p.b.k (com.facebook.ads.internal.p.b.k)
.class Lcom/facebook/ads/internal/p/b/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/p/b/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/p/b/n;

.field private final b:Lcom/facebook/ads/internal/p/b/a;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile f:Ljava/lang/Thread;

.field private volatile g:Z

.field private volatile h:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/p/b/n;Lcom/facebook/ads/internal/p/b/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/p/b/k;->h:I

    invoke-static {p1}, Lcom/facebook/ads/internal/p/b/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/p/b/n;

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->a:Lcom/facebook/ads/internal/p/b/n;

    invoke-static {p2}, Lcom/facebook/ads/internal/p/b/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/p/b/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->b:Lcom/facebook/ads/internal/p/b/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/p/b/k;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/k;->e()V

    return-void
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2e

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " times"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    return-void
.end method

.method private b(JJ)V
    .registers 8

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/p/b/k;->a(JJ)V

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/k;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_47

    const/4 v0, 0x1

    :goto_10
    iget-boolean v1, p0, Lcom/facebook/ads/internal/p/b/k;->g:Z

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/k;->b:Lcom/facebook/ads/internal/p/b/a;

    invoke-interface {v1}, Lcom/facebook/ads/internal/p/b/a;->d()Z

    move-result v1

    if-nez v1, :cond_45

    if-nez v0, :cond_45

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/ads/internal/p/b/k$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/ads/internal/p/b/k$a;-><init>(Lcom/facebook/ads/internal/p/b/k;Lcom/facebook/ads/internal/p/b/k$1;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source reader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/k;->a:Lcom/facebook/ads/internal/p/b/n;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_49

    :cond_45
    monitor-exit p0

    return-void

    :cond_47
    const/4 v0, 0x0

    goto :goto_10

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/k;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->c:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_a} :catch_c
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    :try_start_a
    monitor-exit v1

    return-void

    :catch_c
    move-exception v0

    new-instance v2, Lcom/facebook/ads/internal/p/b/l;

    const-string v3, "Waiting source data is interrupted!"

    invoke-direct {v2, v3, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v0
.end method

.method private e()V
    .registers 9

    const/4 v3, -0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->b:Lcom/facebook/ads/internal/p/b/a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/p/b/a;->a()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->a:Lcom/facebook/ads/internal/p/b/n;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/p/b/n;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->a:Lcom/facebook/ads/internal/p/b/n;

    invoke-interface {v0}, Lcom/facebook/ads/internal/p/b/n;->a()I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_6d
    .catchall {:try_start_2 .. :try_end_12} :catchall_6a

    move-result v2

    const/16 v0, 0x2000

    :try_start_15
    new-array v0, v0, [B

    :goto_17
    iget-object v4, p0, Lcom/facebook/ads/internal/p/b/k;->a:Lcom/facebook/ads/internal/p/b/n;

    invoke-interface {v4, v0}, Lcom/facebook/ads/internal/p/b/n;->a([B)I

    move-result v4

    if-eq v4, v3, :cond_5e

    iget-object v5, p0, Lcom/facebook/ads/internal/p/b/k;->d:Ljava/lang/Object;

    monitor-enter v5
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_22} :catch_3f
    .catchall {:try_start_15 .. :try_end_22} :catchall_54

    :try_start_22
    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/k;->g()Z

    move-result v6

    if-eqz v6, :cond_32

    monitor-exit v5
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_51

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/k;->h()V

    int-to-long v0, v1

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/ads/internal/p/b/k;->b(JJ)V

    :goto_31
    return-void

    :cond_32
    :try_start_32
    iget-object v6, p0, Lcom/facebook/ads/internal/p/b/k;->b:Lcom/facebook/ads/internal/p/b/a;

    invoke-interface {v6, v0, v4}, Lcom/facebook/ads/internal/p/b/a;->a([BI)V

    monitor-exit v5
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_51

    add-int/2addr v1, v4

    int-to-long v4, v1

    int-to-long v6, v2

    :try_start_3b
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/facebook/ads/internal/p/b/k;->b(JJ)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_54

    goto :goto_17

    :catch_3f
    move-exception v0

    :goto_40
    :try_start_40
    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/p/b/k;->a(Ljava/lang/Throwable;)V
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_54

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/k;->h()V

    int-to-long v0, v1

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/ads/internal/p/b/k;->b(JJ)V

    goto :goto_31

    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v0
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_54} :catch_3f
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v0

    :goto_55
    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/k;->h()V

    int-to-long v4, v1

    int-to-long v2, v2

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/facebook/ads/internal/p/b/k;->b(JJ)V

    throw v0

    :cond_5e
    :try_start_5e
    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/k;->f()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_3f
    .catchall {:try_start_5e .. :try_end_61} :catchall_54

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/k;->h()V

    int-to-long v0, v1

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/ads/internal/p/b/k;->b(JJ)V

    goto :goto_31

    :catchall_6a
    move-exception v0

    move v2, v3

    goto :goto_55

    :catch_6d
    move-exception v0

    move v2, v3

    goto :goto_40
.end method

.method private f()V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/k;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/k;->g()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->b:Lcom/facebook/ads/internal/p/b/a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/p/b/a;->a()I

    move-result v0

    iget-object v2, p0, Lcom/facebook/ads/internal/p/b/k;->a:Lcom/facebook/ads/internal/p/b/n;

    invoke-interface {v2}, Lcom/facebook/ads/internal/p/b/n;->a()I

    move-result v2

    if-ne v0, v2, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->b:Lcom/facebook/ads/internal/p/b/a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/p/b/a;->c()V

    :cond_1c
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method private g()Z
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/facebook/ads/internal/p/b/k;->g:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private h()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->a:Lcom/facebook/ads/internal/p/b/n;

    invoke-interface {v0}, Lcom/facebook/ads/internal/p/b/n;->b()V
    :try_end_5
    .catch Lcom/facebook/ads/internal/p/b/l; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    new-instance v1, Lcom/facebook/ads/internal/p/b/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/k;->a:Lcom/facebook/ads/internal/p/b/n;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/p/b/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/p/b/k;->a(Ljava/lang/Throwable;)V

    goto :goto_5
.end method


# virtual methods
.method public a([BJI)I
    .registers 11

    const/16 v4, 0x64

    invoke-static {p1, p2, p3, p4}, Lcom/facebook/ads/internal/p/b/m;->a([BJI)V

    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->b:Lcom/facebook/ads/internal/p/b/a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/p/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->b:Lcom/facebook/ads/internal/p/b/a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/p/b/a;->a()I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p4

    add-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_28

    iget-boolean v0, p0, Lcom/facebook/ads/internal/p/b/k;->g:Z

    if-nez v0, :cond_28

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/k;->c()V

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/k;->d()V

    invoke-direct {p0}, Lcom/facebook/ads/internal/p/b/k;->b()V

    goto :goto_5

    :cond_28
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->b:Lcom/facebook/ads/internal/p/b/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/p/b/a;->a([BJI)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/k;->b:Lcom/facebook/ads/internal/p/b/a;

    invoke-interface {v1}, Lcom/facebook/ads/internal/p/b/a;->d()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget v1, p0, Lcom/facebook/ads/internal/p/b/k;->h:I

    if-eq v1, v4, :cond_3f

    iput v4, p0, Lcom/facebook/ads/internal/p/b/k;->h:I

    invoke-virtual {p0, v4}, Lcom/facebook/ads/internal/p/b/k;->a(I)V

    :cond_3f
    return v0
.end method

.method public a()V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/internal/p/b/k;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string v0, "ProxyCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutdown proxy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/p/b/k;->a:Lcom/facebook/ads/internal/p/b/n;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_35

    const/4 v0, 0x1

    :try_start_1e
    iput-boolean v0, p0, Lcom/facebook/ads/internal/p/b/k;->g:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_29
    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k;->b:Lcom/facebook/ads/internal/p/b/a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/p/b/a;->b()V
    :try_end_2e
    .catch Lcom/facebook/ads/internal/p/b/l; {:try_start_1e .. :try_end_2e} :catch_30
    .catchall {:try_start_1e .. :try_end_2e} :catchall_35

    :goto_2e
    :try_start_2e
    monitor-exit v1

    return-void

    :catch_30
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/p/b/k;->a(Ljava/lang/Throwable;)V

    goto :goto_2e

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_35

    throw v0
.end method

.method protected a(I)V
    .registers 2

    return-void
.end method

.method protected a(JJ)V
    .registers 14

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmp-long v0, p3, v6

    if-nez v0, :cond_20

    move v0, v1

    :goto_9
    if-eqz v0, :cond_22

    const/16 v0, 0x64

    :goto_d
    iget v3, p0, Lcom/facebook/ads/internal/p/b/k;->h:I

    if-eq v0, v3, :cond_28

    move v3, v1

    :goto_12
    cmp-long v4, p3, v6

    if-ltz v4, :cond_2a

    :goto_16
    if-eqz v1, :cond_1d

    if-eqz v3, :cond_1d

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/p/b/k;->a(I)V

    :cond_1d
    iput v0, p0, Lcom/facebook/ads/internal/p/b/k;->h:I

    return-void

    :cond_20
    move v0, v2

    goto :goto_9

    :cond_22
    const-wide/16 v4, 0x64

    mul-long/2addr v4, p1

    div-long/2addr v4, p3

    long-to-int v0, v4

    goto :goto_d

    :cond_28
    move v3, v2

    goto :goto_12

    :cond_2a
    move v1, v2

    goto :goto_16
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .registers 4

    instance-of v0, p1, Lcom/facebook/ads/internal/p/b/i;

    if-eqz v0, :cond_c

    const-string v0, "ProxyCache"

    const-string v1, "ProxyCache is interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    const-string v0, "ProxyCache"

    const-string v1, "ProxyCache error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

###### Class com.facebook.ads.internal.p.b.k.AnonymousClass1 (com.facebook.ads.internal.p.b.k$1)
.class synthetic Lcom/facebook/ads/internal/p/b/k$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/p/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.ads.internal.p.b.k.a (com.facebook.ads.internal.p.b.k$a)
.class Lcom/facebook/ads/internal/p/b/k$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/p/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/p/b/k;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/p/b/k;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/p/b/k$a;->a:Lcom/facebook/ads/internal/p/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/p/b/k;Lcom/facebook/ads/internal/p/b/k$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/p/b/k$a;-><init>(Lcom/facebook/ads/internal/p/b/k;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/p/b/k$a;->a:Lcom/facebook/ads/internal/p/b/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/p/b/k;->a(Lcom/facebook/ads/internal/p/b/k;)V

    return-void
.end method
