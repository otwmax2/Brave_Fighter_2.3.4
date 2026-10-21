###### Class rx.internal.operators.OnSubscribeRedo (rx.internal.operators.OnSubscribeRedo)
.class public final Lrx/internal/operators/OnSubscribeRedo;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;,
        Lrx/internal/operators/OnSubscribeRedo$RedoFinite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final REDO_INFINITE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final controlHandlerFunction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final scheduler:Lrx/Scheduler;

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field final stopOnComplete:Z

.field final stopOnError:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$1;

    invoke-direct {v0}, Lrx/internal/operators/OnSubscribeRedo$1;-><init>()V

    sput-object v0, Lrx/internal/operators/OnSubscribeRedo;->REDO_INFINITE:Lrx/functions/Func1;

    return-void
.end method

.method private constructor <init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V
    .registers 6
    .param p3, "stopOnComplete"    # Z
    .param p4, "stopOnError"    # Z
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;ZZ",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo;->source:Lrx/Observable;

    .line 180
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRedo;->controlHandlerFunction:Lrx/functions/Func1;

    .line 181
    iput-boolean p3, p0, Lrx/internal/operators/OnSubscribeRedo;->stopOnComplete:Z

    .line 182
    iput-boolean p4, p0, Lrx/internal/operators/OnSubscribeRedo;->stopOnError:Z

    .line 183
    iput-object p5, p0, Lrx/internal/operators/OnSubscribeRedo;->scheduler:Lrx/Scheduler;

    .line 184
    return-void
.end method

.method public static redo(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .registers 9
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    const/4 v3, 0x0

    .line 174
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;J)Lrx/Observable;
    .registers 4
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;JLrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;JLrx/Scheduler;)Lrx/Observable;
    .registers 9
    .param p1, "count"    # J
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;J",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const-wide/16 v2, 0x0

    .line 156
    cmp-long v0, p1, v2

    if-nez v0, :cond_b

    .line 157
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    .line 162
    :goto_a
    return-object v0

    .line 159
    :cond_b
    cmp-long v0, p1, v2

    if-gez v0, :cond_17

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count >= 0 expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_17
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-direct {v0, v2, v3}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;-><init>(J)V

    invoke-static {p0, v0, p3}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    goto :goto_a
.end method

.method public static repeat(Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/internal/operators/OnSubscribeRedo;->REDO_INFINITE:Lrx/functions/Func1;

    invoke-static {p0, v0, p1}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .registers 9
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lrx/Observable;)Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/internal/operators/OnSubscribeRedo;->REDO_INFINITE:Lrx/functions/Func1;

    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lrx/Observable;J)Lrx/Observable;
    .registers 8
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const-wide/16 v2, 0x0

    .line 126
    cmp-long v0, p1, v2

    if-gez v0, :cond_e

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count >= 0 expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_e
    cmp-long v0, p1, v2

    if-nez v0, :cond_13

    .line 132
    .end local p0    # "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :goto_12
    return-object p0

    .restart local p0    # "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :cond_13
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;-><init>(J)V

    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p0

    goto :goto_12
.end method

