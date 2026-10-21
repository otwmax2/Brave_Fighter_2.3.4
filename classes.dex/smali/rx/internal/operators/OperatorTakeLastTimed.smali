###### Class rx.internal.operators.OperatorTakeLastTimed (rx.internal.operators.OperatorTakeLastTimed)
.class public final Lrx/internal/operators/OperatorTakeLastTimed;
.super Ljava/lang/Object;
.source "OperatorTakeLastTimed.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;
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
.field final ageMillis:J

.field final count:I

.field final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 8
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-gez p1, :cond_d

    .line 47
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count could not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_d
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    .line 50
    iput-object p5, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    .line 51
    iput p1, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    .line 52
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 8
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    .line 41
    iput-object p4, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 9
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
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed;, "Lrx/internal/operators/OperatorTakeLastTimed<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;

    iget v3, p0, Lrx/internal/operators/OperatorTakeLastTimed;->count:I

    iget-wide v4, p0, Lrx/internal/operators/OperatorTakeLastTimed;->ageMillis:J

    iget-object v6, p0, Lrx/internal/operators/OperatorTakeLastTimed;->scheduler:Lrx/Scheduler;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;-><init>(Lrx/Subscriber;IJLrx/Scheduler;)V

    .line 58
    .local v1, "parent":Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 59
    new-instance v0, Lrx/internal/operators/OperatorTakeLastTimed$1;

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OperatorTakeLastTimed$1;-><init>(Lrx/internal/operators/OperatorTakeLastTimed;Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 66
    return-object v1
.end method

###### Class rx.internal.operators.OperatorTakeLastTimed.AnonymousClass1 (rx.internal.operators.OperatorTakeLastTimed$1)
.class Lrx/internal/operators/OperatorTakeLastTimed$1;
.super Ljava/lang/Object;
.source "OperatorTakeLastTimed.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeLastTimed;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeLastTimed;

.field final synthetic val$parent:Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeLastTimed;Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;)V
    .registers 3

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->this$0:Lrx/internal/operators/OperatorTakeLastTimed;

    iput-object p2, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$parent:Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$1;, "Lrx/internal/operators/OperatorTakeLastTimed.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$1;->val$parent:Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->requestMore(J)V

    .line 63
    return-void
.end method

###### Class rx.internal.operators.OperatorTakeLastTimed.TakeLastTimedSubscriber (rx.internal.operators.OperatorTakeLastTimed$TakeLastTimedSubscriber)
.class final Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;
.super Lrx/Subscriber;
.source "OperatorTakeLastTimed.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTakeLastTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeLastTimedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final ageMillis:J

.field final count:I

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final queueTimes:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Subscriber;IJLrx/Scheduler;)V
    .registers 7
    .param p2, "count"    # I
    .param p3, "ageMillis"    # J
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;IJ",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 80
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->actual:Lrx/Subscriber;

    .line 81
    iput p2, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->count:I

    .line 82
    iput-wide p3, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->ageMillis:J

    .line 83
    iput-object p5, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->scheduler:Lrx/Scheduler;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 85
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queue:Ljava/util/ArrayDeque;

    .line 86
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queueTimes:Ljava/util/ArrayDeque;

    .line 87
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 88
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected evictOld(J)V
    .registers 10
    .param p1, "now"    # J

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    iget-wide v4, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->ageMillis:J

    sub-long v0, p1, v4

    .line 110
    .local v0, "minTime":J
    :goto_4
    iget-object v3, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queueTimes:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 111
    .local v2, "time":Ljava/lang/Long;
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-ltz v3, :cond_17

    .line 117
    :cond_16
    return-void

    .line 114
    :cond_17
    iget-object v3, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 115
    iget-object v3, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queueTimes:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    goto :goto_4
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->evictOld(J)V

    .line 130
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queueTimes:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 132
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queue:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->actual:Lrx/Subscriber;

    invoke-static {v0, v1, v2, p0}, Lrx/internal/operators/BackpressureUtils;->postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)V

    .line 133
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 122
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queueTimes:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 123
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 124
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
    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->count:I

    if-eqz v2, :cond_35

    .line 93
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->now()J

    move-result-wide v0

    .line 95
    .local v0, "now":J
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget v3, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->count:I

    if-ne v2, v3, :cond_1e

    .line 96
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 97
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queueTimes:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 100
    :cond_1e
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->evictOld(J)V

    .line 102
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queue:Ljava/util/ArrayDeque;

    iget-object v3, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queueTimes:Ljava/util/ArrayDeque;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 105
    .end local v0    # "now":J
    :cond_35
    return-void
.end method

.method requestMore(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .line 141
    .local p0, "this":Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->queue:Ljava/util/ArrayDeque;

    iget-object v5, p0, Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber;->actual:Lrx/Subscriber;

    move-wide v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lrx/internal/operators/BackpressureUtils;->postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)Z

    .line 142
    return-void
.end method
