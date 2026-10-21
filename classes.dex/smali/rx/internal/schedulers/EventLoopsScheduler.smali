###### Class rx.internal.schedulers.EventLoopsScheduler (rx.internal.schedulers.EventLoopsScheduler)
.class public final Lrx/internal/schedulers/EventLoopsScheduler;
.super Lrx/Scheduler;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lrx/internal/schedulers/SchedulerLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;,
        Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;,
        Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    }
.end annotation


# static fields
.field static final KEY_MAX_THREADS:Ljava/lang/String; = "rx.scheduler.max-computation-threads"

.field static final MAX_THREADS:I

.field static final NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

.field static final SHUTDOWN_WORKER:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    .line 35
    const-string v3, "rx.scheduler.max-computation-threads"

    invoke-static {v3, v5}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 36
    .local v2, "maxThreads":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 38
    .local v0, "cpuCount":I
    if-lez v2, :cond_17

    if-le v2, v0, :cond_31

    .line 39
    :cond_17
    move v1, v0

    .line 43
    .local v1, "max":I
    :goto_18
    sput v1, Lrx/internal/schedulers/EventLoopsScheduler;->MAX_THREADS:I

    .line 48
    new-instance v3, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    sget-object v4, Lrx/internal/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v3, v4}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v3, Lrx/internal/schedulers/EventLoopsScheduler;->SHUTDOWN_WORKER:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .line 49
    sget-object v3, Lrx/internal/schedulers/EventLoopsScheduler;->SHUTDOWN_WORKER:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    invoke-virtual {v3}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->unsubscribe()V

    .line 53
    new-instance v3, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v5}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v3, Lrx/internal/schedulers/EventLoopsScheduler;->NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    return-void

    .line 41
    .end local v1    # "max":I
    :cond_31
    move v1, v2

    .restart local v1    # "max":I
    goto :goto_18
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 4
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 95
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 96
    iput-object p1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/schedulers/EventLoopsScheduler;->NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    invoke-virtual {p0}, Lrx/internal/schedulers/EventLoopsScheduler;->start()V

    .line 99
    return-void
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .prologue
    .line 103
    new-instance v1, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->getEventLoop()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v0

    invoke-direct {v1, v0}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;-><init>(Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;)V

    return-object v1
.end method

