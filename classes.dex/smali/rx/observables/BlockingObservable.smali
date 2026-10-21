###### Class rx.observables.BlockingObservable (rx.observables.BlockingObservable)
.class public final Lrx/observables/BlockingObservable;
.super Ljava/lang/Object;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ON_START:Ljava/lang/Object;

.field static final SET_PRODUCER:Ljava/lang/Object;

.field static final UNSUBSCRIBE:Ljava/lang/Object;


# instance fields
.field private final o:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observables/BlockingObservable;->ON_START:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observables/BlockingObservable;->SET_PRODUCER:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observables/BlockingObservable;->UNSUBSCRIBE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    .line 66
    return-void
.end method

.method private blockForSingle(Lrx/Observable;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "observable":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 440
    .local v2, "returnItem":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 441
    .local v1, "returnException":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 444
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lrx/observables/BlockingObservable$3;

    invoke-direct {v4, p0, v0, v1, v2}, Lrx/observables/BlockingObservable$3;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v3

    .line 461
    .local v3, "subscription":Lrx/Subscription;
    invoke-static {v0, v3}, Lrx/internal/util/BlockingUtils;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;)V

    .line 463
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 464
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 467
    :cond_2b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public static from(Lrx/Observable;)Lrx/observables/BlockingObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/observables/BlockingObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "o":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/observables/BlockingObservable;

    invoke-direct {v0, p0}, Lrx/observables/BlockingObservable;-><init>(Lrx/Observable;)V

    return-object v0
.end method


