###### Class rx.internal.operators.OperatorRetryWithPredicate (rx.internal.operators.OperatorRetryWithPredicate)
.class public final Lrx/internal/operators/OperatorRetryWithPredicate;
.super Ljava/lang/Object;
.source "OperatorRetryWithPredicate.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;",
        "Lrx/Observable",
        "<TT;>;>;"
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
    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/internal/operators/OperatorRetryWithPredicate;->predicate:Lrx/functions/Func2;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorRetryWithPredicate;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate;, "Lrx/internal/operators/OperatorRetryWithPredicate<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->trampoline()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v3

    .line 35
    .local v3, "inner":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 37
    new-instance v4, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v4}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 39
    .local v4, "serialSubscription":Lrx/subscriptions/SerialSubscription;
    invoke-virtual {p1, v4}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 40
    new-instance v5, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v5}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    .line 41
    .local v5, "pa":Lrx/internal/producers/ProducerArbiter;
    invoke-virtual {p1, v5}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 42
    new-instance v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorRetryWithPredicate;->predicate:Lrx/functions/Func2;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/Func2;Lrx/Scheduler$Worker;Lrx/subscriptions/SerialSubscription;Lrx/internal/producers/ProducerArbiter;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorRetryWithPredicate.SourceSubscriber (rx.internal.operators.OperatorRetryWithPredicate$SourceSubscriber)
.class final Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;
.super Lrx/Subscriber;
.source "OperatorRetryWithPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorRetryWithPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Observable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final attempts:Ljava/util/concurrent/atomic/AtomicInteger;

.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final inner:Lrx/Scheduler$Worker;

.field final pa:Lrx/internal/producers/ProducerArbiter;

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

.field final serialSubscription:Lrx/subscriptions/SerialSubscription;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func2;Lrx/Scheduler$Worker;Lrx/subscriptions/SerialSubscription;Lrx/internal/producers/ProducerArbiter;)V
    .registers 7
    .param p3, "inner"    # Lrx/Scheduler$Worker;
    .param p4, "serialSubscription"    # Lrx/subscriptions/SerialSubscription;
    .param p5, "pa"    # Lrx/internal/producers/ProducerArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lrx/Scheduler$Worker;",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/internal/producers/ProducerArbiter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->attempts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    iput-object p1, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->child:Lrx/Subscriber;

    .line 60
    iput-object p2, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->predicate:Lrx/functions/Func2;

    .line 61
    iput-object p3, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 62
    iput-object p4, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->serialSubscription:Lrx/subscriptions/SerialSubscription;

    .line 63
    iput-object p5, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->pa:Lrx/internal/producers/ProducerArbiter;

    .line 64
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->onNext(Lrx/Observable;)V

    return-void
.end method

.method public onNext(Lrx/Observable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber<TT;>;"
    .local p1, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;-><init>(Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;Lrx/Observable;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 130
    return-void
.end method

###### Class rx.internal.operators.OperatorRetryWithPredicate.SourceSubscriber.AnonymousClass1 (rx.internal.operators.OperatorRetryWithPredicate$SourceSubscriber$1)
.class Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorRetryWithPredicate.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->onNext(Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

.field final synthetic val$o:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;Lrx/Observable;)V
    .registers 3

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->val$o:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber.1;"
    move-object v0, p0

    .line 84
    .local v0, "_self":Lrx/functions/Action0;
    iget-object v2, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v2, v2, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->attempts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 88
    new-instance v1, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;-><init>(Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;Lrx/functions/Action0;)V

    .line 126
    .local v1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v2, v2, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->serialSubscription:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v2, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 127
    iget-object v2, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->val$o:Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 128
    return-void
.end method

###### Class rx.internal.operators.OperatorRetryWithPredicate.SourceSubscriber.AnonymousClass1.C01901 (rx.internal.operators.OperatorRetryWithPredicate$SourceSubscriber$1$1)
.class Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;
.super Lrx/Subscriber;
.source "OperatorRetryWithPredicate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->call()V
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

.field final synthetic this$1:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

.field final synthetic val$_self:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;Lrx/functions/Action0;)V
    .registers 3

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->this$1:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->val$_self:Lrx/functions/Action0;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->done:Z

    if-nez v0, :cond_10

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->done:Z

    .line 94
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->this$1:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 96
    :cond_10
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->done:Z

    if-nez v0, :cond_3e

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->done:Z

    .line 102
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->this$1:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->predicate:Lrx/functions/Func2;

    iget-object v1, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->this$1:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    iget-object v1, v1, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v1, v1, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->attempts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->this$1:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->inner:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 104
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->this$1:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->inner:Lrx/Scheduler$Worker;

    iget-object v1, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->val$_self:Lrx/functions/Action0;

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 110
    :cond_3e
    :goto_3e
    return-void

    .line 107
    :cond_3f
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->this$1:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_3e
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->done:Z

    if-nez v0, :cond_18

    .line 115
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->this$1:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->this$1:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->pa:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 118
    :cond_18
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 122
    .local p0, "this":Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;, "Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1$1;->this$1:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber$1;->this$0:Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorRetryWithPredicate$SourceSubscriber;->pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 123
    return-void
.end method
