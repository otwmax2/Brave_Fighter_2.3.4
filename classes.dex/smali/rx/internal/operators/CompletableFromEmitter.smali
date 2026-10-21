###### Class rx.internal.operators.CompletableFromEmitter (rx.internal.operators.CompletableFromEmitter)
.class public final Lrx/internal/operators/CompletableFromEmitter;
.super Ljava/lang/Object;
.source "CompletableFromEmitter.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableFromEmitter$FromEmitter;
    }
.end annotation


# instance fields
.field final producer:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/CompletableEmitter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Action1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/CompletableEmitter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "producer":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/CompletableEmitter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/CompletableFromEmitter;->producer:Lrx/functions/Action1;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableFromEmitter;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 5
    .param p1, "t"    # Lrx/CompletableSubscriber;

    .prologue
    .line 41
    new-instance v0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;

    invoke-direct {v0, p1}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;-><init>(Lrx/CompletableSubscriber;)V

    .line 42
    .local v0, "emitter":Lrx/internal/operators/CompletableFromEmitter$FromEmitter;
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 45
    :try_start_8
    iget-object v2, p0, Lrx/internal/operators/CompletableFromEmitter;->producer:Lrx/functions/Action1;

    invoke-interface {v2, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_e

    .line 51
    :goto_d
    return-void

    .line 46
    :catch_e
    move-exception v1

    .line 47
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 48
    invoke-virtual {v0, v1}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_d
.end method

###### Class rx.internal.operators.CompletableFromEmitter.FromEmitter (rx.internal.operators.CompletableFromEmitter$FromEmitter)
.class final Lrx/internal/operators/CompletableFromEmitter$FromEmitter;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "CompletableFromEmitter.java"

# interfaces
.implements Lrx/CompletableEmitter;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FromEmitter"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4cdf8d3365236ed1L


# instance fields
.field final actual:Lrx/CompletableSubscriber;

.field final resource:Lrx/internal/subscriptions/SequentialSubscription;


# direct methods
.method public constructor <init>(Lrx/CompletableSubscriber;)V
    .registers 3
    .param p1, "actual"    # Lrx/CompletableSubscriber;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 65
    iput-object p1, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->actual:Lrx/CompletableSubscriber;

    .line 66
    new-instance v0, Lrx/internal/subscriptions/SequentialSubscription;

    invoke-direct {v0}, Lrx/internal/subscriptions/SequentialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    .line 67
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->get()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 73
    :try_start_8
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_13

    .line 75
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 78
    :cond_12
    return-void

    .line 75
    :catchall_13
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v1}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 84
    :try_start_8
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_13

    .line 86
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 91
    :goto_12
    return-void

    .line 86
    :catchall_13
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v1}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    throw v0

    .line 89
    :cond_1a
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public setCancellation(Lrx/AsyncEmitter$Cancellable;)V
    .registers 3
    .param p1, "c"    # Lrx/AsyncEmitter$Cancellable;

    .prologue
    .line 100
    new-instance v0, Lrx/internal/operators/OnSubscribeFromEmitter$CancellableSubscription;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$CancellableSubscription;-><init>(Lrx/AsyncEmitter$Cancellable;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->setSubscription(Lrx/Subscription;)V

    .line 101
    return-void
.end method

.method public setSubscription(Lrx/Subscription;)V
    .registers 3
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 95
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0, p1}, Lrx/internal/subscriptions/SequentialSubscription;->update(Lrx/Subscription;)Z

    .line 96
    return-void
.end method

.method public unsubscribe()V
    .registers 3

    .prologue
    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 106
    iget-object v0, p0, Lrx/internal/operators/CompletableFromEmitter$FromEmitter;->resource:Lrx/internal/subscriptions/SequentialSubscription;

    invoke-virtual {v0}, Lrx/internal/subscriptions/SequentialSubscription;->unsubscribe()V

    .line 108
    :cond_d
    return-void
.end method
