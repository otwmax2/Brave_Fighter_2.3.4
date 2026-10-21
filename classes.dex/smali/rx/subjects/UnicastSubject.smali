###### Class rx.subjects.UnicastSubject (rx.subjects.UnicastSubject)
.class public final Lrx/subjects/UnicastSubject;
.super Lrx/subjects/Subject;
.source "UnicastSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/UnicastSubject$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# instance fields
.field final state:Lrx/subjects/UnicastSubject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/UnicastSubject$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/subjects/UnicastSubject$State;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/UnicastSubject$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    .local p1, "state":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 87
    iput-object p1, p0, Lrx/subjects/UnicastSubject;->state:Lrx/subjects/UnicastSubject$State;

    .line 88
    return-void
.end method

.method public static create()Lrx/subjects/UnicastSubject;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    const/16 v0, 0x10

    invoke-static {v0}, Lrx/subjects/UnicastSubject;->create(I)Lrx/subjects/UnicastSubject;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lrx/subjects/UnicastSubject;
    .registers 3
    .param p0, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lrx/subjects/UnicastSubject$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrx/subjects/UnicastSubject$State;-><init>(ILrx/functions/Action0;)V

    .line 63
    .local v0, "state":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    new-instance v1, Lrx/subjects/UnicastSubject;

    invoke-direct {v1, v0}, Lrx/subjects/UnicastSubject;-><init>(Lrx/subjects/UnicastSubject$State;)V

    return-object v1
.end method

.method public static create(ILrx/functions/Action0;)Lrx/subjects/UnicastSubject;
    .registers 4
    .param p0, "capacityHint"    # I
    .param p1, "onTerminated"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lrx/subjects/UnicastSubject$State;

    invoke-direct {v0, p0, p1}, Lrx/subjects/UnicastSubject$State;-><init>(ILrx/functions/Action0;)V

    .line 82
    .local v0, "state":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    new-instance v1, Lrx/subjects/UnicastSubject;

    invoke-direct {v1, v0}, Lrx/subjects/UnicastSubject;-><init>(Lrx/subjects/UnicastSubject$State;)V

    return-object v1
.end method


