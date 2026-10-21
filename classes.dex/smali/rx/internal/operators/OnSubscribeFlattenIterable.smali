###### Class rx.internal.operators.OnSubscribeFlattenIterable (rx.internal.operators.OnSubscribeFlattenIterable)
.class public final Lrx/internal/operators/OnSubscribeFlattenIterable;
.super Ljava/lang/Object;
.source "OnSubscribeFlattenIterable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;,
        Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final prefetch:I

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/Observable;Lrx/functions/Func1;I)V
    .registers 4
    .param p3, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable<TT;TR;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->source:Lrx/Observable;

    .line 50
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->mapper:Lrx/functions/Func1;

    .line 51
    iput p3, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->prefetch:I

    .line 52
    return-void
.end method

.method public static createFrom(Lrx/Observable;Lrx/functions/Func1;I)Lrx/Observable;
    .registers 5
    .param p2, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    instance-of v1, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_14

    .line 72
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p0}, Lrx/internal/util/ScalarSynchronousObservable;->get()Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "scalar":Ljava/lang/Object;, "TT;"
    new-instance v1, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    .line 75
    .end local v0    # "scalar":Ljava/lang/Object;, "TT;"
    :goto_13
    return-object v1

    .restart local p0    # "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_14
    new-instance v1, Lrx/internal/operators/OnSubscribeFlattenIterable;

    invoke-direct {v1, p0, p1, p2}, Lrx/internal/operators/OnSubscribeFlattenIterable;-><init>(Lrx/Observable;Lrx/functions/Func1;I)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    goto :goto_13
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeFlattenIterable;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable<TT;TR;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->mapper:Lrx/functions/Func1;

    iget v2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->prefetch:I

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/Func1;I)V

    .line 58
    .local v0, "parent":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 59
    new-instance v1, Lrx/internal/operators/OnSubscribeFlattenIterable$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OnSubscribeFlattenIterable$1;-><init>(Lrx/internal/operators/OnSubscribeFlattenIterable;Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 66
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable;->source:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 67
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeFlattenIterable.AnonymousClass1 (rx.internal.operators.OnSubscribeFlattenIterable$1)
.class Lrx/internal/operators/OnSubscribeFlattenIterable$1;
.super Ljava/lang/Object;
.source "OnSubscribeFlattenIterable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeFlattenIterable;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeFlattenIterable;

.field final synthetic val$parent:Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeFlattenIterable;Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;)V
    .registers 3

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$1;, "Lrx/internal/operators/OnSubscribeFlattenIterable.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$1;->this$0:Lrx/internal/operators/OnSubscribeFlattenIterable;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$1;->val$parent:Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$1;, "Lrx/internal/operators/OnSubscribeFlattenIterable.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$1;->val$parent:Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->requestMore(J)V

    .line 63
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeFlattenIterable.FlattenIterableSubscriber (rx.internal.operators.OnSubscribeFlattenIterable$FlattenIterableSubscriber)
.class final Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeFlattenIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFlattenIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlattenIterableSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field active:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final limit:J

.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field produced:J

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

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;I)V
    .registers 6
    .param p3, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 103
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->actual:Lrx/Subscriber;

    .line 104
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->mapper:Lrx/functions/Func1;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 108
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 109
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_3c

    .line 110
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->limit:J

    .line 111
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->queue:Ljava/util/Queue;

    .line 121
    :goto_37
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->request(J)V

    .line 122
    return-void

    .line 114
    :cond_3c
    shr-int/lit8 v0, p3, 0x2

    sub-int v0, p3, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->limit:J

    .line 115
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 116
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    invoke-direct {v0, p3}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->queue:Ljava/util/Queue;

    goto :goto_37

    .line 118
    :cond_51
    new-instance v0, Lrx/internal/util/atomic/SpscAtomicArrayQueue;

    invoke-direct {v0, p3}, Lrx/internal/util/atomic/SpscAtomicArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->queue:Ljava/util/Queue;

    goto :goto_37
.end method


# virtual methods
.method checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z
    .registers 9
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<*>;",
            "Ljava/util/Queue",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    .local p3, "a":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 289
    invoke-virtual {p3}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 290
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 291
    iput-object v3, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 313
    :goto_d
    return v1

    .line 295
    :cond_e
    if-eqz p1, :cond_32

    .line 296
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 297
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_2c

    .line 298
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->unsubscribe()V

    .line 300
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 301
    iput-object v3, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 303
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 306
    :cond_2c
    if-eqz p2, :cond_32

    .line 308
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_d

    .line 313
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_32
    const/4 v1, 0x0

    goto :goto_d
.end method

