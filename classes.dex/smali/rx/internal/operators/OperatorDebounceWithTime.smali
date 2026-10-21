###### Class rx.internal.operators.OperatorDebounceWithTime (rx.internal.operators.OperatorDebounceWithTime)
.class public final Lrx/internal/operators/OperatorDebounceWithTime;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;
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
.field final scheduler:Lrx/Scheduler;

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lrx/internal/operators/OperatorDebounceWithTime;->timeout:J

    .line 50
    iput-object p3, p0, Lrx/internal/operators/OperatorDebounceWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 51
    iput-object p4, p0, Lrx/internal/operators/OperatorDebounceWithTime;->scheduler:Lrx/Scheduler;

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDebounceWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 8
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
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v4

    .line 57
    .local v4, "worker":Lrx/Scheduler$Worker;
    new-instance v5, Lrx/observers/SerializedSubscriber;

    invoke-direct {v5, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 58
    .local v5, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v3, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v3}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 60
    .local v3, "serial":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {v5, v4}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 61
    invoke-virtual {v5, v3}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 63
    new-instance v0, Lrx/internal/operators/OperatorDebounceWithTime$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorDebounceWithTime$1;-><init>(Lrx/internal/operators/OperatorDebounceWithTime;Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;Lrx/Scheduler$Worker;Lrx/observers/SerializedSubscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorDebounceWithTime.AnonymousClass1 (rx.internal.operators.OperatorDebounceWithTime$1)
.class Lrx/internal/operators/OperatorDebounceWithTime$1;
.super Lrx/Subscriber;
.source "OperatorDebounceWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDebounceWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final self:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<*>;"
        }
    .end annotation
.end field

.field final state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorDebounceWithTime;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;

.field final synthetic val$serial:Lrx/subscriptions/SerialSubscription;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDebounceWithTime;Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;Lrx/Scheduler$Worker;Lrx/observers/SerializedSubscriber;)V
    .registers 7

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->this$0:Lrx/internal/operators/OperatorDebounceWithTime;

    iput-object p3, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$serial:Lrx/subscriptions/SerialSubscription;

    iput-object p4, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$worker:Lrx/Scheduler$Worker;

    iput-object p5, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 64
    new-instance v0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-direct {v0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    .line 65
    iput-object p0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->self:Lrx/Subscriber;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitAndComplete(Lrx/Subscriber;Lrx/Subscriber;)V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDebounceWithTime$1;->unsubscribe()V

    .line 88
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->clear()V

    .line 89
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    invoke-virtual {v1, p1}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->next(Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "index":I
    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$serial:Lrx/subscriptions/SerialSubscription;

    iget-object v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$worker:Lrx/Scheduler$Worker;

    new-instance v3, Lrx/internal/operators/OperatorDebounceWithTime$1$1;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/OperatorDebounceWithTime$1$1;-><init>(Lrx/internal/operators/OperatorDebounceWithTime$1;I)V

    iget-object v4, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->this$0:Lrx/internal/operators/OperatorDebounceWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorDebounceWithTime;->timeout:J

    iget-object v6, p0, Lrx/internal/operators/OperatorDebounceWithTime$1;->this$0:Lrx/internal/operators/OperatorDebounceWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorDebounceWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 82
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1;, "Lrx/internal/operators/OperatorDebounceWithTime.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorDebounceWithTime$1;->request(J)V

    .line 70
    return-void
.end method

###### Class rx.internal.operators.OperatorDebounceWithTime.AnonymousClass1.C01871 (rx.internal.operators.OperatorDebounceWithTime$1$1)
.class Lrx/internal/operators/OperatorDebounceWithTime$1$1;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDebounceWithTime$1;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorDebounceWithTime$1;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDebounceWithTime$1;I)V
    .registers 3

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1$1;, "Lrx/internal/operators/OperatorDebounceWithTime$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithTime$1;

    iput p2, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$1$1;, "Lrx/internal/operators/OperatorDebounceWithTime$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithTime$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorDebounceWithTime$1;->state:Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;

    iget v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->val$index:I

    iget-object v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithTime$1;

    iget-object v2, v2, Lrx/internal/operators/OperatorDebounceWithTime$1;->val$s:Lrx/observers/SerializedSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$1$1;->this$1:Lrx/internal/operators/OperatorDebounceWithTime$1;

    iget-object v3, v3, Lrx/internal/operators/OperatorDebounceWithTime$1;->self:Lrx/Subscriber;

    invoke-virtual {v0, v1, v2, v3}, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emit(ILrx/Subscriber;Lrx/Subscriber;)V

    .line 80
    return-void
.end method

###### Class rx.internal.operators.OperatorDebounceWithTime.DebounceState (rx.internal.operators.OperatorDebounceWithTime$DebounceState)
.class final Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorDebounceWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebounceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field emitting:Z

.field hasValue:Z

.field index:I

.field terminate:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 101
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 177
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 180
    monitor-exit p0

    return-void

    .line 177
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public emit(ILrx/Subscriber;Lrx/Subscriber;)V
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/Subscriber",
            "<TT;>;",
            "Lrx/Subscriber",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p2, "onNextAndComplete":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local p3, "onError":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    monitor-enter p0

    .line 121
    :try_start_1
    iget-boolean v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    if-eqz v2, :cond_d

    iget v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    if-eq p1, v2, :cond_f

    .line 122
    :cond_d
    monitor-exit p0

    .line 147
    :goto_e
    return-void

    .line 124
    :cond_f
    iget-object v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 126
    .local v1, "localValue":Ljava/lang/Object;, "TT;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 127
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 129
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2b

    .line 132
    :try_start_1b
    invoke-virtual {p2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_2e

    .line 139
    monitor-enter p0

    .line 140
    :try_start_1f
    iget-boolean v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->terminate:Z

    if-nez v2, :cond_33

    .line 141
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 142
    monitor-exit p0

    goto :goto_e

    .line 144
    :catchall_28
    move-exception v2

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw v2

    .line 129
    .end local v1    # "localValue":Ljava/lang/Object;, "TT;"
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2

    .line 133
    .restart local v1    # "localValue":Ljava/lang/Object;, "TT;"
    :catch_2e
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p3, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_e

    .line 144
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_28

    .line 146
    invoke-virtual {p2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_e
.end method

.method public emitAndComplete(Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<TT;>;",
            "Lrx/Subscriber",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p1, "onNextAndComplete":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local p2, "onError":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    monitor-enter p0

    .line 153
    :try_start_1
    iget-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    if-eqz v3, :cond_a

    .line 154
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->terminate:Z

    .line 155
    monitor-exit p0

    .line 175
    :goto_9
    return-void

    .line 157
    :cond_a
    iget-object v2, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 158
    .local v2, "localValue":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 160
    .local v1, "localHasValue":Z
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 161
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 163
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->emitting:Z

    .line 164
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_21

    .line 166
    if-eqz v1, :cond_1d

    .line 168
    :try_start_1a
    invoke-virtual {p1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_24

    .line 174
    :cond_1d
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_9

    .line 164
    .end local v1    # "localHasValue":Z
    .end local v2    # "localValue":Ljava/lang/Object;, "TT;"
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v3

    .line 169
    .restart local v1    # "localHasValue":Z
    .restart local v2    # "localValue":Ljava/lang/Object;, "TT;"
    :catch_24
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p2, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public declared-synchronized next(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;, "Lrx/internal/operators/OperatorDebounceWithTime$DebounceState<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->value:Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->hasValue:Z

    .line 116
    iget v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorDebounceWithTime$DebounceState;->index:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 114
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
