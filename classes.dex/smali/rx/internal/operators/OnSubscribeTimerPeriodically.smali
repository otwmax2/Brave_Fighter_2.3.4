###### Class rx.internal.operators.OnSubscribeTimerPeriodically (rx.internal.operators.OnSubscribeTimerPeriodically)
.class public final Lrx/internal/operators/OnSubscribeTimerPeriodically;
.super Ljava/lang/Object;
.source "OnSubscribeTimerPeriodically.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final initialDelay:J

.field final period:J

.field final scheduler:Lrx/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .registers 8
    .param p1, "initialDelay"    # J
    .param p3, "period"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->initialDelay:J

    .line 38
    iput-wide p3, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->period:J

    .line 39
    iput-object p5, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->unit:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p6, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->scheduler:Lrx/Scheduler;

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeTimerPeriodically;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Long;>;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 46
    .local v0, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 47
    new-instance v1, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;-><init>(Lrx/internal/operators/OnSubscribeTimerPeriodically;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    iget-wide v2, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->initialDelay:J

    iget-wide v4, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->period:J

    iget-object v6, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 63
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeTimerPeriodically.AnonymousClass1 (rx.internal.operators.OnSubscribeTimerPeriodically$1)
.class Lrx/internal/operators/OnSubscribeTimerPeriodically$1;
.super Ljava/lang/Object;
.source "OnSubscribeTimerPeriodically.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeTimerPeriodically;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field counter:J

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeTimerPeriodically;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$worker:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeTimerPeriodically;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .registers 4

    .prologue
    .line 47
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->this$0:Lrx/internal/operators/OnSubscribeTimerPeriodically;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$child:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$worker:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 7

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$child:Lrx/Subscriber;

    iget-wide v2, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->counter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->counter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 60
    :goto_10
    return-void

    .line 53
    :catch_11
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_12
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$worker:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1d

    .line 57
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$child:Lrx/Subscriber;

    invoke-static {v0, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_10

    :catchall_1d
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeTimerPeriodically$1;->val$child:Lrx/Subscriber;

    invoke-static {v0, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    throw v1
.end method