.method public scheduleDirect(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 6
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 135
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->getEventLoop()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    move-result-object v0

    .line 136
    .local v0, "pw":Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    const-wide/16 v2, -0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v1

    return-object v1
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 117
    :cond_0
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    .line 118
    .local v0, "curr":Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    sget-object v1, Lrx/internal/schedulers/EventLoopsScheduler;->NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    if-ne v0, v1, :cond_d

    .line 123
    :goto_c
    return-void

    .line 121
    :cond_d
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/EventLoopsScheduler;->NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->shutdown()V

    goto :goto_c
.end method

.method public start()V
    .registers 4

    .prologue
    .line 108
    new-instance v0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    sget v2, Lrx/internal/schedulers/EventLoopsScheduler;->MAX_THREADS:I

    invoke-direct {v0, v1, v2}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 109
    .local v0, "update":Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/schedulers/EventLoopsScheduler;->NONE:Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 110
    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->shutdown()V

    .line 112
    :cond_16
    return-void
.end method

###### Class rx.internal.schedulers.EventLoopsScheduler.EventLoopWorker (rx.internal.schedulers.EventLoopsScheduler$EventLoopWorker)
.class final Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;
.super Lrx/Scheduler$Worker;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventLoopWorker"
.end annotation


# instance fields
.field private final both:Lrx/internal/util/SubscriptionList;

.field private final poolWorker:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

.field private final serial:Lrx/internal/util/SubscriptionList;

.field private final timed:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;)V
    .registers 6
    .param p1, "poolWorker"    # Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .prologue
    .line 145
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 140
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->serial:Lrx/internal/util/SubscriptionList;

    .line 141
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->timed:Lrx/subscriptions/CompositeSubscription;

    .line 142
    new-instance v0, Lrx/internal/util/SubscriptionList;

    const/4 v1, 0x2

    new-array v1, v1, [Lrx/Subscription;

    const/4 v2, 0x0

    iget-object v3, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->serial:Lrx/internal/util/SubscriptionList;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->timed:Lrx/subscriptions/CompositeSubscription;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lrx/internal/util/SubscriptionList;-><init>([Lrx/Subscription;)V

    iput-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->both:Lrx/internal/util/SubscriptionList;

    .line 146
    iput-object p1, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->poolWorker:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .line 148
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->both:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 8
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 162
    invoke-virtual {p0}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 163
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 166
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->poolWorker:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v1, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;-><init>(Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;Lrx/functions/Action0;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->serial:Lrx/internal/util/SubscriptionList;

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/SubscriptionList;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_a
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .registers 11
    .param p1, "action"    # Lrx/functions/Action0;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 179
    invoke-virtual {p0}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 180
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    .line 183
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->poolWorker:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v1, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$2;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$2;-><init>(Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;Lrx/functions/Action0;)V

    iget-object v5, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->timed:Lrx/subscriptions/CompositeSubscription;

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->scheduleActual(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;Lrx/subscriptions/CompositeSubscription;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_a
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->both:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 153
    return-void
.end method

###### Class rx.internal.schedulers.EventLoopsScheduler.EventLoopWorker.AnonymousClass1 (rx.internal.schedulers.EventLoopsScheduler$EventLoopWorker$1)
.class Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

.field final synthetic val$action:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;Lrx/functions/Action0;)V
    .registers 3

    .prologue
    .line 166
    iput-object p1, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;->this$0:Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

    iput-object p2, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;->val$action:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;->this$0:Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    :goto_8
    return-void

    .line 172
    :cond_9
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$1;->val$action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    goto :goto_8
.end method

###### Class rx.internal.schedulers.EventLoopsScheduler.EventLoopWorker.AnonymousClass2 (rx.internal.schedulers.EventLoopsScheduler$EventLoopWorker$2)
.class Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$2;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

.field final synthetic val$action:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;Lrx/functions/Action0;)V
    .registers 3

    .prologue
    .line 183
    iput-object p1, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$2;->this$0:Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

    iput-object p2, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$2;->val$action:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$2;->this$0:Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;

    invoke-virtual {v0}, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 190
    :goto_8
    return-void

    .line 189
    :cond_9
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$EventLoopWorker$2;->val$action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    goto :goto_8
.end method

###### Class rx.internal.schedulers.EventLoopsScheduler.FixedSchedulerPool (rx.internal.schedulers.EventLoopsScheduler$FixedSchedulerPool)
.class final Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FixedSchedulerPool"
.end annotation


# instance fields
.field final cores:I

.field final eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

.field n:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;I)V
    .registers 6
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "maxThreads"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p2, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    .line 68
    new-array v1, p2, [Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    iput-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, p2, :cond_18

    .line 70
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    new-instance v2, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    invoke-direct {v2, p1}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 72
    :cond_18
    return-void
.end method


# virtual methods
.method public getEventLoop()Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    .registers 7

    .prologue
    .line 75
    iget v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->cores:I

    .line 76
    .local v0, "c":I
    if-nez v0, :cond_7

    .line 77
    sget-object v1, Lrx/internal/schedulers/EventLoopsScheduler;->SHUTDOWN_WORKER:Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .line 80
    :goto_6
    return-object v1

    :cond_7
    iget-object v1, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    iget-wide v2, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->n:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v2, v2

    aget-object v1, v1, v2

    goto :goto_6
.end method

.method public shutdown()V
    .registers 5

    .prologue
    .line 84
    iget-object v0, p0, Lrx/internal/schedulers/EventLoopsScheduler$FixedSchedulerPool;->eventLoops:[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;

    .local v0, "arr$":[Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 85
    .local v3, "w":Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    invoke-virtual {v3}, Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;->unsubscribe()V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 87
    .end local v3    # "w":Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
    :cond_e
    return-void
.end method

###### Class rx.internal.schedulers.EventLoopsScheduler.PoolWorker (rx.internal.schedulers.EventLoopsScheduler$PoolWorker)
.class final Lrx/internal/schedulers/EventLoopsScheduler$PoolWorker;
.super Lrx/internal/schedulers/NewThreadWorker;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/EventLoopsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PoolWorker"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lrx/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 198
    return-void
.end method
