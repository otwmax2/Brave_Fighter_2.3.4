###### Class rx.internal.operators.BlockingOperatorNext (rx.internal.operators.BlockingOperatorNext)
.class public final Lrx/internal/operators/BlockingOperatorNext;
.super Ljava/lang/Object;
.source "BlockingOperatorNext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/BlockingOperatorNext$NextObserver;,
        Lrx/internal/operators/BlockingOperatorNext$NextIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static next(Lrx/Observable;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "items":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/BlockingOperatorNext$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/BlockingOperatorNext$1;-><init>(Lrx/Observable;)V

    return-object v0
.end method

###### Class rx.internal.operators.BlockingOperatorNext.AnonymousClass1 (rx.internal.operators.BlockingOperatorNext$1)
.class final Lrx/internal/operators/BlockingOperatorNext$1;
.super Ljava/lang/Object;
.source "BlockingOperatorNext.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorNext;->next(Lrx/Observable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$items:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorNext$1;->val$items:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-direct {v0}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;-><init>()V

    .line 50
    .local v0, "nextObserver":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    new-instance v1, Lrx/internal/operators/BlockingOperatorNext$NextIterator;

    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$1;->val$items:Lrx/Observable;

    invoke-direct {v1, v2, v0}, Lrx/internal/operators/BlockingOperatorNext$NextIterator;-><init>(Lrx/Observable;Lrx/internal/operators/BlockingOperatorNext$NextObserver;)V

    return-object v1
.end method

###### Class rx.internal.operators.BlockingOperatorNext.NextIterator (rx.internal.operators.BlockingOperatorNext$NextIterator)
.class final Lrx/internal/operators/BlockingOperatorNext$NextIterator;
.super Ljava/lang/Object;
.source "BlockingOperatorNext.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NextIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field private hasNext:Z

.field private isNextConsumed:Z

.field private final items:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BlockingOperatorNext$NextObserver",
            "<TT;>;"
        }
    .end annotation
.end field

.field private started:Z


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/internal/operators/BlockingOperatorNext$NextObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/internal/operators/BlockingOperatorNext$NextObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextIterator;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    .local p1, "items":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "observer":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    const/4 v0, 0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext:Z

    .line 63
    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    .line 68
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->items:Lrx/Observable;

    .line 69
    iput-object p2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    .line 70
    return-void
.end method

.method private moveToNext()Z
    .registers 7

    .prologue
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextIterator;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    :try_start_2
    iget-boolean v4, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->started:Z

    if-nez v4, :cond_1a

    .line 92
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->started:Z

    .line 94
    iget-object v4, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->setWaiting(I)V

    .line 95
    iget-object v4, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->items:Lrx/Observable;

    invoke-virtual {v4}, Lrx/Observable;->materialize()Lrx/Observable;

    move-result-object v4

    iget-object v5, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 98
    :cond_1a
    iget-object v4, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-virtual {v4}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->takeNext()Lrx/Notification;

    move-result-object v1

    .line 99
    .local v1, "nextNotification":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    invoke-virtual {v1}, Lrx/Notification;->isOnNext()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 100
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    .line 101
    invoke-virtual {v1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->next:Ljava/lang/Object;

    .line 108
    :goto_2f
    return v2

    .line 106
    :cond_30
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext:Z

    .line 107
    invoke-virtual {v1}, Lrx/Notification;->isOnCompleted()Z

    move-result v2

    if-eqz v2, :cond_3b

    move v2, v3

    .line 108
    goto :goto_2f

    .line 110
    :cond_3b
    invoke-virtual {v1}, Lrx/Notification;->isOnError()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 111
    invoke-virtual {v1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    .line 112
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_4e} :catch_4e

    .line 115
    .end local v1    # "nextNotification":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :catch_4e
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->observer:Lrx/internal/operators/BlockingOperatorNext$NextObserver;

    invoke-virtual {v2}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->unsubscribe()V

    .line 117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 118
    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    .line 119
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 114
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "nextNotification":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_62
    :try_start_62
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Should not reach here"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_6a} :catch_4e
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextIterator;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_c

    .line 76
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 80
    :cond_c
    iget-boolean v1, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext:Z

    if-nez v1, :cond_11

    .line 85
    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-boolean v1, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    if-eqz v1, :cond_1b

    invoke-direct {p0}, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_1b
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextIterator;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    .line 127
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->error:Ljava/lang/Throwable;

    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 129
    :cond_b
    invoke-virtual {p0}, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->isNextConsumed:Z

    .line 131
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 134
    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 140
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextIterator;, "Lrx/internal/operators/BlockingOperatorNext$NextIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class rx.internal.operators.BlockingOperatorNext.NextObserver (rx.internal.operators.BlockingOperatorNext$NextObserver)
.class final Lrx/internal/operators/BlockingOperatorNext$NextObserver;
.super Lrx/Subscriber;
.source "BlockingOperatorNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/BlockingOperatorNext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NextObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field private final buf:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lrx/Notification",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final waiting:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 144
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 145
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 151
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 156
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 144
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_10

    invoke-virtual {p1}, Lrx/Notification;->isOnNext()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 162
    :cond_10
    move-object v1, p1

    .line 163
    .local v1, "toOffer":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_11
    :goto_11
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 164
    iget-object v2, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    .line 167
    .local v0, "concurrentItem":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lrx/Notification;->isOnNext()Z

    move-result v2

    if-nez v2, :cond_11

    .line 168
    move-object v1, v0

    goto :goto_11

    .line 173
    .end local v0    # "concurrentItem":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    .end local v1    # "toOffer":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    :cond_2b
    return-void
.end method

.method setWaiting(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 180
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 181
    return-void
.end method

.method public takeNext()Lrx/Notification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Notification",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lrx/internal/operators/BlockingOperatorNext$NextObserver;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->setWaiting(I)V

    .line 177
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorNext$NextObserver;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    return-object v0
.end method