.method drain()V
    .registers 27

    .prologue
    .line 160
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v21

    if-eqz v21, :cond_d

    .line 286
    :cond_c
    :goto_c
    return-void

    .line 164
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->actual:Lrx/Subscriber;

    .line 165
    .local v4, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->queue:Ljava/util/Queue;

    move-object/from16 v16, v0

    .line 167
    .local v16, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v13, 0x1

    .line 171
    .local v13, "missed":I
    :cond_18
    :goto_18
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 173
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    if-nez v11, :cond_7e

    .line 174
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    .line 176
    .local v6, "d":Z
    invoke-interface/range {v16 .. v16}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v17

    .line 178
    .local v17, "v":Ljava/lang/Object;
    if-nez v17, :cond_11e

    const/4 v7, 0x1

    .line 180
    .local v7, "empty":Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v7, v4, v1}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 184
    if-nez v7, :cond_7e

    .line 186
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->produced:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v14, v22, v24

    .line 187
    .local v14, "p":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->limit:J

    move-wide/from16 v22, v0

    cmp-long v21, v14, v22

    if-nez v21, :cond_121

    .line 188
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->produced:J

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->request(J)V

    .line 197
    :goto_56
    :try_start_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->mapper:Lrx/functions/Func1;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    .line 199
    .local v12, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 201
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_77} :catch_127

    move-result v5

    .line 210
    .local v5, "b":Z
    if-eqz v5, :cond_18

    .line 214
    move-object/from16 v0, p0

    iput-object v11, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 218
    .end local v5    # "b":Z
    .end local v6    # "d":Z
    .end local v7    # "empty":Z
    .end local v12    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .end local v14    # "p":J
    .end local v17    # "v":Ljava/lang/Object;
    :cond_7e
    if-eqz v11, :cond_10d

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    .line 220
    .local v18, "r":J
    const-wide/16 v8, 0x0

    .line 222
    .local v8, "e":J
    :cond_8c
    cmp-long v21, v8, v18

    if-eqz v21, :cond_d8

    .line 223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 230
    :try_start_a6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a9} :catch_132

    move-result-object v20

    .line 239
    .local v20, "v":Ljava/lang/Object;, "TR;"
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 245
    const-wide/16 v22, 0x1

    add-long v8, v8, v22

    .line 250
    :try_start_c9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_cc} :catch_145

    move-result v5

    .line 259
    .restart local v5    # "b":Z
    if-nez v5, :cond_8c

    .line 260
    const/4 v11, 0x0

    .line 261
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 266
    .end local v5    # "b":Z
    .end local v20    # "v":Ljava/lang/Object;, "TR;"
    :cond_d8
    :goto_d8
    cmp-long v21, v8, v18

    if-nez v21, :cond_fa

    .line 267
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    move/from16 v22, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Queue;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_158

    if-nez v11, :cond_158

    const/16 v21, 0x1

    :goto_ec
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 272
    :cond_fa
    const-wide/16 v22, 0x0

    cmp-long v21, v8, v22

    if-eqz v21, :cond_10b

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v8, v9}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 276
    :cond_10b
    if-eqz v11, :cond_18

    .line 281
    .end local v8    # "e":J
    .end local v18    # "r":J
    :cond_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    neg-int v0, v13

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v13

    .line 282
    if-nez v13, :cond_18

    goto/16 :goto_c

    .line 178
    .restart local v6    # "d":Z
    .restart local v17    # "v":Ljava/lang/Object;
    :cond_11e
    const/4 v7, 0x0

    goto/16 :goto_29

    .line 191
    .restart local v7    # "empty":Z
    .restart local v14    # "p":J
    :cond_121
    move-object/from16 v0, p0

    iput-wide v14, v0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->produced:J

    goto/16 :goto_56

    .line 202
    :catch_127
    move-exception v10

    .line 203
    .local v10, "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 231
    .end local v6    # "d":Z
    .end local v7    # "empty":Z
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v14    # "p":J
    .end local v17    # "v":Ljava/lang/Object;
    .restart local v8    # "e":J
    .restart local v18    # "r":J
    :catch_132
    move-exception v10

    .line 232
    .restart local v10    # "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 233
    const/4 v11, 0x0

    .line 234
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 235
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_d8

    .line 251
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v20    # "v":Ljava/lang/Object;, "TR;"
    :catch_145
    move-exception v10

    .line 252
    .restart local v10    # "ex":Ljava/lang/Throwable;
    invoke-static {v10}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 253
    const/4 v11, 0x0

    .line 254
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->active:Ljava/util/Iterator;

    .line 255
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_d8

    .line 267
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v20    # "v":Ljava/lang/Object;, "TR;"
    :cond_158
    const/16 v21, 0x0

    goto :goto_ec
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 146
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    .line 147
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->drain()V

    .line 148
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 136
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->done:Z

    .line 138
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->drain()V

    .line 142
    :goto_e
    return-void

    .line 140
    :cond_f
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 127
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->unsubscribe()V

    .line 128
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 132
    :goto_19
    return-void

    .line 131
    :cond_1a
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->drain()V

    goto :goto_19
.end method

.method requestMore(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;, "Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber<TT;TR;>;"
    const-wide/16 v2, 0x0

    .line 151
    cmp-long v0, p1, v2

    if-lez v0, :cond_f

    .line 152
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 153
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFlattenIterable$FlattenIterableSubscriber;->drain()V

    .line 157
    :cond_e
    return-void

    .line 154
    :cond_f
    cmp-long v0, p1, v2

    if-gez v0, :cond_e

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class rx.internal.operators.OnSubscribeFlattenIterable.OnSubscribeScalarFlattenIterable (rx.internal.operators.OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable)
.class final Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;
.super Ljava/lang/Object;
.source "OnSubscribeFlattenIterable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFlattenIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OnSubscribeScalarFlattenIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final mapper:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "mapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->value:Ljava/lang/Object;

    .line 331
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->mapper:Lrx/functions/Func1;

    .line 332
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 324
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;, "Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable<TT;TR;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->mapper:Lrx/functions/Func1;

    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 341
    .local v2, "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 343
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_18

    move-result v0

    .line 349
    .local v0, "b":Z
    if-nez v0, :cond_1f

    .line 350
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 355
    .end local v0    # "b":Z
    .end local v2    # "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    :goto_17
    return-void

    .line 344
    :catch_18
    move-exception v1

    .line 345
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable;->value:Ljava/lang/Object;

    invoke-static {v1, p1, v4}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_17

    .line 354
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    .restart local v2    # "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    :cond_1f
    new-instance v4, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;

    invoke-direct {v4, p1, v3}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;-><init>(Lrx/Subscriber;Ljava/util/Iterator;)V

    invoke-virtual {p1, v4}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_17
.end method
