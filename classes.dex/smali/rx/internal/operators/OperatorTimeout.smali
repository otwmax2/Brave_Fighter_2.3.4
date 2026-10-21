###### Class rx.internal.operators.OperatorTimeout (rx.internal.operators.OperatorTimeout)
.class public final Lrx/internal/operators/OperatorTimeout;
.super Lrx/internal/operators/OperatorTimeoutBase;
.source "OperatorTimeout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorTimeoutBase",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)V
    .registers 9
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorTimeout;, "Lrx/internal/operators/OperatorTimeout<TT;>;"
    .local p4, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeout$1;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorTimeout$1;-><init>(JLjava/util/concurrent/TimeUnit;)V

    new-instance v1, Lrx/internal/operators/OperatorTimeout$2;

    invoke-direct {v1, p1, p2, p3}, Lrx/internal/operators/OperatorTimeout$2;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0, v1, p4, p5}, Lrx/internal/operators/OperatorTimeoutBase;-><init>(Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/Observable;Lrx/Scheduler;)V

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .param p1, "x0"    # Lrx/Subscriber;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorTimeout;, "Lrx/internal/operators/OperatorTimeout<TT;>;"
    invoke-super {p0, p1}, Lrx/internal/operators/OperatorTimeoutBase;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OperatorTimeout.AnonymousClass1 (rx.internal.operators.OperatorTimeout$1)
.class Lrx/internal/operators/OperatorTimeout$1;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeout;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$timeUnit:Ljava/util/concurrent/TimeUnit;

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .registers 5

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$1;, "Lrx/internal/operators/OperatorTimeout.1;"
    iput-wide p1, p0, Lrx/internal/operators/OperatorTimeout$1;->val$timeout:J

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeout$1;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$1;, "Lrx/internal/operators/OperatorTimeout.1;"
    check-cast p1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lrx/Scheduler$Worker;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lrx/internal/operators/OperatorTimeout$1;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;
    .registers 8
    .param p2, "seqId"    # Ljava/lang/Long;
    .param p3, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber",
            "<TT;>;",
            "Ljava/lang/Long;",
            "Lrx/Scheduler$Worker;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$1;, "Lrx/internal/operators/OperatorTimeout.1;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeout$1$1;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/OperatorTimeout$1$1;-><init>(Lrx/internal/operators/OperatorTimeout$1;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V

    iget-wide v2, p0, Lrx/internal/operators/OperatorTimeout$1;->val$timeout:J

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeout$1;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v2, v3, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OperatorTimeout.AnonymousClass1.C01951 (rx.internal.operators.OperatorTimeout$1$1)
.class Lrx/internal/operators/OperatorTimeout$1$1;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeout$1;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorTimeout$1;

.field final synthetic val$seqId:Ljava/lang/Long;

.field final synthetic val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeout$1;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$1$1;, "Lrx/internal/operators/OperatorTimeout$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeout$1$1;->this$1:Lrx/internal/operators/OperatorTimeout$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorTimeout$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeout$1$1;->val$seqId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$1$1;, "Lrx/internal/operators/OperatorTimeout$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeout$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeout$1$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 42
    return-void
.end method

###### Class rx.internal.operators.OperatorTimeout.AnonymousClass2 (rx.internal.operators.OperatorTimeout$2)
.class Lrx/internal/operators/OperatorTimeout$2;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeout;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$timeUnit:Ljava/util/concurrent/TimeUnit;

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .registers 5

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$2;, "Lrx/internal/operators/OperatorTimeout.2;"
    iput-wide p1, p0, Lrx/internal/operators/OperatorTimeout$2;->val$timeout:J

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeout$2;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$2;, "Lrx/internal/operators/OperatorTimeout.2;"
    check-cast p1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p4, Lrx/Scheduler$Worker;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorTimeout$2;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;
    .registers 9
    .param p2, "seqId"    # Ljava/lang/Long;
    .param p4, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber",
            "<TT;>;",
            "Ljava/lang/Long;",
            "TT;",
            "Lrx/Scheduler$Worker;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$2;, "Lrx/internal/operators/OperatorTimeout.2;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/OperatorTimeout$2$1;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/OperatorTimeout$2$1;-><init>(Lrx/internal/operators/OperatorTimeout$2;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V

    iget-wide v2, p0, Lrx/internal/operators/OperatorTimeout$2;->val$timeout:J

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeout$2;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v0, v2, v3, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OperatorTimeout.AnonymousClass2.AnonymousClass1 (rx.internal.operators.OperatorTimeout$2$1)
.class Lrx/internal/operators/OperatorTimeout$2$1;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeout$2;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorTimeout$2;

.field final synthetic val$seqId:Ljava/lang/Long;

.field final synthetic val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeout$2;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$2$1;, "Lrx/internal/operators/OperatorTimeout$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeout$2$1;->this$1:Lrx/internal/operators/OperatorTimeout$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorTimeout$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeout$2$1;->val$seqId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorTimeout$2$1;, "Lrx/internal/operators/OperatorTimeout$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeout$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeout$2$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 53
    return-void
.end method
