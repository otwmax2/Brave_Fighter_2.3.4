###### Class rx.internal.operators.OperatorTimeoutWithSelector (rx.internal.operators.OperatorTimeoutWithSelector)
.class public Lrx/internal/operators/OperatorTimeoutWithSelector;
.super Lrx/internal/operators/OperatorTimeoutBase;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorTimeoutBase",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector;, "Lrx/internal/operators/OperatorTimeoutWithSelector<TT;TU;TV;>;"
    .local p1, "firstTimeoutSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "timeoutSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    .local p3, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTimeoutWithSelector$1;-><init>(Lrx/functions/Func0;)V

    new-instance v1, Lrx/internal/operators/OperatorTimeoutWithSelector$2;

    invoke-direct {v1, p2}, Lrx/internal/operators/OperatorTimeoutWithSelector$2;-><init>(Lrx/functions/Func1;)V

    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v2

    invoke-direct {p0, v0, v1, p3, v2}, Lrx/internal/operators/OperatorTimeoutBase;-><init>(Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/Observable;Lrx/Scheduler;)V

    .line 109
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
    .param p1, "x0"    # Lrx/Subscriber;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector;, "Lrx/internal/operators/OperatorTimeoutWithSelector<TT;TU;TV;>;"
    invoke-super {p0, p1}, Lrx/internal/operators/OperatorTimeoutBase;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OperatorTimeoutWithSelector.AnonymousClass1 (rx.internal.operators.OperatorTimeoutWithSelector$1)
.class Lrx/internal/operators/OperatorTimeoutWithSelector$1;
.super Ljava/lang/Object;
.source "OperatorTimeoutWithSelector.java"

# interfaces
.implements Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutWithSelector;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V
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
.field final synthetic val$firstTimeoutSelector:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/functions/Func0;)V
    .registers 2

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->val$firstTimeoutSelector:Lrx/functions/Func0;

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
    .line 40
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    check-cast p1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lrx/Scheduler$Worker;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;
    .registers 7
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
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->val$firstTimeoutSelector:Lrx/functions/Func0;

    if-eqz v2, :cond_1f

    .line 49
    :try_start_4
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;->val$firstTimeoutSelector:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_c} :catch_16

    .line 54
    .local v0, "o":Lrx/Observable;, "Lrx/Observable<TU;>;"
    new-instance v2, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;

    invoke-direct {v2, p0, p1, p2}, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;-><init>(Lrx/internal/operators/OperatorTimeoutWithSelector$1;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V

    invoke-virtual {v0, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v2

    .line 73
    .end local v0    # "o":Lrx/Observable;, "Lrx/Observable<TU;>;"
    :goto_15
    return-object v2

    .line 50
    :catch_16
    move-exception v1

    .line 51
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 52
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    goto :goto_15

    .line 73
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1f
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    goto :goto_15
.end method

###### Class rx.internal.operators.OperatorTimeoutWithSelector.AnonymousClass1.C01961 (rx.internal.operators.OperatorTimeoutWithSelector$1$1)
.class Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;
.super Lrx/Subscriber;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutWithSelector$1;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Lrx/Scheduler$Worker;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$1;

.field final synthetic val$seqId:Ljava/lang/Long;

.field final synthetic val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeoutWithSelector$1;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$seqId:Ljava/lang/Long;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 59
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$1$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 69
    return-void
.end method

###### Class rx.internal.operators.OperatorTimeoutWithSelector.AnonymousClass2 (rx.internal.operators.OperatorTimeoutWithSelector$2)
.class Lrx/internal/operators/OperatorTimeoutWithSelector$2;
.super Ljava/lang/Object;
.source "OperatorTimeoutWithSelector.java"

# interfaces
.implements Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutWithSelector;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V
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
.field final synthetic val$timeoutSelector:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/functions/Func1;)V
    .registers 2

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2;->val$timeoutSelector:Lrx/functions/Func1;

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
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    check-cast p1, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p4, Lrx/Scheduler$Worker;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorTimeoutWithSelector$2;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;
    .registers 8
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
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    .local p1, "timeoutSubscriber":Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2;->val$timeoutSelector:Lrx/functions/Func1;

    invoke-interface {v2, p3}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_12

    .line 89
    .local v0, "o":Lrx/Observable;, "Lrx/Observable<TV;>;"
    new-instance v2, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;

    invoke-direct {v2, p0, p1, p2}, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;-><init>(Lrx/internal/operators/OperatorTimeoutWithSelector$2;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V

    invoke-virtual {v0, v2}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v2

    .end local v0    # "o":Lrx/Observable;, "Lrx/Observable<TV;>;"
    :goto_11
    return-object v2

    .line 85
    :catch_12
    move-exception v1

    .line 86
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    .line 87
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    goto :goto_11
.end method

###### Class rx.internal.operators.OperatorTimeoutWithSelector.AnonymousClass2.AnonymousClass1 (rx.internal.operators.OperatorTimeoutWithSelector$2$1)
.class Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;
.super Lrx/Subscriber;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTimeoutWithSelector$2;->call(Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;Ljava/lang/Object;Lrx/Scheduler$Worker;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$2;

.field final synthetic val$seqId:Ljava/lang/Long;

.field final synthetic val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTimeoutWithSelector$2;Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;Ljava/lang/Long;)V
    .registers 4

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->this$1:Lrx/internal/operators/OperatorTimeoutWithSelector$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$seqId:Ljava/lang/Long;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    .local p1, "t":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$timeoutSubscriber:Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutWithSelector$2$1;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber;->onTimeout(J)V

    .line 104
    return-void
.end method
