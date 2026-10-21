###### Class rx.internal.operators.OperatorTimeoutBase (rx.internal.operators.OperatorTimeoutBase)
.class Lrx/internal/operators/OperatorTimeoutBase;
.super Ljava/lang/Object;
.source "OperatorTimeoutBase.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;,
        Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;,
        Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final firstTimeoutStub:Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub",
            "<TT;>;"
        }
    .end annotation
.end field

.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final scheduler:Lrx/Scheduler;

.field final timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/Observable;Lrx/Scheduler;)V
    .registers 5
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub",
            "<TT;>;",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase;, "Lrx/internal/operators/OperatorTimeoutBase<TT;>;"
    .local p1, "firstTimeoutStub":Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;, "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub<TT;>;"
    .local p2, "timeoutStub":Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<TT;>;"
    .local p3, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase;->firstTimeoutStub:Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;

    .line 53
    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    .line 54
    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutBase;->other:Lrx/Observable;

    .line 55
    iput-object p4, p0, Lrx/internal/operators/OperatorTimeoutBase;->scheduler:Lrx/Scheduler;

    .line 56
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase;, "Lrx/internal/operators/OperatorTimeoutBase<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTimeoutBase;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase;, "Lrx/internal/operators/OperatorTimeoutBase<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase;->scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v5

    .line 61
    .local v5, "inner":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v5}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 65
    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 67
    .local v1, "synchronizedSubscriber":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v3, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v3}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 68
    .local v3, "serial":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {v1, v3}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 70
    new-instance v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase;->other:Lrx/Observable;

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;-><init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;)V

    .line 72
    .local v0, "timeoutSubscriber":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    invoke-virtual {v1, v0}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 73
    iget-object v2, v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v1, v2}, Lrx/observers/SerializedSubscriber;->setProducer(Lrx/Producer;)V

    .line 75
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase;->firstTimeoutStub:Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v0, v4, v5}, Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Subscription;

    invoke-virtual {v3, v2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 77
    return-object v0
.end method

###### Class rx.internal.operators.OperatorTimeoutBase.FirstTimeoutStub (rx.internal.operators.OperatorTimeoutBase$FirstTimeoutStub)
.class interface abstract Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;
.super Ljava/lang/Object;
.source "OperatorTimeoutBase.java"

# interfaces
.implements Lrx/functions/Func3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTimeoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FirstTimeoutStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func3",
        "<",
        "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber",
        "<TT;>;",
        "Ljava/lang/Long;",
        "Lrx/Scheduler$Worker;",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation

###### Class rx.internal.operators.OperatorTimeoutBase.TimeoutStub (rx.internal.operators.OperatorTimeoutBase$TimeoutStub)
.class interface abstract Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
.super Ljava/lang/Object;
.source "OperatorTimeoutBase.java"

# interfaces
.implements Lrx/functions/Func4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTimeoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TimeoutStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func4",
        "<",
        "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber",
        "<TT;>;",
        "Ljava/lang/Long;",
        "TT;",
        "Lrx/Scheduler$Worker;",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation

###### Class rx.internal.operators.OperatorTimeoutBase.TimeoutSubscriber (rx.internal.operators.OperatorTimeoutBase$TimeoutSubscriber)
.class final Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;
.super Lrx/Subscriber;
.source "OperatorTimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTimeoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field actual:J

.field final arbiter:Lrx/internal/producers/ProducerArbiter;

.field final inner:Lrx/Scheduler$Worker;

.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final serial:Lrx/subscriptions/SerialSubscription;

.field final serializedSubscriber:Lrx/observers/SerializedSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field terminated:Z

.field final timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/observers/SerializedSubscriber;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/subscriptions/SerialSubscription;Lrx/Observable;Lrx/Scheduler$Worker;)V
    .registers 7
    .param p3, "serial"    # Lrx/subscriptions/SerialSubscription;
    .param p5, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observers/SerializedSubscriber",
            "<TT;>;",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
            "<TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p1, "serializedSubscriber":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    .local p2, "timeoutStub":Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<TT;>;"
    .local p4, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 105
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    .line 106
    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    .line 107
    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    .line 108
    iput-object p4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    .line 109
    iput-object p5, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 110
    new-instance v0, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 111
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 153
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 154
    .local v0, "onCompletedWins":Z
    monitor-enter p0

    .line 155
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    if-nez v1, :cond_a

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    .line 157
    const/4 v0, 0x1

    .line 159
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_18

    .line 160
    if-eqz v0, :cond_17

    .line 161
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 162
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 164
    :cond_17
    return-void

    .line 159
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 138
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    const/4 v0, 0x0

    .line 139
    .local v0, "onErrorWins":Z
    monitor-enter p0

    .line 140
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    if-nez v1, :cond_a

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    .line 142
    const/4 v0, 0x1

    .line 144
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_18

    .line 145
    if-eqz v0, :cond_17

    .line 146
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 147
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v1, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 149
    :cond_17
    return-void

    .line 144
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    .line 122
    .local v2, "onNextWins":Z
    monitor-enter p0

    .line 123
    :try_start_2
    iget-boolean v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    if-nez v3, :cond_2b

    .line 124
    iget-wide v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    iput-wide v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    .line 125
    .local v0, "a":J
    const/4 v2, 0x1

    .line 129
    :goto_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_2e

    .line 130
    if-eqz v2, :cond_2a

    .line 131
    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v3, p1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    .line 132
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->timeoutStub:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->inner:Lrx/Scheduler$Worker;

    invoke-interface {v3, p0, v5, p1, v6}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Subscription;

    invoke-virtual {v4, v3}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 134
    :cond_2a
    return-void

    .line 127
    .end local v0    # "a":J
    :cond_2b
    :try_start_2b
    iget-wide v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    .restart local v0    # "a":J
    goto :goto_f

    .line 129
    .end local v0    # "a":J
    :catchall_2e
    move-exception v3

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public onTimeout(J)V
    .registers 10
    .param p1, "seqId"    # J

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    move-wide v0, p1

    .line 168
    .local v0, "expected":J
    const/4 v3, 0x0

    .line 169
    .local v3, "timeoutWins":Z
    monitor-enter p0

    .line 170
    :try_start_3
    iget-wide v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->actual:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_11

    iget-boolean v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    if-nez v4, :cond_11

    .line 171
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->terminated:Z

    .line 172
    const/4 v3, 0x1

    .line 174
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_23

    .line 175
    if-eqz v3, :cond_22

    .line 176
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    if-nez v4, :cond_26

    .line 177
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    new-instance v5, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v5}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v4, v5}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 204
    :cond_22
    :goto_22
    return-void

    .line 174
    :catchall_23
    move-exception v4

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v4

    .line 179
    :cond_26
    new-instance v2, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;

    invoke-direct {v2, p0}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;-><init>(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;)V

    .line 200
    .local v2, "second":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->other:Lrx/Observable;

    invoke-virtual {v4, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 201
    iget-object v4, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v4, v2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    goto :goto_22
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 116
    return-void
.end method

###### Class rx.internal.operators.OperatorTimeoutBase.TimeoutSubscriber.AnonymousClass1 (rx.internal.operators.OperatorTimeoutBase$TimeoutSubscriber$1)
.class Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;
.super Lrx/Subscriber;
.source "OperatorTimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V
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
.field final synthetic this$0:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;)V
    .registers 2

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;->this$0:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 192
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;->this$0:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 193
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 187
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;->this$0:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 188
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;->this$0:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->serializedSubscriber:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 197
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber$1;->this$0:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 198
    return-void
.end method
