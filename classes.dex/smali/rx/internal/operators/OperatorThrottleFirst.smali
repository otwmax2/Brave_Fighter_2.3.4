###### Class rx.internal.operators.OperatorThrottleFirst (rx.internal.operators.OperatorThrottleFirst)
.class public final Lrx/internal/operators/OperatorThrottleFirst;
.super Ljava/lang/Object;
.source "OperatorThrottleFirst.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
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

.field final timeInMilliseconds:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 8
    .param p1, "windowDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst;, "Lrx/internal/operators/OperatorThrottleFirst<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorThrottleFirst;->timeInMilliseconds:J

    .line 34
    iput-object p4, p0, Lrx/internal/operators/OperatorThrottleFirst;->scheduler:Lrx/Scheduler;

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst;, "Lrx/internal/operators/OperatorThrottleFirst<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorThrottleFirst;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
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
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst;, "Lrx/internal/operators/OperatorThrottleFirst<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorThrottleFirst$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorThrottleFirst$1;-><init>(Lrx/internal/operators/OperatorThrottleFirst;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorThrottleFirst.AnonymousClass1 (rx.internal.operators.OperatorThrottleFirst$1)
.class Lrx/internal/operators/OperatorThrottleFirst$1;
.super Lrx/Subscriber;
.source "OperatorThrottleFirst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorThrottleFirst;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private lastOnNext:J

.field final synthetic this$0:Lrx/internal/operators/OperatorThrottleFirst;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorThrottleFirst;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 6

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst$1;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->this$0:Lrx/internal/operators/OperatorThrottleFirst;

    iput-object p3, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->lastOnNext:J

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst$1;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 60
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst$1;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst$1;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->this$0:Lrx/internal/operators/OperatorThrottleFirst;

    iget-object v2, v2, Lrx/internal/operators/OperatorThrottleFirst;->scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->now()J

    move-result-wide v0

    .line 51
    .local v0, "now":J
    iget-wide v2, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->lastOnNext:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    iget-wide v2, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->lastOnNext:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->this$0:Lrx/internal/operators/OperatorThrottleFirst;

    iget-wide v4, v4, Lrx/internal/operators/OperatorThrottleFirst;->timeInMilliseconds:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_23

    .line 52
    :cond_1c
    iput-wide v0, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->lastOnNext:J

    .line 53
    iget-object v2, p0, Lrx/internal/operators/OperatorThrottleFirst$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 55
    :cond_23
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorThrottleFirst$1;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorThrottleFirst$1;->request(J)V

    .line 46
    return-void
.end method
