###### Class rx.internal.schedulers.CachedThreadScheduler (rx.internal.schedulers.CachedThreadScheduler)
.class public final Lrx/internal/schedulers/CachedThreadScheduler;
.super Lrx/Scheduler;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lrx/internal/schedulers/SchedulerLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;,
        Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;,
        Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;
    }
.end annotation


# static fields
.field private static final KEEP_ALIVE_TIME:J = 0x3cL

.field private static final KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

.field static final NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

.field static final SHUTDOWN_THREADWORKER:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 39
    new-instance v0, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    sget-object v1, Lrx/internal/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->SHUTDOWN_THREADWORKER:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 40
    sget-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->SHUTDOWN_THREADWORKER:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->unsubscribe()V

    .line 42
    new-instance v0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v4, v2, v3, v4}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 43
    sget-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->shutdown()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 144
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 145
    iput-object p1, p0, Lrx/internal/schedulers/CachedThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    .line 147
    invoke-virtual {p0}, Lrx/internal/schedulers/CachedThreadScheduler;->start()V

    .line 148
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .prologue
    .line 174
    new-instance v1, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;

    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {v1, v0}, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;-><init>(Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;)V

    return-object v1
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 161
    :cond_0
    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 162
    .local v0, "curr":Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;
    sget-object v1, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    if-ne v0, v1, :cond_d

    .line 167
    :goto_c
    return-void

    .line 165
    :cond_d
    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->shutdown()V

    goto :goto_c
.end method

.method public start()V
    .registers 6

    .prologue
    .line 152
    new-instance v0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v2, 0x3c

    sget-object v4, Lrx/internal/schedulers/CachedThreadScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V

    .line 154
    .local v0, "update":Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;
    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/CachedThreadScheduler;->NONE:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 155
    invoke-virtual {v0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->shutdown()V

    .line 157
    :cond_18
    return-void
.end method

###### Class rx.internal.schedulers.CachedThreadScheduler.CachedWorkerPool (rx.internal.schedulers.CachedThreadScheduler$CachedWorkerPool)
.class final Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CachedWorkerPool"
.end annotation


# instance fields
.field private final allWorkers:Lrx/subscriptions/CompositeSubscription;

.field private final evictorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final evictorTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveTime:J

.field private final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "keepAliveTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 56
    if-eqz p4, :cond_40

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    :goto_b
    iput-wide v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    .line 57
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 58
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v7, 0x0

    .line 62
    .local v7, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p4, :cond_3b

    .line 63
    const/4 v1, 0x1

    new-instance v2, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$1;

    invoke-direct {v2, p0, p1}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$1;-><init>(Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v1, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lrx/internal/schedulers/NewThreadWorker;->tryEnableCancelPolicy(Ljava/util/concurrent/ScheduledExecutorService;)Z

    .line 71
    new-instance v1, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$2;

    invoke-direct {v1, p0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$2;-><init>(Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;)V

    iget-wide v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    iget-wide v4, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 80
    :cond_3b
    iput-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 81
    iput-object v7, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    .line 82
    return-void

    .line 56
    .end local v0    # "evictor":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v7    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_40
    const-wide/16 v2, 0x0

    goto :goto_b
.end method


# virtual methods
.method evictExpiredWorkers()V
    .registers 7

    .prologue
    .line 109
    iget-object v4, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    .line 110
    invoke-virtual {p0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    .line 112
    .local v0, "currentTimestamp":J
    iget-object v4, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 113
    .local v3, "threadWorker":Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    invoke-virtual {v3}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->getExpirationTime()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_34

    .line 114
    iget-object v4, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 115
    iget-object v4, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v4, v3}, Lrx/subscriptions/CompositeSubscription;->remove(Lrx/Subscription;)V

    goto :goto_12

    .line 124
    .end local v0    # "currentTimestamp":J
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "threadWorker":Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    :cond_34
    return-void
.end method

.method get()Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    .registers 4

    .prologue
    .line 85
    iget-object v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 86
    sget-object v0, Lrx/internal/schedulers/CachedThreadScheduler;->SHUTDOWN_THREADWORKER:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 98
    :goto_a
    return-object v0

    .line 88
    :cond_b
    iget-object v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 89
    iget-object v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 90
    .local v0, "threadWorker":Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    if-eqz v0, :cond_b

    goto :goto_a

    .line 96
    .end local v0    # "threadWorker":Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    :cond_1e
    new-instance v1, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    iget-object v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v1, v2}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 97
    .local v1, "w":Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
    iget-object v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    move-object v0, v1

    .line 98
    goto :goto_a
.end method

.method now()J
    .registers 3

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method release(Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;)V
    .registers 6
    .param p1, "threadWorker"    # Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    .prologue
    .line 103
    invoke-virtual {p0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->keepAliveTime:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->setExpirationTime(J)V

    .line 105
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->expiringWorkerQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method shutdown()V
    .registers 3

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_a

    .line 133
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 135
    :cond_a
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_13

    .line 136
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_19

    .line 139
    :cond_13
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 141
    return-void

    .line 139
    :catchall_19
    move-exception v0

    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->allWorkers:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    throw v0
.end method

###### Class rx.internal.schedulers.CachedThreadScheduler.CachedWorkerPool.AnonymousClass1 (rx.internal.schedulers.CachedThreadScheduler$CachedWorkerPool$1)
.class Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$1;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

.field final synthetic val$threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;Ljava/util/concurrent/ThreadFactory;)V
    .registers 3

    .prologue
    .line 63
    iput-object p1, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$1;->this$0:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    iput-object p2, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 65
    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 66
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Evictor)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 67
    return-object v0
.end method

###### Class rx.internal.schedulers.CachedThreadScheduler.CachedWorkerPool.AnonymousClass2 (rx.internal.schedulers.CachedThreadScheduler$CachedWorkerPool$2)
.class Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$2;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$2;->this$0:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool$2;->this$0:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v0}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictExpiredWorkers()V

    .line 76
    return-void