# virtual methods
.method public hasObservers()Z
    .registers 2

    .prologue
    .line 107
    .local p0, "this":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/UnicastSubject;->state:Lrx/subjects/UnicastSubject$State;

    iget-object v0, v0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 102
    .local p0, "this":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/UnicastSubject;->state:Lrx/subjects/UnicastSubject$State;

    invoke-virtual {v0}, Lrx/subjects/UnicastSubject$State;->onCompleted()V

    .line 103
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    .local p0, "this":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/UnicastSubject;->state:Lrx/subjects/UnicastSubject$State;

    invoke-virtual {v0, p1}, Lrx/subjects/UnicastSubject$State;->onError(Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/UnicastSubject;->state:Lrx/subjects/UnicastSubject$State;

    invoke-virtual {v0, p1}, Lrx/subjects/UnicastSubject$State;->onNext(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

###### Class rx.subjects.UnicastSubject.State (rx.subjects.UnicastSubject$State)
.class final Lrx/subjects/UnicastSubject$State;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "UnicastSubject.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;
.implements Lrx/Observable$OnSubscribe;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/UnicastSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Observer",
        "<TT;>;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7d831d73a4227baaL


# instance fields
.field volatile caughtUp:Z

.field volatile done:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final subscriber:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/Subscriber",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILrx/functions/Action0;)V
    .registers 5
    .param p1, "capacityHint"    # I
    .param p2, "onTerminated"    # Lrx/functions/Action0;

    .prologue
    .line 143
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 144
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    iput-object v1, p0, Lrx/subjects/UnicastSubject$State;->nl:Lrx/internal/operators/NotificationLite;

    .line 145
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    .line 146
    if-eqz p2, :cond_2a

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    :goto_17
    iput-object v1, p0, Lrx/subjects/UnicastSubject$State;->terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;

    .line 149
    const/4 v1, 0x1

    if-le p1, v1, :cond_32

    .line 150
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v0, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;

    invoke-direct {v0, p1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;-><init>(I)V

    .line 158
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_27
    iput-object v0, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    .line 159
    return-void

    .line 146
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_2a
    const/4 v1, 0x0

    goto :goto_17

    .line 150
    :cond_2c
    new-instance v0, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    invoke-direct {v0, p1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    goto :goto_27

    .line 154
    :cond_32
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_3e

    new-instance v0, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {v0}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_3d
    goto :goto_27

    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_3e
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;

    invoke-direct {v0}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;-><init>()V

    goto :goto_3d
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 115
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/UnicastSubject$State;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 254
    invoke-virtual {p1, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 255
    invoke-virtual {p1, p0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 259
    :goto_f
    return-void

    .line 257
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single subscriber is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method checkTerminated(ZZLrx/Subscriber;)Z
    .registers 7
    .param p1, "done"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    .local p3, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v1, 0x1

    .line 358
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 359
    iget-object v2, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 374
    :goto_c
    return v1

    .line 362
    :cond_d
    if-eqz p1, :cond_22

    .line 363
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->error:Ljava/lang/Throwable;

    .line 364
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1c

    .line 365
    iget-object v2, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 366
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 369
    :cond_1c
    if-eqz p2, :cond_22

    .line 370
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_c

    .line 374
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_22
    const/4 v1, 0x0

    goto :goto_c
.end method

.method doTerminate()V
    .registers 4

    .prologue
    .line 381
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    iget-object v1, p0, Lrx/subjects/UnicastSubject$State;->terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;

    .line 382
    .local v1, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/functions/Action0;>;"
    if-eqz v1, :cond_16

    .line 383
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/functions/Action0;

    .line 384
    .local v0, "a":Lrx/functions/Action0;
    if-eqz v0, :cond_16

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 385
    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 388
    .end local v0    # "a":Lrx/functions/Action0;
    :cond_16
    return-void
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 346
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    return v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const/4 v0, 0x1

    .line 214
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v1, :cond_19

    .line 216
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    .line 218
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 219
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_1f

    .line 221
    monitor-enter p0

    .line 222
    :try_start_f
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_1a

    .line 223
    .local v0, "stillReplay":Z
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1c

    .line 224
    if-eqz v0, :cond_1f

    .line 225
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 231
    .end local v0    # "stillReplay":Z
    :cond_19
    :goto_19
    return-void

    .line 222
    :cond_1a
    const/4 v0, 0x0

    goto :goto_13

    .line 223
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1

    .line 229
    :cond_1f
    iget-object v1, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_19
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const/4 v0, 0x1

    .line 193
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v1, :cond_1b

    .line 195
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    .line 197
    iput-object p1, p0, Lrx/subjects/UnicastSubject$State;->error:Ljava/lang/Throwable;

    .line 198
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 199
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_21

    .line 201
    monitor-enter p0

    .line 202
    :try_start_11
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_1c

    .line 203
    .local v0, "stillReplay":Z
    :goto_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1e

    .line 204
    if-eqz v0, :cond_21

    .line 205
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 211
    .end local v0    # "stillReplay":Z
    :cond_1b
    :goto_1b
    return-void

    .line 202
    :cond_1c
    const/4 v0, 0x0

    goto :goto_15

    .line 203
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1

    .line 209
    :cond_21
    iget-object v1, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v3, :cond_20

    .line 164
    iget-boolean v3, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v3, :cond_24

    .line 165
    const/4 v2, 0x0

    .line 172
    .local v2, "stillReplay":Z
    monitor-enter p0

    .line 173
    :try_start_a
    iget-boolean v3, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v3, :cond_1a

    .line 174
    iget-object v3, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    iget-object v4, p0, Lrx/subjects/UnicastSubject$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 175
    const/4 v2, 0x1

    .line 177
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_21

    .line 178
    if-eqz v2, :cond_24

    .line 179
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 190
    .end local v2    # "stillReplay":Z
    :cond_20
    :goto_20
    return-void

    .line 177
    .restart local v2    # "stillReplay":Z
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v3

    .line 183
    .end local v2    # "stillReplay":Z
    :cond_24
    iget-object v3, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;

    .line 185
    .local v1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_2c
    invoke-virtual {v1, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_20

    .line 186
    :catch_30
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_20
.end method

.method replay()V
    .registers 15

    .prologue
    .line 264
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    monitor-enter p0

    .line 265
    :try_start_1
    iget-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    if-eqz v12, :cond_a

    .line 266
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->missed:Z

    .line 267
    monitor-exit p0

    .line 319
    :cond_9
    :goto_9
    return-void

    .line 269
    :cond_a
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 270
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_72

    .line 271
    iget-object v5, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    .line 273
    .local v5, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_10
    iget-object v12, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/Subscriber;

    .line 274
    .local v8, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v9, 0x0

    .line 275
    .local v9, "unlimited":Z
    if-eqz v8, :cond_5a

    .line 276
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 277
    .local v0, "d":Z
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    .line 279
    .local v1, "empty":Z
    invoke-virtual {p0, v0, v1, v8}, Lrx/subjects/UnicastSubject$State;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 282
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->get()J

    move-result-wide v6

    .line 283
    .local v6, "r":J
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v6, v12

    if-nez v12, :cond_75

    const/4 v9, 0x1

    .line 284
    :goto_35
    const-wide/16 v2, 0x0

    .line 286
    .local v2, "e":J
    :goto_37
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-eqz v12, :cond_4e

    .line 287
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 288
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 289
    .local v10, "v":Ljava/lang/Object;
    if-nez v10, :cond_77

    const/4 v1, 0x1

    .line 290
    :goto_46
    invoke-virtual {p0, v0, v1, v8}, Lrx/subjects/UnicastSubject$State;->checkTerminated(ZZLrx/Subscriber;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 293
    if-eqz v1, :cond_79

    .line 308
    .end local v10    # "v":Ljava/lang/Object;
    :cond_4e
    if-nez v9, :cond_5a

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_5a

    .line 309
    neg-long v12, v2

    invoke-virtual {p0, v12, v13}, Lrx/subjects/UnicastSubject$State;->addAndGet(J)J

    .line 313
    .end local v0    # "d":Z
    .end local v1    # "empty":Z
    .end local v2    # "e":J
    .end local v6    # "r":J
    :cond_5a
    monitor-enter p0

    .line 314
    :try_start_5b
    iget-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->missed:Z

    if-nez v12, :cond_99

    .line 315
    if-eqz v9, :cond_6a

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6a

    .line 316
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    .line 318
    :cond_6a
    const/4 v12, 0x0

    iput-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 319
    monitor-exit p0

    goto :goto_9

    .line 322
    :catchall_6f
    move-exception v12

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_5b .. :try_end_71} :catchall_6f

    throw v12

    .line 270
    .end local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v8    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v9    # "unlimited":Z
    :catchall_72
    move-exception v12

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v12

    .line 283
    .restart local v0    # "d":Z
    .restart local v1    # "empty":Z
    .restart local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v6    # "r":J
    .restart local v8    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v9    # "unlimited":Z
    :cond_75
    const/4 v9, 0x0

    goto :goto_35

    .line 289
    .restart local v2    # "e":J
    .restart local v10    # "v":Ljava/lang/Object;
    :cond_77
    const/4 v1, 0x0

    goto :goto_46

    .line 296
    :cond_79
    iget-object v12, p0, Lrx/subjects/UnicastSubject$State;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v12, v10}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 298
    .local v11, "value":Ljava/lang/Object;, "TT;"
    :try_start_7f
    invoke-virtual {v8, v11}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_82} :catch_89

    .line 305
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 306
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 307
    goto :goto_37

    .line 299
    :catch_89
    move-exception v4

    .line 300
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-interface {v5}, Ljava/util/Queue;->clear()V

    .line 301
    invoke-static {v4}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 302
    invoke-static {v4, v11}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v8, v12}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 321
    .end local v0    # "d":Z
    .end local v1    # "empty":Z
    .end local v2    # "e":J
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v6    # "r":J
    .end local v10    # "v":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;, "TT;"
    :cond_99
    const/4 v12, 0x0

    :try_start_9a
    iput-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->missed:Z

    .line 322
    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_6f

    goto/16 :goto_10
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const-wide/16 v2, 0x0

    .line 235
    cmp-long v0, p1, v2

    if-gez v0, :cond_e

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_e
    cmp-long v0, p1, v2

    if-lez v0, :cond_19

    .line 239
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 240
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 245
    :cond_18
    :goto_18
    return-void

    .line 242
    :cond_19
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-eqz v0, :cond_18

    .line 243
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    goto :goto_18
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const/4 v0, 0x1

    .line 332
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    .line 334
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 335
    monitor-enter p0

    .line 336
    :try_start_7
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    if-eqz v0, :cond_d

    .line 337
    monitor-exit p0

    .line 342
    :goto_c
    return-void

    .line 339
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 340
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_17

    .line 341
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_c

    .line 340
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
