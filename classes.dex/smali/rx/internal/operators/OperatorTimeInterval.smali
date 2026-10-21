###### Class rx.internal.operators.OperatorTimeInterval (rx.internal.operators.OperatorTimeInterval)
.class public final Lrx/internal/operators/OperatorTimeInterval;
.super Ljava/lang/Object;
.source "OperatorTimeInterval.java"

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
        "<",
        "Lrx/schedulers/TimeInterval",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Scheduler;)V
    .registers 2
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorTimeInterval;, "Lrx/internal/operators/OperatorTimeInterval<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeInterval;->scheduler:Lrx/Scheduler;

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/OperatorTimeInterval;, "Lrx/internal/operators/OperatorTimeInterval<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTimeInterval;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "Lrx/schedulers/TimeInterval",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorTimeInterval;, "Lrx/internal/operators/OperatorTimeInterval<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/schedulers/TimeInterval<TT;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeInterval$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorTimeInterval$1;-><init>(Lrx/internal/operators/OperatorTimeInterval;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorTimeInterval.AnonymousClass1 (rx.internal.operators.OperatorTimeInterval$1)
.class Lrx/internal/operators/OperatorTimeInterval$1;
.super Lrx/Subscriber;
.source "OperatorTimeInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeInterval;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private lastTimestamp:J

.field final synthetic this$0:Lrx/internal/operators/OperatorTimeInterval;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeInterval;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 6

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorTimeInterval$1;, "Lrx/internal/operators/OperatorTimeInterval.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeInterval$1;->this$0:Lrx/internal/operators/OperatorTimeInterval;

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeInterval$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 39
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeInterval$1;->this$0:Lrx/internal/operators/OperatorTimeInterval;

    iget-object v0, v0, Lrx/internal/operators/OperatorTimeInterval;->scheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lrx/internal/operators/OperatorTimeInterval$1;->lastTimestamp:J

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorTimeInterval$1;, "Lrx/internal/operators/OperatorTimeInterval.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeInterval$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 52
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorTimeInterval$1;, "Lrx/internal/operators/OperatorTimeInterval.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeInterval$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 57
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
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorTimeInterval$1;, "Lrx/internal/operators/OperatorTimeInterval.1;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeInterval$1;->this$0:Lrx/internal/operators/OperatorTimeInterval;

    iget-object v2, v2, Lrx/internal/operators/OperatorTimeInterval;->scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->now()J

    move-result-wide v0

    .line 45
    .local v0, "nowTimestamp":J
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeInterval$1;->val$subscriber:Lrx/Subscriber;

    new-instance v3, Lrx/schedulers/TimeInterval;

    iget-wide v4, p0, Lrx/internal/operators/OperatorTimeInterval$1;->lastTimestamp:J

    sub-long v4, v0, v4

    invoke-direct {v3, v4, v5, p1}, Lrx/schedulers/TimeInterval;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 46
    iput-wide v0, p0, Lrx/internal/operators/OperatorTimeInterval$1;->lastTimestamp:J

    .line 47
    return-void
.end method