.end method

###### Class rx.internal.schedulers.CachedThreadScheduler.EventLoopWorker (rx.internal.schedulers.CachedThreadScheduler$EventLoopWorker)
.class final Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;
.super Lrx/Scheduler$Worker;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventLoopWorker"
.end annotation


# instance fields
.field private final innerSubscription:Lrx/subscriptions/CompositeSubscription;

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pool:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

.field private final threadWorker:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;)V
    .registers 3
    .param p1, "pool"    # Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .prologue
    .line 183
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 178
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 184
    iput-object p1, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->pool:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    invoke-virtual {p1}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->get()Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    .line 187
    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->pool:Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;

    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/CachedThreadScheduler$CachedWorkerPool;->release(Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;)V

    .line 203
    return-void
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 5
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 212
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 9
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 217
    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 219
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 233
    :goto_c
    return-object v0

    .line 222
    :cond_d
    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    new-instance v2, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker$1;

    invoke-direct {v2, p0, p1}, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker$1;-><init>(Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;Lrx/functions/Action0;)V

    invoke-virtual {v1, v2, p2, p3, p4}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    .line 231
    .local v0, "s":Lrx/internal/schedulers/ScheduledAction;
    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 232
    iget-object v1, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Lrx/subscriptions/CompositeSubscription;)V

    goto :goto_c
.end method

.method public unsubscribe()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 195
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->threadWorker:Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;

    invoke-virtual {v0, p0}, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 197
    :cond_f
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->innerSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 198
    return-void
.end method

###### Class rx.internal.schedulers.CachedThreadScheduler.EventLoopWorker.AnonymousClass1 (rx.internal.schedulers.CachedThreadScheduler$EventLoopWorker$1)
.class Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker$1;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;

.field final synthetic val$action:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;Lrx/functions/Action0;)V
    .registers 3

    .prologue
    .line 222
    iput-object p1, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker$1;->this$0:Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;

    iput-object p2, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker$1;->val$action:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker$1;->this$0:Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;

    invoke-virtual {v0}, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 229
    :goto_8
    return-void

    .line 228
    :cond_9
    iget-object v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$EventLoopWorker$1;->val$action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    goto :goto_8
.end method

###### Class rx.internal.schedulers.CachedThreadScheduler.ThreadWorker (rx.internal.schedulers.CachedThreadScheduler$ThreadWorker)
.class final Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;
.super Lrx/internal/schedulers/NewThreadWorker;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/CachedThreadScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadWorker"
.end annotation


# instance fields
.field private expirationTime:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lrx/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 242
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    .line 243
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .registers 3

    .prologue
    .line 246
    iget-wide v0, p0, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    return-wide v0
.end method

.method public setExpirationTime(J)V
    .registers 4
    .param p1, "expirationTime"    # J

    .prologue
    .line 250
    iput-wide p1, p0, Lrx/internal/schedulers/CachedThreadScheduler$ThreadWorker;->expirationTime:J

    .line 251
    return-void
.end method
