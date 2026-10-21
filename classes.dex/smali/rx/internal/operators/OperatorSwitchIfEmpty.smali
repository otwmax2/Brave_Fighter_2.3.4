###### Class rx.internal.operators.OperatorSwitchIfEmpty (rx.internal.operators.OperatorSwitchIfEmpty)
.class public final Lrx/internal/operators/OperatorSwitchIfEmpty;
.super Ljava/lang/Object;
.source "OperatorSwitchIfEmpty.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;,
        Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;
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
.field private final alternate:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty;, "Lrx/internal/operators/OperatorSwitchIfEmpty<TT;>;"
    .local p1, "alternate":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty;->alternate:Lrx/Observable;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty;, "Lrx/internal/operators/OperatorSwitchIfEmpty<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitchIfEmpty;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 6
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
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty;, "Lrx/internal/operators/OperatorSwitchIfEmpty<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v2, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v2}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 39
    .local v2, "serial":Lrx/subscriptions/SerialSubscription;
    new-instance v0, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    .line 40
    .local v0, "arbiter":Lrx/internal/producers/ProducerArbiter;
    new-instance v1, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorSwitchIfEmpty;->alternate:Lrx/Observable;

    invoke-direct {v1, p1, v2, v0, v3}, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;-><init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;Lrx/internal/producers/ProducerArbiter;Lrx/Observable;)V

    .line 41
    .local v1, "parent":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    invoke-virtual {v2, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 42
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 43
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 44
    return-object v1
.end method

###### Class rx.internal.operators.OperatorSwitchIfEmpty.AlternateSubscriber (rx.internal.operators.OperatorSwitchIfEmpty$AlternateSubscriber)
.class final Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitchIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitchIfEmpty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AlternateSubscriber"
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
.field private final arbiter:Lrx/internal/producers/ProducerArbiter;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;)V
    .registers 3
    .param p2, "arbiter"    # Lrx/internal/producers/ProducerArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/internal/producers/ProducerArbiter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 101
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;->child:Lrx/Subscriber;

    .line 102
    iput-object p2, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 103
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 113
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 117
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 118
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
    .line 122
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 124
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 108
    return-void
.end method

###### Class rx.internal.operators.OperatorSwitchIfEmpty.ParentSubscriber (rx.internal.operators.OperatorSwitchIfEmpty$ParentSubscriber)
.class final Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitchIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitchIfEmpty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParentSubscriber"
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
.field private final alternate:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final arbiter:Lrx/internal/producers/ProducerArbiter;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private empty:Z

.field private final serial:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;Lrx/internal/producers/ProducerArbiter;Lrx/Observable;)V
    .registers 6
    .param p2, "serial"    # Lrx/subscriptions/SerialSubscription;
    .param p3, "arbiter"    # Lrx/internal/producers/ProducerArbiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/internal/producers/ProducerArbiter;",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p4, "alternate":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->empty:Z

    .line 56
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    .line 57
    iput-object p2, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    .line 58
    iput-object p3, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 59
    iput-object p4, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->alternate:Lrx/Observable;

    .line 60
    return-void
.end method

.method private subscribeToAlternate()V
    .registers 4

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;-><init>(Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;)V

    .line 78
    .local v0, "as":Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 79
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->alternate:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 80
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->empty:Z

    if-nez v0, :cond_a

    .line 70
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 74
    :cond_9
    :goto_9
    return-void

    .line 71
    :cond_a
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 72
    invoke-direct {p0}, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->subscribeToAlternate()V

    goto :goto_9
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 85
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
    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->empty:Z

    .line 90
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 92
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;, "Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 65
    return-void
.end method
