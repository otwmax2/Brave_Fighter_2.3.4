###### Class rx.internal.operators.OnSubscribeCombineLatest (rx.internal.operators.OnSubscribeCombineLatest)
.class public final Lrx/internal/operators/OnSubscribeCombineLatest;
.super Ljava/lang/Object;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;,
        Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
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
.field final bufferSize:I

.field final combiner:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field

.field final delayError:Z

.field final sources:[Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final sourcesIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lrx/functions/FuncN;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "sourcesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    .local p2, "combiner":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    const/4 v1, 0x0

    sget v4, Lrx/internal/util/RxRingBuffer;->SIZE:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeCombineLatest;-><init>([Lrx/Observable;Ljava/lang/Iterable;Lrx/functions/FuncN;IZ)V

    .line 38
    return-void
.end method

.method public constructor <init>([Lrx/Observable;Ljava/lang/Iterable;Lrx/functions/FuncN;IZ)V
    .registers 6
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lrx/Observable",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "sources":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    .local p2, "sourcesIterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    .local p3, "combiner":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:[Lrx/Observable;

    .line 45
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    .line 46
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combiner:Lrx/functions/FuncN;

    .line 47
    iput p4, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->bufferSize:I

    .line 48
    iput-boolean p5, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->delayError:Z

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest;, "Lrx/internal/operators/OnSubscribeCombineLatest<TT;TR;>;"
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    const/4 v2, 0x0

    .line 55
    iget-object v11, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sources:[Lrx/Observable;

    .line 56
    .local v11, "sources":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    const/4 v3, 0x0

    .line 57
    .local v3, "count":I
    if-nez v11, :cond_4e

    .line 58
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_26

    .line 60
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    check-cast v9, Ljava/util/List;

    .line 61
    .local v9, "list":Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lrx/Observable;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lrx/Observable;

    move-object v11, v1

    check-cast v11, [Lrx/Observable;

    .line 62
    array-length v3, v11

    .line 78
    .end local v9    # "list":Ljava/util/List;
    :cond_20
    :goto_20
    if-nez v3, :cond_50

    .line 79
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 85
    :goto_25
    return-void

    .line 64
    :cond_26
    const/16 v1, 0x8

    new-array v11, v1, [Lrx/Observable;

    .line 65
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->sourcesIterable:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/Observable;

    .line 66
    .local v10, "p":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    array-length v1, v11

    if-ne v3, v1, :cond_48

    .line 67
    shr-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v3

    new-array v6, v1, [Lrx/Observable;

    .line 68
    .local v6, "b":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    invoke-static {v11, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    move-object v11, v6

    .line 71
    .end local v6    # "b":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    :cond_48
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "count":I
    .local v7, "count":I
    aput-object v10, v11, v3

    move v3, v7

    .line 72
    .end local v7    # "count":I
    .restart local v3    # "count":I
    goto :goto_30

    .line 75
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "p":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :cond_4e
    array-length v3, v11

    goto :goto_20

    .line 83
    :cond_50
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->combiner:Lrx/functions/FuncN;

    iget v4, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->bufferSize:I

    iget-boolean v5, p0, Lrx/internal/operators/OnSubscribeCombineLatest;->delayError:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;-><init>(Lrx/Subscriber;Lrx/functions/FuncN;IIZ)V

    .line 84
    .local v0, "lc":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-virtual {v0, v11}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribe([Lrx/Observable;)V

    goto :goto_25
.end method

###### Class rx.internal.operators.OnSubscribeCombineLatest.CombinerSubscriber (rx.internal.operators.OnSubscribeCombineLatest$CombinerSubscriber)
.class final Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CombinerSubscriber"
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
.field done:Z

.field final index:I

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;I)V
    .registers 5
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator",
            "<TT;TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    .local p1, "parent":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 366
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    .line 367
    iput p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    .line 368
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 369
    iget v0, p1, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->bufferSize:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->request(J)V

    .line 370
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 393
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 398
    :goto_4
    return-void

    .line 396
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    .line 397
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    const/4 v1, 0x0

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 382
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 383
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 389
    :goto_7
    return-void

    .line 386
    :cond_8
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->onError(Ljava/lang/Throwable;)V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    .line 388
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    const/4 v1, 0x0

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->done:Z

    if-eqz v0, :cond_5

    .line 378
    :goto_4
    return-void

    .line 377
    :cond_5
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->parent:Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->index:I

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combine(Ljava/lang/Object;I)V

    goto :goto_4
.end method

.method public requestMore(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 401
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->request(J)V

    .line 402
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeCombineLatest.LatestCoordinator (rx.internal.operators.OnSubscribeCombineLatest$LatestCoordinator)
.class final Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "OnSubscribeCombineLatest.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final MISSING:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x76e7117251786db1L


# instance fields
.field active:I

.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field volatile cancelled:Z

.field final combiner:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field

.field complete:I

.field final delayError:Z

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

.field final latest:[Ljava/lang/Object;

.field final queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/atomic/SpscLinkedArrayQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;IIZ)V
    .registers 8
    .param p3, "count"    # I
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "combiner":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 116
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Lrx/Subscriber;

    .line 117
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combiner:Lrx/functions/FuncN;

    .line 118
    iput p4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->bufferSize:I

    .line 119
    iput-boolean p5, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->delayError:Z

    .line 120
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    sget-object v1, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    new-array v0, p3, [Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    .line 123
    new-instance v0, Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    invoke-direct {v0, p4}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 126
    return-void
.end method


# virtual methods
.method cancel(Ljava/util/Queue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 175
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    .local v0, "arr$":[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_11

    aget-object v3, v0, v1

    .line 176
    .local v3, "s":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    invoke-virtual {v3}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->unsubscribe()V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 178
    .end local v3    # "s":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    :cond_11
    return-void
.end method

.method checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;Z)Z
    .registers 9
    .param p1, "mainDone"    # Z
    .param p2, "queueEmpty"    # Z
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber",
            "<*>;",
            "Ljava/util/Queue",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p3, "childSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    const/4 v1, 0x1

    .line 303
    iget-boolean v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    if-eqz v2, :cond_9

    .line 304
    invoke-virtual {p0, p4}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 331
    :goto_8
    return v1

    .line 307
    :cond_9
    if-eqz p1, :cond_38

    .line 308
    if-eqz p5, :cond_21

    .line 309
    if-eqz p2, :cond_38

    .line 310
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 311
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1d

    .line 312
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 314
    :cond_1d
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_8

    .line 319
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_21
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 320
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_32

    .line 321
    invoke-virtual {p0, p4}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 322
    invoke-virtual {p3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 325
    :cond_32
    if-eqz p2, :cond_38

    .line 326
    invoke-virtual {p3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_8

    .line 331
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_38
    const/4 v1, 0x0

    goto :goto_8
.end method

.method combine(Ljava/lang/Object;I)V
    .registers 13
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 187
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    aget-object v2, v8, p2

    .line 194
    .local v2, "combinerSubscriber":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    monitor-enter p0

    .line 195
    :try_start_7
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    array-length v6, v8

    .line 196
    .local v6, "sourceCount":I
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    aget-object v5, v8, p2

    .line 197
    .local v5, "o":Ljava/lang/Object;
    iget v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->active:I

    .line 198
    .local v0, "activeCount":I
    sget-object v8, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    if-ne v5, v8, :cond_18

    .line 199
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->active:I

    .line 201
    :cond_18
    iget v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->complete:I

    .line 202
    .local v3, "completedCount":I
    if-nez p1, :cond_48

    .line 203
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->complete:I

    .line 207
    :goto_20
    if-ne v0, v6, :cond_56

    move v1, v7

    .line 209
    .local v1, "allSourcesFinished":Z
    :goto_23
    if-eq v3, v6, :cond_2b

    if-nez p1, :cond_2c

    sget-object v8, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    if-ne v5, v8, :cond_2c

    :cond_2b
    move v4, v7

    .line 211
    .local v4, "empty":Z
    :cond_2c
    if-nez v4, :cond_6e

    .line 212
    if-eqz p1, :cond_58

    if-eqz v1, :cond_58

    .line 213
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    invoke-virtual {v8}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lrx/internal/util/atomic/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    :cond_3d
    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_53

    .line 222
    if-nez v1, :cond_72

    if-eqz p1, :cond_72

    .line 223
    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->requestMore(J)V

    .line 227
    :goto_47
    return-void

    .line 205
    .end local v1    # "allSourcesFinished":Z
    .end local v4    # "empty":Z
    :cond_48
    :try_start_48
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    iget-object v9, v2, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, p1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, p2

    goto :goto_20

    .line 221
    .end local v0    # "activeCount":I
    .end local v3    # "completedCount":I
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "sourceCount":I
    :catchall_53
    move-exception v7

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_53

    throw v7

    .restart local v0    # "activeCount":I
    .restart local v3    # "completedCount":I
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v6    # "sourceCount":I
    :cond_56
    move v1, v4

    .line 207
    goto :goto_23

    .line 215
    .restart local v1    # "allSourcesFinished":Z
    .restart local v4    # "empty":Z
    :cond_58
    if-nez p1, :cond_3d

    :try_start_5a
    iget-object v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3d

    sget-object v7, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->MISSING:Ljava/lang/Object;

    if-eq v5, v7, :cond_6a

    iget-boolean v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->delayError:Z

    if-nez v7, :cond_3d

    .line 216
    :cond_6a
    const/4 v7, 0x1

    iput-boolean v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z

    goto :goto_3d

    .line 219
    :cond_6e
    const/4 v7, 0x1

    iput-boolean v7, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z
    :try_end_71
    .catchall {:try_start_5a .. :try_end_71} :catchall_53

    goto :goto_3d

    .line 226
    :cond_72
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->drain()V

    goto :goto_47
.end method

.method drain()V
    .registers 21

    .prologue
    .line 229
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_7

    .line 299
    :cond_6
    :goto_6
    return-void

    .line 233
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    .line 234
    .local v6, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Lrx/Subscriber;

    .line 235
    .local v5, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->delayError:Z

    .line 236
    .local v7, "delayError":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 238
    .local v13, "localRequested":Ljava/util/concurrent/atomic/AtomicLong;
    const/4 v14, 0x1

    .line 241
    .local v14, "missed":I
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 245
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    .line 246
    .local v16, "requestAmount":J
    const-wide/16 v10, 0x0

    .line 248
    .local v10, "emitted":J
    :goto_2e
    cmp-long v2, v10, v16

    if-eqz v2, :cond_49

    .line 250
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->done:Z

    .line 252
    .local v3, "d":Z
    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    .line 253
    .local v9, "cs":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    if-nez v9, :cond_65

    const/4 v4, 0x1

    .local v4, "empty":Z
    :goto_3f
    move-object/from16 v2, p0

    .line 255
    invoke-virtual/range {v2 .. v7}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;Z)Z

    move-result v2

    if-nez v2, :cond_6

    .line 259
    if-eqz v4, :cond_67

    .line 290
    .end local v3    # "d":Z
    .end local v4    # "empty":Z
    .end local v9    # "cs":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    :cond_49
    const-wide/16 v18, 0x0

    cmp-long v2, v10, v18

    if-eqz v2, :cond_5b

    const-wide v18, 0x7fffffffffffffffL

    cmp-long v2, v16, v18

    if-eqz v2, :cond_5b

    .line 291
    invoke-static {v13, v10, v11}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 294
    :cond_5b
    neg-int v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->addAndGet(I)I

    move-result v14

    .line 295
    if-nez v14, :cond_18

    goto :goto_6

    .line 253
    .restart local v3    # "d":Z
    .restart local v9    # "cs":Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber<TT;TR;>;"
    :cond_65
    const/4 v4, 0x0

    goto :goto_3f

    .line 263
    .restart local v4    # "empty":Z
    :cond_67
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 264
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, [Ljava/lang/Object;

    .line 266
    .local v8, "array":[Ljava/lang/Object;
    if-nez v8, :cond_8d

    .line 267
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 269
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v18, "Broken queue?! Sender received but not the array."

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 275
    :cond_8d
    :try_start_8d
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->combiner:Lrx/functions/FuncN;

    invoke-interface {v2, v8}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_94} :catch_a4

    move-result-object v15

    .line 283
    .local v15, "v":Ljava/lang/Object;, "TR;"
    invoke-virtual {v5, v15}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 285
    const-wide/16 v18, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;->requestMore(J)V

    .line 287
    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    .line 288
    goto :goto_2e

    .line 276
    .end local v15    # "v":Ljava/lang/Object;, "TR;"
    :catch_a4
    move-exception v12

    .line 277
    .local v12, "ex":Ljava/lang/Throwable;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    .line 278
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 279
    invoke-virtual {v5, v12}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_6
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    return v0
.end method

.method onError(Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 335
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 337
    .local v3, "localError":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 339
    .local v1, "curr":Ljava/lang/Throwable;
    if-eqz v1, :cond_3c

    .line 340
    instance-of v5, v1, Lrx/exceptions/CompositeException;

    if-eqz v5, :cond_29

    move-object v0, v1

    .line 341
    check-cast v0, Lrx/exceptions/CompositeException;

    .line 342
    .local v0, "ce":Lrx/exceptions/CompositeException;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    .local v2, "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v4, Lrx/exceptions/CompositeException;

    invoke-direct {v4, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 351
    .end local v0    # "ce":Lrx/exceptions/CompositeException;
    .end local v2    # "es":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .local v4, "next":Ljava/lang/Throwable;
    :goto_22
    invoke-virtual {v3, v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 352
    return-void

    .line 346
    .end local v4    # "next":Ljava/lang/Throwable;
    :cond_29
    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .restart local v4    # "next":Ljava/lang/Throwable;
    goto :goto_22

    .line 349
    .end local v4    # "next":Ljava/lang/Throwable;
    :cond_3c
    move-object v4, p1

    .restart local v4    # "next":Ljava/lang/Throwable;
    goto :goto_22
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    const-wide/16 v2, 0x0

    .line 148
    cmp-long v0, p1, v2

    if-gez v0, :cond_1f

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1f
    cmp-long v0, p1, v2

    if-eqz v0, :cond_2b

    .line 152
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 153
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->drain()V

    .line 155
    :cond_2b
    return-void
.end method

.method public subscribe([Lrx/Observable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "sources":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->subscribers:[Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    .line 131
    .local v0, "as":[Lrx/Subscriber;, "[Lrx/Subscriber<TT;>;"
    array-length v2, v0

    .line 132
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v2, :cond_10

    .line 133
    new-instance v3, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;

    invoke-direct {v3, p0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$CombinerSubscriber;-><init>(Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;I)V

    aput-object v3, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 135
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->lazySet(I)V

    .line 136
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Lrx/Subscriber;

    invoke-virtual {v3, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 137
    iget-object v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->actual:Lrx/Subscriber;

    invoke-virtual {v3, p0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 138
    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v2, :cond_25

    .line 139
    iget-boolean v3, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    if-eqz v3, :cond_26

    .line 144
    :cond_25
    return-void

    .line 142
    :cond_26
    aget-object v3, p1, v1

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;, "Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator<TT;TR;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    if-nez v0, :cond_12

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancelled:Z

    .line 162
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_12

    .line 163
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->queue:Lrx/internal/util/atomic/SpscLinkedArrayQueue;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeCombineLatest$LatestCoordinator;->cancel(Ljava/util/Queue;)V

    .line 166
    :cond_12
    return-void
.end method
