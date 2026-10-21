###### Class rx.internal.operators.CompletableOnSubscribeConcat (rx.internal.operators.CompletableOnSubscribeConcat)
.class public final Lrx/internal/operators/CompletableOnSubscribeConcat;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcat.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;
    }
.end annotation


# instance fields
.field final prefetch:I

.field final sources:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;I)V
    .registers 3
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat;->sources:Lrx/Observable;

    .line 35
    iput p2, p0, Lrx/internal/operators/CompletableOnSubscribeConcat;->prefetch:I

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcat;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 40
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    iget v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat;->prefetch:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;-><init>(Lrx/CompletableSubscriber;I)V

    .line 41
    .local v0, "parent":Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 42
    iget-object v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat;->sources:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 43
    return-void
.end method

###### Class rx.internal.operators.CompletableOnSubscribeConcat.CompletableConcatSubscriber (rx.internal.operators.CompletableOnSubscribeConcat$CompletableConcatSubscriber)
.class final Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;
.super Lrx/Subscriber;
.source "CompletableOnSubscribeConcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableOnSubscribeConcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompletableConcatSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lrx/Completable;",
        ">;"
    }
.end annotation


# instance fields
.field final actual:Lrx/CompletableSubscriber;

.field volatile done:Z

.field final inner:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final queue:Lrx/internal/util/unsafe/SpscArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/unsafe/SpscArrayQueue",
            "<",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field

.field final sr:Lrx/subscriptions/SerialSubscription;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/CompletableSubscriber;I)V
    .registers 5
    .param p1, "actual"    # Lrx/CompletableSubscriber;
    .param p2, "prefetch"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 61
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->actual:Lrx/CompletableSubscriber;

    .line 62
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-direct {v0, p2}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->queue:Lrx/internal/util/unsafe/SpscArrayQueue;

    .line 63
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->sr:Lrx/subscriptions/SerialSubscription;

    .line 64
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;-><init>(Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;)V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->inner:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->sr:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->add(Lrx/Subscription;)V

    .line 68
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->request(J)V

    .line 69
    return-void
.end method


# virtual methods
.method innerComplete()V
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-eqz v0, :cond_b

    .line 109
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->next()V

    .line 111
    :cond_b
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->done:Z

    if-nez v0, :cond_14

    .line 112
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->request(J)V

    .line 114
    :cond_14
    return-void
.end method

.method innerError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->unsubscribe()V

    .line 104
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method next()V
    .registers 6

    .prologue
    .line 117
    iget-boolean v1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->done:Z

    .line 118
    .local v1, "d":Z
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->queue:Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-virtual {v2}, Lrx/internal/util/unsafe/SpscArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Completable;

    .line 119
    .local v0, "c":Lrx/Completable;
    if-nez v0, :cond_29

    .line 120
    if-eqz v1, :cond_1e

    .line 121
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 122
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v2}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 131
    :cond_1d
    :goto_1d
    return-void

    .line 126
    :cond_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Queue is empty?!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 130
    :cond_29
    iget-object v2, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->inner:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;

    invoke-virtual {v0, v2}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    goto :goto_1d
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 100
    :cond_4
    :goto_4
    return-void

    .line 96
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->done:Z

    .line 97
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_4

    .line 98
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->next()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 85
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 89
    :goto_f
    return-void

    .line 88
    :cond_10
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lrx/Completable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->onNext(Lrx/Completable;)V

    return-void
.end method

.method public onNext(Lrx/Completable;)V
    .registers 3
    .param p1, "t"    # Lrx/Completable;

    .prologue
    .line 73
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->queue:Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-virtual {v0, p1}, Lrx/internal/util/unsafe/SpscArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 74
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 80
    :cond_10
    :goto_10
    return-void

    .line 77
    :cond_11
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_10

    .line 78
    invoke-virtual {p0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->next()V

    goto :goto_10
.end method

###### Class rx.internal.operators.CompletableOnSubscribeConcat.CompletableConcatSubscriber.ConcatInnerSubscriber (rx.internal.operators.CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber)
.class final Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeConcat.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConcatInnerSubscriber"
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;->this$0:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;->this$0:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->innerComplete()V

    .line 147
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;->this$0:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    invoke-virtual {v0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->innerError(Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 136
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber;->this$0:Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeConcat$CompletableConcatSubscriber;->sr:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 137
    return-void
.end method