.method public static retry(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .registers 9
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeRedo;-><init>(Lrx/Observable;Lrx/functions/Func1;ZZLrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v16, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 193
    .local v16, "resumeBoundary":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 195
    .local v7, "consumerCapacity":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/OnSubscribeRedo;->scheduler:Lrx/Scheduler;

    invoke-virtual {v3}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v14

    .line 196
    .local v14, "worker":Lrx/Scheduler$Worker;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 198
    new-instance v8, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v8}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 199
    .local v8, "sourceSubscriptions":Lrx/subscriptions/SerialSubscription;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 205
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v3

    invoke-virtual {v3}, Lrx/subjects/BehaviorSubject;->toSerialized()Lrx/subjects/SerializedSubject;

    move-result-object v5

    .line 206
    .local v5, "terminals":Lrx/subjects/Subject;, "Lrx/subjects/Subject<Lrx/Notification<*>;Lrx/Notification<*>;>;"
    invoke-static {}, Lrx/observers/Subscribers;->empty()Lrx/Subscriber;

    move-result-object v24

    .line 209
    .local v24, "dummySubscriber":Lrx/Subscriber;, "Lrx/Subscriber<Lrx/Notification<*>;>;"
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lrx/subjects/Subject;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 211
    new-instance v6, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v6}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    .line 213
    .local v6, "arbiter":Lrx/internal/producers/ProducerArbiter;
    new-instance v2, Lrx/internal/operators/OnSubscribeRedo$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lrx/internal/operators/OnSubscribeRedo$2;-><init>(Lrx/internal/operators/OnSubscribeRedo;Lrx/Subscriber;Lrx/subjects/Subject;Lrx/internal/producers/ProducerArbiter;Ljava/util/concurrent/atomic/AtomicLong;Lrx/subscriptions/SerialSubscription;)V

    .line 280
    .local v2, "subscribeToSource":Lrx/functions/Action0;
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/internal/operators/OnSubscribeRedo;->controlHandlerFunction:Lrx/functions/Func1;

    new-instance v4, Lrx/internal/operators/OnSubscribeRedo$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lrx/internal/operators/OnSubscribeRedo$3;-><init>(Lrx/internal/operators/OnSubscribeRedo;)V

    invoke-virtual {v5, v4}, Lrx/subjects/Subject;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v4

    invoke-interface {v3, v4}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrx/Observable;

    .line 315
    .local v11, "restarts":Lrx/Observable;, "Lrx/Observable<*>;"
    new-instance v9, Lrx/internal/operators/OnSubscribeRedo$4;

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object v13, v7

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Lrx/internal/operators/OnSubscribeRedo$4;-><init>(Lrx/internal/operators/OnSubscribeRedo;Lrx/Observable;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicLong;Lrx/Scheduler$Worker;Lrx/functions/Action0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v14, v9}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 353
    new-instance v17, Lrx/internal/operators/OnSubscribeRedo$5;

    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    move-object/from16 v21, v16

    move-object/from16 v22, v14

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v23}, Lrx/internal/operators/OnSubscribeRedo$5;-><init>(Lrx/internal/operators/OnSubscribeRedo;Ljava/util/concurrent/atomic/AtomicLong;Lrx/internal/producers/ProducerArbiter;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Scheduler$Worker;Lrx/functions/Action0;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 367
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeRedo.AnonymousClass1 (rx.internal.operators.OnSubscribeRedo$1)
.class final Lrx/internal/operators/OnSubscribeRedo$1;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeRedo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$1;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "ts":Lrx/Observable;, "Lrx/Observable<+Lrx/Notification<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$1$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeRedo$1$1;-><init>(Lrx/internal/operators/OnSubscribeRedo$1;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OnSubscribeRedo.AnonymousClass1.C01851 (rx.internal.operators.OnSubscribeRedo$1$1)
.class Lrx/internal/operators/OnSubscribeRedo$1$1;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$1;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Notification",
        "<*>;",
        "Lrx/Notification",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$1;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$1$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$1$1;->call(Lrx/Notification;)Lrx/Notification;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Notification;)Lrx/Notification;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<*>;)",
            "Lrx/Notification",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "terminal":Lrx/Notification;, "Lrx/Notification<*>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OnSubscribeRedo.AnonymousClass2 (rx.internal.operators.OnSubscribeRedo$2)
.class Lrx/internal/operators/OnSubscribeRedo$2;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo;

.field final synthetic val$arbiter:Lrx/internal/producers/ProducerArbiter;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$sourceSubscriptions:Lrx/subscriptions/SerialSubscription;

.field final synthetic val$terminals:Lrx/subjects/Subject;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo;Lrx/Subscriber;Lrx/subjects/Subject;Lrx/internal/producers/ProducerArbiter;Ljava/util/concurrent/atomic/AtomicLong;Lrx/subscriptions/SerialSubscription;)V
    .registers 7

    .prologue
    .line 213
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2;, "Lrx/internal/operators/OnSubscribeRedo.2;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$2;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$child:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$terminals:Lrx/subjects/Subject;

    iput-object p4, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$arbiter:Lrx/internal/producers/ProducerArbiter;

    iput-object p5, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p6, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$sourceSubscriptions:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 216
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2;, "Lrx/internal/operators/OnSubscribeRedo.2;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 274
    :goto_8
    return-void

    .line 220
    :cond_9
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$2$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeRedo$2$1;-><init>(Lrx/internal/operators/OnSubscribeRedo$2;)V

    .line 272
    .local v0, "terminalDelegatingSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$2;->val$sourceSubscriptions:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 273
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$2;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeRedo;->source:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_8
.end method

###### Class rx.internal.operators.OnSubscribeRedo.AnonymousClass2.AnonymousClass1 (rx.internal.operators.OnSubscribeRedo$2$1)
.class Lrx/internal/operators/OnSubscribeRedo$2$1;
.super Lrx/Subscriber;
.source "OnSubscribeRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$2;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic this$1:Lrx/internal/operators/OnSubscribeRedo$2;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$2;)V
    .registers 2

    .prologue
    .line 220
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method