# virtual methods
.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->first()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first(Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->first(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public firstOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->firstOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public firstOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->firstOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Lrx/functions/Action1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 105
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 112
    .local v0, "exceptionFromOnError":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    iget-object v3, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    new-instance v4, Lrx/observables/BlockingObservable$1;

    invoke-direct {v4, p0, v1, v0, p1}, Lrx/observables/BlockingObservable$1;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Action1;)V

    invoke-virtual {v3, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v2

    .line 137
    .local v2, "subscription":Lrx/Subscription;
    invoke-static {v1, v2}, Lrx/internal/util/BlockingUtils;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;)V

    .line 139
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 140
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 142
    :cond_28
    return-void
.end method

.method public getIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorToIterator;->toIterator(Lrx/Observable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->last()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last(Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->last(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->lastOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->lastOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public latest()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorLatest;->latest(Lrx/Observable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public mostRecent(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0, p1}, Lrx/internal/operators/BlockingOperatorMostRecent;->mostRecent(Lrx/Observable;Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorNext;->next(Lrx/Observable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public single()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public single(Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->single(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public singleOrDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public singleOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subscribe()V
    .registers 8
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 476
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 477
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v4, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v4, v2, v6

    .line 479
    .local v2, "error":[Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    new-instance v5, Lrx/observables/BlockingObservable$4;

    invoke-direct {v5, p0, v2, v0}, Lrx/observables/BlockingObservable$4;-><init>(Lrx/observables/BlockingObservable;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v3

    .line 496
    .local v3, "s":Lrx/Subscription;
    invoke-static {v0, v3}, Lrx/internal/util/BlockingUtils;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;)V

    .line 497
    aget-object v1, v2, v6

    .line 498
    .local v1, "e":Ljava/lang/Throwable;
    if-eqz v1, :cond_21

    .line 499
    invoke-static {v1}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 501
    :cond_21
    return-void
.end method

.method public subscribe(Lrx/Observer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    .line 511
    .local v1, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 514
    .local v3, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Object;>;"
    iget-object v5, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    new-instance v6, Lrx/observables/BlockingObservable$5;

    invoke-direct {v6, p0, v3, v1}, Lrx/observables/BlockingObservable$5;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;Lrx/internal/operators/NotificationLite;)V

    invoke-virtual {v5, v6}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v4

    .line 531
    .local v4, "s":Lrx/Subscription;
    :cond_14
    :try_start_14
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 532
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_1e

    .line 533
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    .line 535
    :cond_1e
    invoke-virtual {v1, p1, v2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_21} :catch_28
    .catchall {:try_start_14 .. :try_end_21} :catchall_37

    move-result v5

    if-eqz v5, :cond_14

    .line 543
    invoke-interface {v4}, Lrx/Subscription;->unsubscribe()V

    .line 545
    .end local v2    # "o":Ljava/lang/Object;
    :goto_27
    return-void

    .line 539
    :catch_28
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 541
    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_37

    .line 543
    invoke-interface {v4}, Lrx/Subscription;->unsubscribe()V

    goto :goto_27

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_37
    move-exception v5

    invoke-interface {v4}, Lrx/Subscription;->unsubscribe()V

    throw v5
.end method

.method public subscribe(Lrx/Subscriber;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v7, 0x0

    .line 557
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    .line 558
    .local v1, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 559
    .local v3, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Object;>;"
    const/4 v6, 0x1

    new-array v5, v6, [Lrx/Producer;

    const/4 v6, 0x0

    aput-object v6, v5, v7

    .line 561
    .local v5, "theProducer":[Lrx/Producer;
    new-instance v4, Lrx/observables/BlockingObservable$6;

    invoke-direct {v4, p0, v3, v1, v5}, Lrx/observables/BlockingObservable$6;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;Lrx/internal/operators/NotificationLite;[Lrx/Producer;)V

    .line 587
    .local v4, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v4}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 588
    new-instance v6, Lrx/observables/BlockingObservable$7;

    invoke-direct {v6, p0, v3}, Lrx/observables/BlockingObservable$7;-><init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;)V

    invoke-static {v6}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v6

    invoke-virtual {p1, v6}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 595
    iget-object v6, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-virtual {v6, v4}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 599
    :cond_29
    :goto_29
    :try_start_29
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_4f
    .catchall {:try_start_29 .. :try_end_2c} :catchall_69

    move-result v6

    if-eqz v6, :cond_33

    .line 623
    :cond_2f
    invoke-virtual {v4}, Lrx/Subscriber;->unsubscribe()V

    .line 625
    :goto_32
    return-void

    .line 602
    :cond_33
    :try_start_33
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 603
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_3d

    .line 604
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    .line 606
    :cond_3d
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v6

    if-nez v6, :cond_2f

    sget-object v6, Lrx/observables/BlockingObservable;->UNSUBSCRIBE:Ljava/lang/Object;

    if-eq v2, v6, :cond_2f

    .line 609
    sget-object v6, Lrx/observables/BlockingObservable;->ON_START:Ljava/lang/Object;

    if-ne v2, v6, :cond_5e

    .line 610
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_4e} :catch_4f
    .catchall {:try_start_33 .. :try_end_4e} :catchall_69

    goto :goto_29

    .line 619
    .end local v2    # "o":Ljava/lang/Object;
    :catch_4f
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_50
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 621
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_69

    .line 623
    invoke-virtual {v4}, Lrx/Subscriber;->unsubscribe()V

    goto :goto_32

    .line 612
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_5e
    :try_start_5e
    sget-object v6, Lrx/observables/BlockingObservable;->SET_PRODUCER:Ljava/lang/Object;

    if-ne v2, v6, :cond_6e

    .line 613
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {p1, v6}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V
    :try_end_68
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_68} :catch_4f
    .catchall {:try_start_5e .. :try_end_68} :catchall_69

    goto :goto_29

    .line 623
    .end local v2    # "o":Ljava/lang/Object;
    :catchall_69
    move-exception v6

    invoke-virtual {v4}, Lrx/Subscriber;->unsubscribe()V

    throw v6

    .line 615
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_6e
    :try_start_6e
    invoke-virtual {v1, p1, v2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_71} :catch_4f
    .catchall {:try_start_6e .. :try_end_71} :catchall_69

    move-result v6

    if-eqz v6, :cond_29

    .line 623
    invoke-virtual {v4}, Lrx/Subscriber;->unsubscribe()V

    goto :goto_32
.end method

.method public subscribe(Lrx/functions/Action1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 640
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lrx/observables/BlockingObservable$8;

    invoke-direct {v0, p0}, Lrx/observables/BlockingObservable$8;-><init>(Lrx/observables/BlockingObservable;)V

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lrx/observables/BlockingObservable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    .line 646
    return-void
.end method

.method public subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lrx/observables/BlockingObservable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    .line 657
    return-void
.end method

.method public subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .registers 5
    .param p3, "onCompleted"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 668
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    new-instance v0, Lrx/observables/BlockingObservable$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/observables/BlockingObservable$9;-><init>(Lrx/observables/BlockingObservable;Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/observables/BlockingObservable;->subscribe(Lrx/Observer;)V

    .line 684
    return-void
.end method

.method public toFuture()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/BlockingObservable;->o:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorToFuture;->toFuture(Lrx/Observable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lrx/observables/BlockingObservable;, "Lrx/observables/BlockingObservable<TT;>;"
    new-instance v0, Lrx/observables/BlockingObservable$2;

    invoke-direct {v0, p0}, Lrx/observables/BlockingObservable$2;-><init>(Lrx/observables/BlockingObservable;)V

    return-object v0
.end method

###### Class rx.observables.BlockingObservable.AnonymousClass1 (rx.observables.BlockingObservable$1)
.class Lrx/observables/BlockingObservable$1;
.super Lrx/Subscriber;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->forEach(Lrx/functions/Action1;)V
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
.field final synthetic this$0:Lrx/observables/BlockingObservable;

.field final synthetic val$exceptionFromOnError:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$onNext:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Action1;)V
    .registers 5

    .prologue
    .line 112
    .local p0, "this":Lrx/observables/BlockingObservable$1;, "Lrx/observables/BlockingObservable.1;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$1;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/observables/BlockingObservable$1;->val$exceptionFromOnError:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lrx/observables/BlockingObservable$1;->val$onNext:Lrx/functions/Action1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 115
    .local p0, "this":Lrx/observables/BlockingObservable$1;, "Lrx/observables/BlockingObservable.1;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 116
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    .local p0, "this":Lrx/observables/BlockingObservable$1;, "Lrx/observables/BlockingObservable.1;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$1;->val$exceptionFromOnError:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lrx/observables/BlockingObservable$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 130
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
    .line 134
    .local p0, "this":Lrx/observables/BlockingObservable$1;, "Lrx/observables/BlockingObservable.1;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$1;->val$onNext:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

###### Class rx.observables.BlockingObservable.AnonymousClass2 (rx.observables.BlockingObservable$2)
.class Lrx/observables/BlockingObservable$2;
.super Ljava/lang/Object;
.source "BlockingObservable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->toIterable()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lrx/observables/BlockingObservable;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;)V
    .registers 2

    .prologue
    .line 423
    .local p0, "this":Lrx/observables/BlockingObservable$2;, "Lrx/observables/BlockingObservable.2;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$2;->this$0:Lrx/observables/BlockingObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lrx/observables/BlockingObservable$2;, "Lrx/observables/BlockingObservable.2;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$2;->this$0:Lrx/observables/BlockingObservable;

    invoke-virtual {v0}, Lrx/observables/BlockingObservable;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

###### Class rx.observables.BlockingObservable.AnonymousClass3 (rx.observables.BlockingObservable$3)
.class Lrx/observables/BlockingObservable$3;
.super Lrx/Subscriber;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->blockForSingle(Lrx/Observable;)Ljava/lang/Object;
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
.field final synthetic this$0:Lrx/observables/BlockingObservable;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5

    .prologue
    .line 444
    .local p0, "this":Lrx/observables/BlockingObservable$3;, "Lrx/observables/BlockingObservable.3;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$3;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/observables/BlockingObservable$3;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lrx/observables/BlockingObservable$3;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 447
    .local p0, "this":Lrx/observables/BlockingObservable$3;, "Lrx/observables/BlockingObservable.3;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 448
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 452
    .local p0, "this":Lrx/observables/BlockingObservable$3;, "Lrx/observables/BlockingObservable.3;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$3;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lrx/observables/BlockingObservable$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 454
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
    .line 458
    .local p0, "this":Lrx/observables/BlockingObservable$3;, "Lrx/observables/BlockingObservable.3;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$3;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 459
    return-void
.end method

###### Class rx.observables.BlockingObservable.AnonymousClass4 (rx.observables.BlockingObservable$4)
.class Lrx/observables/BlockingObservable$4;
.super Lrx/Subscriber;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->subscribe()V
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
.field final synthetic this$0:Lrx/observables/BlockingObservable;

.field final synthetic val$cdl:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$error:[Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;[Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .prologue
    .line 479
    .local p0, "this":Lrx/observables/BlockingObservable$4;, "Lrx/observables/BlockingObservable.4;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$4;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$4;->val$error:[Ljava/lang/Throwable;

    iput-object p3, p0, Lrx/observables/BlockingObservable$4;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 492
    .local p0, "this":Lrx/observables/BlockingObservable$4;, "Lrx/observables/BlockingObservable.4;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$4;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 493
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 486
    .local p0, "this":Lrx/observables/BlockingObservable$4;, "Lrx/observables/BlockingObservable.4;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$4;->val$error:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 487
    iget-object v0, p0, Lrx/observables/BlockingObservable$4;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 488
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lrx/observables/BlockingObservable$4;, "Lrx/observables/BlockingObservable.4;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

###### Class rx.observables.BlockingObservable.AnonymousClass5 (rx.observables.BlockingObservable$5)
.class Lrx/observables/BlockingObservable$5;
.super Lrx/Subscriber;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->subscribe(Lrx/Observer;)V
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
.field final synthetic this$0:Lrx/observables/BlockingObservable;

.field final synthetic val$nl:Lrx/internal/operators/NotificationLite;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;Lrx/internal/operators/NotificationLite;)V
    .registers 4

    .prologue
    .line 514
    .local p0, "this":Lrx/observables/BlockingObservable$5;, "Lrx/observables/BlockingObservable.5;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$5;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$5;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lrx/observables/BlockingObservable$5;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 525
    .local p0, "this":Lrx/observables/BlockingObservable$5;, "Lrx/observables/BlockingObservable.5;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$5;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$5;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 526
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 521
    .local p0, "this":Lrx/observables/BlockingObservable$5;, "Lrx/observables/BlockingObservable.5;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$5;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$5;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 522
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "this":Lrx/observables/BlockingObservable$5;, "Lrx/observables/BlockingObservable.5;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$5;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$5;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 518
    return-void
.end method

###### Class rx.observables.BlockingObservable.AnonymousClass6 (rx.observables.BlockingObservable$6)
.class Lrx/observables/BlockingObservable$6;
.super Lrx/Subscriber;
.source "BlockingObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->subscribe(Lrx/Subscriber;)V
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
.field final synthetic this$0:Lrx/observables/BlockingObservable;

.field final synthetic val$nl:Lrx/internal/operators/NotificationLite;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;

.field final synthetic val$theProducer:[Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;Lrx/internal/operators/NotificationLite;[Lrx/Producer;)V
    .registers 5

    .prologue
    .line 561
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$6;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lrx/observables/BlockingObservable$6;->val$nl:Lrx/internal/operators/NotificationLite;

    iput-object p4, p0, Lrx/observables/BlockingObservable$6;->val$theProducer:[Lrx/Producer;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 572
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$6;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 573
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 568
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$6;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 569
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lrx/observables/BlockingObservable$6;->val$nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 565
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 583
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lrx/observables/BlockingObservable;->ON_START:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 577
    .local p0, "this":Lrx/observables/BlockingObservable$6;, "Lrx/observables/BlockingObservable.6;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$theProducer:[Lrx/Producer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 578
    iget-object v0, p0, Lrx/observables/BlockingObservable$6;->val$queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lrx/observables/BlockingObservable;->SET_PRODUCER:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 579
    return-void
.end method

###### Class rx.observables.BlockingObservable.AnonymousClass7 (rx.observables.BlockingObservable$7)
.class Lrx/observables/BlockingObservable$7;
.super Ljava/lang/Object;
.source "BlockingObservable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->subscribe(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/observables/BlockingObservable;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;Ljava/util/concurrent/BlockingQueue;)V
    .registers 3

    .prologue
    .line 588
    .local p0, "this":Lrx/observables/BlockingObservable$7;, "Lrx/observables/BlockingObservable.7;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$7;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$7;->val$queue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 591
    .local p0, "this":Lrx/observables/BlockingObservable$7;, "Lrx/observables/BlockingObservable.7;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$7;->val$queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lrx/observables/BlockingObservable;->UNSUBSCRIBE:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 592
    return-void
.end method

###### Class rx.observables.BlockingObservable.AnonymousClass8 (rx.observables.BlockingObservable$8)
.class Lrx/observables/BlockingObservable$8;
.super Ljava/lang/Object;
.source "BlockingObservable.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->subscribe(Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/observables/BlockingObservable;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;)V
    .registers 2

    .prologue
    .line 640
    .local p0, "this":Lrx/observables/BlockingObservable$8;, "Lrx/observables/BlockingObservable.8;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$8;->this$0:Lrx/observables/BlockingObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 640
    .local p0, "this":Lrx/observables/BlockingObservable$8;, "Lrx/observables/BlockingObservable.8;"
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/BlockingObservable$8;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 643
    .local p0, "this":Lrx/observables/BlockingObservable$8;, "Lrx/observables/BlockingObservable.8;"
    new-instance v0, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class rx.observables.BlockingObservable.AnonymousClass9 (rx.observables.BlockingObservable$9)
.class Lrx/observables/BlockingObservable$9;
.super Ljava/lang/Object;
.source "BlockingObservable.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observables/BlockingObservable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/observables/BlockingObservable;

.field final synthetic val$onCompleted:Lrx/functions/Action0;

.field final synthetic val$onError:Lrx/functions/Action1;

.field final synthetic val$onNext:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/observables/BlockingObservable;Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .registers 5

    .prologue
    .line 668
    .local p0, "this":Lrx/observables/BlockingObservable$9;, "Lrx/observables/BlockingObservable.9;"
    iput-object p1, p0, Lrx/observables/BlockingObservable$9;->this$0:Lrx/observables/BlockingObservable;

    iput-object p2, p0, Lrx/observables/BlockingObservable$9;->val$onNext:Lrx/functions/Action1;

    iput-object p3, p0, Lrx/observables/BlockingObservable$9;->val$onError:Lrx/functions/Action1;

    iput-object p4, p0, Lrx/observables/BlockingObservable$9;->val$onCompleted:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 681
    .local p0, "this":Lrx/observables/BlockingObservable$9;, "Lrx/observables/BlockingObservable.9;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$9;->val$onCompleted:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 682
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 676
    .local p0, "this":Lrx/observables/BlockingObservable$9;, "Lrx/observables/BlockingObservable.9;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$9;->val$onError:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 677
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
    .line 671
    .local p0, "this":Lrx/observables/BlockingObservable$9;, "Lrx/observables/BlockingObservable.9;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observables/BlockingObservable$9;->val$onNext:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 672
    return-void
.end method