.method private decrementConsumerCapacity()V
    .registers 7

    .prologue
    .line 254
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeRedo$2;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 255
    .local v0, "cc":J
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1f

    .line 256
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeRedo$2;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    :cond_1f
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 225
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->done:Z

    if-nez v0, :cond_15

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->done:Z

    .line 227
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRedo$2$1;->unsubscribe()V

    .line 228
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$2;->val$terminals:Lrx/subjects/Subject;

    invoke-static {}, Lrx/Notification;->createOnCompleted()Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 230
    :cond_15
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->done:Z

    if-nez v0, :cond_15

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->done:Z

    .line 236
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRedo$2$1;->unsubscribe()V

    .line 237
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$2;->val$terminals:Lrx/subjects/Subject;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 239
    :cond_15
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->done:Z

    if-nez v0, :cond_17

    .line 244
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$2;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 245
    invoke-direct {p0}, Lrx/internal/operators/OnSubscribeRedo$2$1;->decrementConsumerCapacity()V

    .line 246
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$2;->val$arbiter:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 248
    :cond_17
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 267
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$2$1;, "Lrx/internal/operators/OnSubscribeRedo$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$2$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$2;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$2;->val$arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 268
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeRedo.AnonymousClass3 (rx.internal.operators.OnSubscribeRedo$3)
.class Lrx/internal/operators/OnSubscribeRedo$3;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lrx/Notification",
        "<*>;",
        "Lrx/Notification",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo;)V
    .registers 2

    .prologue
    .line 281
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3;, "Lrx/internal/operators/OnSubscribeRedo.3;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$3;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 281
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3;, "Lrx/internal/operators/OnSubscribeRedo.3;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$3;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Notification",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3;, "Lrx/internal/operators/OnSubscribeRedo.3;"
    .local p1, "filteredTerminals":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Notification<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$3$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OnSubscribeRedo$3$1;-><init>(Lrx/internal/operators/OnSubscribeRedo$3;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OnSubscribeRedo.AnonymousClass3.AnonymousClass1 (rx.internal.operators.OnSubscribeRedo$3$1)
.class Lrx/internal/operators/OnSubscribeRedo$3$1;
.super Lrx/Subscriber;
.source "OnSubscribeRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$3;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeRedo$3;

.field final synthetic val$filteredTerminals:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$3;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$3;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 287
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 288
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 292
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$3$1;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    .local p1, "t":Lrx/Notification;, "Lrx/Notification<*>;"
    invoke-virtual {p1}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$3;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$3;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    iget-boolean v0, v0, Lrx/internal/operators/OnSubscribeRedo;->stopOnComplete:Z

    if-eqz v0, :cond_14

    .line 298
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 304
    :goto_13
    return-void

    .line 299
    :cond_14
    invoke-virtual {p1}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$3;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$3;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    iget-boolean v0, v0, Lrx/internal/operators/OnSubscribeRedo;->stopOnError:Z

    if-eqz v0, :cond_2c

    .line 300
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 302
    :cond_2c
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$3$1;->val$filteredTerminals:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_13
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3$1;, "Lrx/internal/operators/OnSubscribeRedo$3.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 309
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeRedo.AnonymousClass4 (rx.internal.operators.OnSubscribeRedo$4)
.class Lrx/internal/operators/OnSubscribeRedo$4;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$restarts:Lrx/Observable;

.field final synthetic val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$subscribeToSource:Lrx/functions/Action0;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo;Lrx/Observable;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicLong;Lrx/Scheduler$Worker;Lrx/functions/Action0;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 8

    .prologue
    .line 315
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4;, "Lrx/internal/operators/OnSubscribeRedo.4;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$4;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$restarts:Lrx/Observable;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$child:Lrx/Subscriber;

    iput-object p4, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$worker:Lrx/Scheduler$Worker;

    iput-object p6, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$subscribeToSource:Lrx/functions/Action0;

    iput-object p7, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4;, "Lrx/internal/operators/OnSubscribeRedo.4;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$restarts:Lrx/Observable;

    new-instance v1, Lrx/internal/operators/OnSubscribeRedo$4$1;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRedo$4;->val$child:Lrx/Subscriber;

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/OnSubscribeRedo$4$1;-><init>(Lrx/internal/operators/OnSubscribeRedo$4;Lrx/Subscriber;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 350
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeRedo.AnonymousClass4.AnonymousClass1 (rx.internal.operators.OnSubscribeRedo$4$1)
.class Lrx/internal/operators/OnSubscribeRedo$4$1;
.super Lrx/Subscriber;
.source "OnSubscribeRedo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$4;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OnSubscribeRedo$4;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$4;Lrx/Subscriber;)V
    .registers 3

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4$1;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 321
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4$1;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 322
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 326
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4$1;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 327
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 331
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4$1;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_23

    .line 335
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 336
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$worker:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeRedo$4;->val$subscribeToSource:Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 343
    :cond_23
    :goto_23
    return-void

    .line 340
    :cond_24
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$4$1;->this$1:Lrx/internal/operators/OnSubscribeRedo$4;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRedo$4;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_23
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 347
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$4$1;, "Lrx/internal/operators/OnSubscribeRedo$4.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    .line 348
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeRedo.AnonymousClass5 (rx.internal.operators.OnSubscribeRedo$5)
.class Lrx/internal/operators/OnSubscribeRedo$5;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo;

.field final synthetic val$arbiter:Lrx/internal/producers/ProducerArbiter;

.field final synthetic val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$subscribeToSource:Lrx/functions/Action0;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo;Ljava/util/concurrent/atomic/AtomicLong;Lrx/internal/producers/ProducerArbiter;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/Scheduler$Worker;Lrx/functions/Action0;)V
    .registers 7

    .prologue
    .line 353
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$5;, "Lrx/internal/operators/OnSubscribeRedo.5;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$5;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$arbiter:Lrx/internal/producers/ProducerArbiter;

    iput-object p4, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$worker:Lrx/Scheduler$Worker;

    iput-object p6, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$subscribeToSource:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 6
    .param p1, "n"    # J

    .prologue
    .line 357
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$5;, "Lrx/internal/operators/OnSubscribeRedo.5;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_21

    .line 358
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$consumerCapacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 359
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1, p2}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 360
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$resumeBoundary:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 361
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$worker:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$5;->val$subscribeToSource:Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 364
    :cond_21
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeRedo.RedoFinite (rx.internal.operators.OnSubscribeRedo$RedoFinite)
.class public final Lrx/internal/operators/OnSubscribeRedo$RedoFinite;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeRedo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RedoFinite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final count:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "count"    # J

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;->count:J

    .line 71
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "ts":Lrx/Observable;, "Lrx/Observable<+Lrx/Notification<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;-><init>(Lrx/internal/operators/OnSubscribeRedo$RedoFinite;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->dematerialize()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OnSubscribeRedo.RedoFinite.AnonymousClass1 (rx.internal.operators.OnSubscribeRedo$RedoFinite$1)
.class Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$RedoFinite;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Notification",
        "<*>;",
        "Lrx/Notification",
        "<*>;>;"
    }
.end annotation


# instance fields
.field num:I

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo$RedoFinite;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$RedoFinite;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->call(Lrx/Notification;)Lrx/Notification;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Notification;)Lrx/Notification;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<*>;)",
            "Lrx/Notification",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "terminalNotification":Lrx/Notification;, "Lrx/Notification<*>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    iget-wide v0, v0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 89
    .end local p1    # "terminalNotification":Lrx/Notification;, "Lrx/Notification<*>;"
    :cond_a
    :goto_a
    return-object p1

    .line 85
    .restart local p1    # "terminalNotification":Lrx/Notification;, "Lrx/Notification<*>;"
    :cond_b
    iget v0, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->num:I

    .line 86
    iget v0, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->num:I

    int-to-long v0, v0

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    iget-wide v2, v2, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;->count:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    .line 87
    iget v0, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;->num:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object p1

    goto :goto_a
.end method

###### Class rx.internal.operators.OnSubscribeRedo.RetryWithPredicate (rx.internal.operators.OnSubscribeRedo$RetryWithPredicate)
.class public final Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeRedo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RetryWithPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Lrx/Observable",
        "<+",
        "Lrx/Notification",
        "<*>;>;>;"
    }
.end annotation


# instance fields
.field final predicate:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;->predicate:Lrx/functions/Func2;

    .line 102
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "ts":Lrx/Observable;, "Lrx/Observable<+Lrx/Notification<*>;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;-><init>(Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;)V

    invoke-virtual {p1, v0, v1}, Lrx/Observable;->scan(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OnSubscribeRedo.RetryWithPredicate.AnonymousClass1 (rx.internal.operators.OnSubscribeRedo$RetryWithPredicate$1)
.class Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Lrx/Notification",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lrx/Notification",
        "<*>;",
        "Lrx/Notification",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/Notification;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;->call(Lrx/Notification;Lrx/Notification;)Lrx/Notification;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Notification;Lrx/Notification;)Lrx/Notification;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lrx/Notification",
            "<*>;)",
            "Lrx/Notification",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "n":Lrx/Notification;, "Lrx/Notification<Ljava/lang/Integer;>;"
    .local p2, "term":Lrx/Notification;, "Lrx/Notification<*>;"
    invoke-virtual {p1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 111
    .local v0, "value":I
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeRedo$RetryWithPredicate;->predicate:Lrx/functions/Func2;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 112
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object p2

    .line 114
    .end local p2    # "term":Lrx/Notification;, "Lrx/Notification<*>;"
    :cond_2c
    return-object p2
.end method
