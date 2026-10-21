###### Class rx.Completable (rx.Completable)
.class public Lrx/Completable;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Completable$Transformer;,
        Lrx/Completable$Operator;,
        Lrx/Completable$OnSubscribe;
    }
.end annotation

.annotation build Lrx/annotations/Beta;
.end annotation


# static fields
.field static final COMPLETE:Lrx/Completable;

.field static final NEVER:Lrx/Completable;


# instance fields
.field private final onSubscribe:Lrx/Completable$OnSubscribe;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Lrx/Completable;

    new-instance v1, Lrx/Completable$1;

    invoke-direct {v1}, Lrx/Completable$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;Z)V

    sput-object v0, Lrx/Completable;->COMPLETE:Lrx/Completable;

    .line 78
    new-instance v0, Lrx/Completable;

    new-instance v1, Lrx/Completable$2;

    invoke-direct {v1}, Lrx/Completable$2;-><init>()V

    invoke-direct {v0, v1, v2}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;Z)V

    sput-object v0, Lrx/Completable;->NEVER:Lrx/Completable;

    return-void
.end method

.method protected constructor <init>(Lrx/Completable$OnSubscribe;)V
    .registers 3
    .param p1, "onSubscribe"    # Lrx/Completable$OnSubscribe;

    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v0

    iput-object v0, p0, Lrx/Completable;->onSubscribe:Lrx/Completable$OnSubscribe;

    .line 1002
    return-void
.end method

.method protected constructor <init>(Lrx/Completable$OnSubscribe;Z)V
    .registers 3
    .param p1, "onSubscribe"    # Lrx/Completable$OnSubscribe;
    .param p2, "useHook"    # Z

    .prologue
    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    if-eqz p2, :cond_9

    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object p1

    .end local p1    # "onSubscribe":Lrx/Completable$OnSubscribe;
    :cond_9
    iput-object p1, p0, Lrx/Completable;->onSubscribe:Lrx/Completable$OnSubscribe;

    .line 1013
    return-void
.end method

.method public static amb(Ljava/lang/Iterable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Lrx/Completable$4;

    invoke-direct {v0, p0}, Lrx/Completable$4;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs amb([Lrx/Completable;)Lrx/Completable;
    .registers 3
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 93
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    array-length v0, p0

    if-nez v0, :cond_b

    .line 95
    invoke-static {}, Lrx/Completable;->complete()Lrx/Completable;

    move-result-object v0

    .line 101
    :goto_a
    return-object v0

    .line 97
    :cond_b
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 98
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_a

    .line 101
    :cond_13
    new-instance v0, Lrx/Completable$3;

    invoke-direct {v0, p0}, Lrx/Completable$3;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    goto :goto_a
.end method

.method public static complete()Lrx/Completable;
    .registers 3

    .prologue
    .line 293
    sget-object v1, Lrx/Completable;->COMPLETE:Lrx/Completable;

    iget-object v1, v1, Lrx/Completable;->onSubscribe:Lrx/Completable$OnSubscribe;

    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v0

    .line 294
    .local v0, "cos":Lrx/Completable$OnSubscribe;
    sget-object v1, Lrx/Completable;->COMPLETE:Lrx/Completable;

    iget-object v1, v1, Lrx/Completable;->onSubscribe:Lrx/Completable$OnSubscribe;

    if-ne v0, v1, :cond_11

    .line 295
    sget-object v1, Lrx/Completable;->COMPLETE:Lrx/Completable;

    .line 297
    :goto_10
    return-object v1

    :cond_11
    new-instance v1, Lrx/Completable;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;Z)V

    goto :goto_10
.end method

.method public static concat(Ljava/lang/Iterable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lrx/Completable;->concat(Lrx/Observable;I)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;I)Lrx/Completable;
    .registers 5
    .param p1, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1f

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefetch > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1f
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcat;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcat;-><init>(Lrx/Observable;I)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lrx/Completable;)Lrx/Completable;
    .registers 3
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 307
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    array-length v0, p0

    if-nez v0, :cond_b

    .line 309
    invoke-static {}, Lrx/Completable;->complete()Lrx/Completable;

    move-result-object v0

    .line 314
    :goto_a
    return-object v0

    .line 311
    :cond_b
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 312
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_a

    .line 314
    :cond_13
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcatArray;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    goto :goto_a
.end method

.method public static create(Lrx/Completable$OnSubscribe;)Lrx/Completable;
    .registers 3
    .param p0, "onSubscribe"    # Lrx/Completable$OnSubscribe;

    .prologue
    .line 362
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :try_start_3
    new-instance v1, Lrx/Completable;

    invoke-direct {v1, p0}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_8} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_b

    return-object v1

    .line 365
    :catch_9
    move-exception v0

    .line 366
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 367
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_b
    move-exception v0

    .line 368
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 369
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method

.method public static defer(Lrx/functions/Func0;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "completableFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v0, Lrx/Completable$5;

    invoke-direct {v0, p0}, Lrx/Completable$5;-><init>(Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method static deliverUncaughtException(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2016
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2017
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 2018
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)Lrx/Completable;
    .registers 2
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 443
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    new-instance v0, Lrx/Completable$7;

    invoke-direct {v0, p0}, Lrx/Completable$7;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static error(Lrx/functions/Func0;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "errorFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/lang/Throwable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v0, Lrx/Completable$6;

    invoke-direct {v0, p0}, Lrx/Completable$6;-><init>(Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromAction(Lrx/functions/Action0;)Lrx/Completable;
    .registers 2
    .param p0, "action"    # Lrx/functions/Action0;

    .prologue
    .line 461
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    new-instance v0, Lrx/Completable$8;

    invoke-direct {v0, p0}, Lrx/Completable$8;-><init>(Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance v0, Lrx/Completable$9;

    invoke-direct {v0, p0}, Lrx/Completable$9;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromEmitter(Lrx/functions/Action1;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/CompletableEmitter;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 545
    .local p0, "producer":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/CompletableEmitter;>;"
    new-instance v0, Lrx/internal/operators/CompletableFromEmitter;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableFromEmitter;-><init>(Lrx/functions/Action1;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-static {p0}, Lrx/Observable;->from(Ljava/util/concurrent/Future;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromObservable(Lrx/Observable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "flowable":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v0, Lrx/Completable$10;

    invoke-direct {v0, p0}, Lrx/Completable$10;-><init>(Lrx/Observable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromSingle(Lrx/Single;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "single":Lrx/Single;, "Lrx/Single<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v0, Lrx/Completable$11;

    invoke-direct {v0, p0}, Lrx/Completable$11;-><init>(Lrx/Single;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 652
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 664
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;I)Lrx/Completable;
    .registers 3
    .param p1, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs merge([Lrx/Completable;)Lrx/Completable;
    .registers 3
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 634
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    array-length v0, p0

    if-nez v0, :cond_b

    .line 636
    invoke-static {}, Lrx/Completable;->complete()Lrx/Completable;

    move-result-object v0

    .line 641
    :goto_a
    return-object v0

    .line 638
    :cond_b
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 639
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_a

    .line 641
    :cond_13
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeArray;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeArray;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    goto :goto_a
.end method

.method protected static merge0(Lrx/Observable;IZ)Lrx/Completable;
    .registers 6
    .param p1, "maxConcurrency"    # I
    .param p2, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;IZ)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 693
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1f

    .line 695
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxConcurrency > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_1f
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMerge;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/CompletableOnSubscribeMerge;-><init>(Lrx/Observable;IZ)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;I)Lrx/Completable;
    .registers 3
    .param p1, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs mergeDelayError([Lrx/Completable;)Lrx/Completable;
    .registers 2
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 709
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorArray;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorArray;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static never()Lrx/Completable;
    .registers 3

    .prologue
    .line 758
    sget-object v1, Lrx/Completable;->NEVER:Lrx/Completable;

    iget-object v1, v1, Lrx/Completable;->onSubscribe:Lrx/Completable$OnSubscribe;

    invoke-static {v1}, Lrx/plugins/RxJavaHooks;->onCreate(Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v0

    .line 759
    .local v0, "cos":Lrx/Completable$OnSubscribe;
    sget-object v1, Lrx/Completable;->NEVER:Lrx/Completable;

    iget-object v1, v1, Lrx/Completable;->onSubscribe:Lrx/Completable$OnSubscribe;

    if-ne v0, v1, :cond_11

    .line 760
    sget-object v1, Lrx/Completable;->NEVER:Lrx/Completable;

    .line 762
    :goto_10
    return-object v1

    :cond_11
    new-instance v1, Lrx/Completable;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lrx/Completable;-><init>(Lrx/Completable$OnSubscribe;Z)V

    goto :goto_10
.end method

.method static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 772
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 775
    :cond_8
    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .registers 5
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 785
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;
    .registers 6
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 797
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance v0, Lrx/Completable$12;

    invoke-direct {v0, p3, p0, p1, p2}, Lrx/Completable$12;-><init>(Lrx/Scheduler;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method static toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .registers 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 828
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 829
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 830
    return-object v0
.end method

.method private unsafeSubscribe(Lrx/Subscriber;Z)V
    .registers 5
    .param p2, "callOnStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 2073
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    if-eqz p2, :cond_8

    .line 2076
    :try_start_5
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 2078
    :cond_8
    new-instance v1, Lrx/Completable$30;

    invoke-direct {v1, p0, p1}, Lrx/Completable$30;-><init>(Lrx/Completable;Lrx/Subscriber;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 2094
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onObservableReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_13} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_13} :catch_16

    .line 2103
    return-void

    .line 2095
    :catch_14
    move-exception v0

    .line 2096
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 2097
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v0

    .line 2098
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2099
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onObservableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2100
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 2101
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/Completable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Func1",
            "<-TR;+",
            "Lrx/Completable;",
            ">;",
            "Lrx/functions/Action1",
            "<-TR;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 848
    .local p0, "resourceFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p1, "completableFunc1":Lrx/functions/Func1;, "Lrx/functions/Func1<-TR;+Lrx/Completable;>;"
    .local p2, "disposer":Lrx/functions/Action1;, "Lrx/functions/Action1<-TR;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lrx/Completable;->using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Completable;
    .registers 5
    .param p3, "eager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Func1",
            "<-TR;+",
            "Lrx/Completable;",
            ">;",
            "Lrx/functions/Action1",
            "<-TR;>;Z)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 872
    .local p0, "resourceFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p1, "completableFunc1":Lrx/functions/Func1;, "Lrx/functions/Func1<-TR;+Lrx/Completable;>;"
    .local p2, "disposer":Lrx/functions/Action1;, "Lrx/functions/Action1<-TR;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    new-instance v0, Lrx/Completable$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/Completable$13;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ambWith(Lrx/Completable;)Lrx/Completable;
    .registers 4
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 1023
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Completable;->amb([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final andThen(Lrx/Completable;)Lrx/Completable;
    .registers 3
    .param p1, "next"    # Lrx/Completable;

    .prologue
    .line 1183
    invoke-virtual {p0, p1}, Lrx/Completable;->concatWith(Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final andThen(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1150
    .local p1, "next":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->delaySubscription(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final andThen(Lrx/Single;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1169
    .local p1, "next":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Single;->delaySubscription(Lrx/Observable;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final await()V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1033
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1034
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1036
    .local v1, "err":[Ljava/lang/Throwable;
    new-instance v3, Lrx/Completable$14;

    invoke-direct {v3, p0, v0, v1}, Lrx/Completable$14;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1056
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_25

    .line 1057
    aget-object v3, v1, v8

    if-eqz v3, :cond_24

    .line 1058
    aget-object v3, v1, v8

    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1070
    :cond_24
    :goto_24
    return-void

    .line 1063
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_32

    .line 1067
    aget-object v3, v1, v8

    if-eqz v3, :cond_24

    .line 1068
    aget-object v3, v1, v8

    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_24

    .line 1064
    :catch_32
    move-exception v2

    .line 1065
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .registers 13
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1082
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1085
    .local v1, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v0, [Ljava/lang/Throwable;

    .line 1087
    .local v2, "err":[Ljava/lang/Throwable;
    new-instance v4, Lrx/Completable$15;

    invoke-direct {v4, p0, v1, v2}, Lrx/Completable$15;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1107
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_28

    .line 1108
    aget-object v4, v2, v8

    if-eqz v4, :cond_27

    .line 1109
    aget-object v4, v2, v8

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1124
    :cond_27
    :goto_27
    return v0

    .line 1115
    :cond_28
    :try_start_28
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_38

    move-result v0

    .line 1119
    .local v0, "b":Z
    if-eqz v0, :cond_27

    .line 1120
    aget-object v4, v2, v8

    if-eqz v4, :cond_27

    .line 1121
    aget-object v4, v2, v8

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_27

    .line 1116
    .end local v0    # "b":Z
    :catch_38
    move-exception v3

    .line 1117
    .local v3, "ex":Ljava/lang/InterruptedException;
    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public final compose(Lrx/Completable$Transformer;)Lrx/Completable;
    .registers 3
    .param p1, "transformer"    # Lrx/Completable$Transformer;

    .prologue
    .line 1135
    invoke-virtual {p0, p1}, Lrx/Completable;->to(Lrx/functions/Func1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Completable;

    return-object v0
.end method

.method public final concatWith(Lrx/Completable;)Lrx/Completable;
    .registers 4
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 1193
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Completable;->concat([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .registers 11
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1205
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Z)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;
    .registers 12
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 1218
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Z)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Z)Lrx/Completable;
    .registers 15
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .param p5, "delayError"    # Z

    .prologue
    .line 1232
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    new-instance v1, Lrx/Completable$16;

    move-object v2, p0

    move-object v3, p4

    move-wide v4, p1

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/Completable$16;-><init>(Lrx/Completable;Lrx/Scheduler;JLjava/util/concurrent/TimeUnit;Z)V

    invoke-static {v1}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterTerminate(Lrx/functions/Action0;)Lrx/Completable;
    .registers 8
    .param p1, "onAfterComplete"    # Lrx/functions/Action0;

    .prologue
    .line 1462
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnCompleted(Lrx/functions/Action0;)Lrx/Completable;
    .registers 8
    .param p1, "onCompleted"    # Lrx/functions/Action0;

    .prologue
    .line 1295
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnEach(Lrx/functions/Action1;)Lrx/Completable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/Notification",
            "<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1305
    .local p1, "onNotification":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/Notification<Ljava/lang/Object;>;>;"
    if-nez p1, :cond_a

    .line 1306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNotification is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1309
    :cond_a
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    new-instance v2, Lrx/Completable$17;

    invoke-direct {v2, p0, p1}, Lrx/Completable$17;-><init>(Lrx/Completable;Lrx/functions/Action1;)V

    new-instance v3, Lrx/Completable$18;

    invoke-direct {v3, p0, p1}, Lrx/Completable$18;-><init>(Lrx/Completable;Lrx/functions/Action1;)V

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnError(Lrx/functions/Action1;)Lrx/Completable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1340
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method protected final doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;
    .registers 13
    .param p3, "onComplete"    # Lrx/functions/Action0;
    .param p4, "onAfterComplete"    # Lrx/functions/Action0;
    .param p5, "onUnsubscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1359
    .local p1, "onSubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    invoke-static {p5}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    new-instance v0, Lrx/Completable$19;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/Completable$19;-><init>(Lrx/Completable;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSubscribe(Lrx/functions/Action1;)Lrx/Completable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1436
    .local p1, "onSubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnTerminate(Lrx/functions/Action0;)Lrx/Completable;
    .registers 8
    .param p1, "onTerminate"    # Lrx/functions/Action0;

    .prologue
    .line 1446
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    new-instance v2, Lrx/Completable$20;

    invoke-direct {v2, p0, p1}, Lrx/Completable$20;-><init>(Lrx/Completable;Lrx/functions/Action0;)V

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Completable;
    .registers 8
    .param p1, "onUnsubscribe"    # Lrx/functions/Action0;

    .prologue
    .line 1330
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Throwable;
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1472
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1473
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1475
    .local v1, "err":[Ljava/lang/Throwable;
    new-instance v3, Lrx/Completable$21;

    invoke-direct {v3, p0, v0, v1}, Lrx/Completable$21;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1495
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1e

    .line 1496
    aget-object v3, v1, v8

    .line 1503
    :goto_1d
    return-object v3

    .line 1499
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_24

    .line 1503
    aget-object v3, v1, v8

    goto :goto_1d

    .line 1500
    :catch_24
    move-exception v2

    .line 1501
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .registers 13
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1516
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1519
    .local v1, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v4, [Ljava/lang/Throwable;

    .line 1521
    .local v2, "err":[Ljava/lang/Throwable;
    new-instance v4, Lrx/Completable$22;

    invoke-direct {v4, p0, v1, v2}, Lrx/Completable$22;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1541
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_21

    .line 1542
    aget-object v4, v2, v8

    .line 1554
    :goto_20
    return-object v4

    .line 1546
    :cond_21
    :try_start_21
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_2a

    move-result v0

    .line 1550
    .local v0, "b":Z
    if-eqz v0, :cond_30

    .line 1551
    aget-object v4, v2, v8

    goto :goto_20

    .line 1547
    .end local v0    # "b":Z
    :catch_2a
    move-exception v3

    .line 1548
    .local v3, "ex":Ljava/lang/InterruptedException;
    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1553
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    .restart local v0    # "b":Z
    :cond_30
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1554
    const/4 v4, 0x0

    goto :goto_20
.end method

.method public final lift(Lrx/Completable$Operator;)Lrx/Completable;
    .registers 3
    .param p1, "onLift"    # Lrx/Completable$Operator;

    .prologue
    .line 1564
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    new-instance v0, Lrx/Completable$23;

    invoke-direct {v0, p0, p1}, Lrx/Completable$23;-><init>(Lrx/Completable;Lrx/Completable$Operator;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lrx/Completable;)Lrx/Completable;
    .registers 4
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 1590
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Completable;->merge([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/Scheduler;)Lrx/Completable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 1601
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    new-instance v0, Lrx/Completable$24;

    invoke-direct {v0, p0, p1}, Lrx/Completable$24;-><init>(Lrx/Completable;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete()Lrx/Completable;
    .registers 2

    .prologue
    .line 1659
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->alwaysTrue()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Completable;->onErrorComplete(Lrx/functions/Func1;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete(Lrx/functions/Func1;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1670
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    new-instance v0, Lrx/Completable$25;

    invoke-direct {v0, p0, p1}, Lrx/Completable$25;-><init>(Lrx/Completable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/functions/Func1;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1720
    .local p1, "errorMapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+Lrx/Completable;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    new-instance v0, Lrx/Completable$26;

    invoke-direct {v0, p0, p1}, Lrx/Completable$26;-><init>(Lrx/Completable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lrx/Completable;
    .registers 2

    .prologue
    .line 1786
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->repeat()Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lrx/Completable;
    .registers 4
    .param p1, "times"    # J

    .prologue
    .line 1796
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->repeat(J)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final repeatWhen(Lrx/functions/Func1;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1809
    .local p1, "handler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->repeatWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retry()Lrx/Completable;
    .registers 2

    .prologue
    .line 1818
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lrx/Completable;
    .registers 4
    .param p1, "times"    # J

    .prologue
    .line 1840
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retry(Lrx/functions/Func2;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1829
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retry(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lrx/functions/Func1;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1853
    .local p1, "handler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lrx/Completable;)Lrx/Completable;
    .registers 4
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 1864
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lrx/Completable;->concat([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1877
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->startWith(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lrx/Subscription;
    .registers 3

    .prologue
    .line 1887
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 1888
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v1, Lrx/Completable$27;

    invoke-direct {v1, p0, v0}, Lrx/Completable$27;-><init>(Lrx/Completable;Lrx/subscriptions/MultipleAssignmentSubscription;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1907
    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 4
    .param p1, "onComplete"    # Lrx/functions/Action0;

    .prologue
    .line 1918
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 1921
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v1, Lrx/Completable$28;

    invoke-direct {v1, p0, p1, v0}, Lrx/Completable$28;-><init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1951
    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action0;Lrx/functions/Action1;)Lrx/Subscription;
    .registers 5
    .param p1, "onComplete"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1963
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 1967
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v1, Lrx/Completable$29;

    invoke-direct {v1, p0, p1, v0, p2}, Lrx/Completable$29;-><init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action1;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 2012
    return-object v0
.end method

.method public final subscribe(Lrx/CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 2048
    instance-of v1, p1, Lrx/observers/SafeCompletableSubscriber;

    if-nez v1, :cond_a

    .line 2049
    new-instance v0, Lrx/observers/SafeCompletableSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SafeCompletableSubscriber;-><init>(Lrx/CompletableSubscriber;)V

    .end local p1    # "s":Lrx/CompletableSubscriber;
    .local v0, "s":Lrx/CompletableSubscriber;
    move-object p1, v0

    .line 2051
    .end local v0    # "s":Lrx/CompletableSubscriber;
    .restart local p1    # "s":Lrx/CompletableSubscriber;
    :cond_a
    invoke-virtual {p0, p1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 2052
    return-void
.end method

.method public final subscribe(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2114
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 2115
    instance-of v1, p1, Lrx/observers/SafeSubscriber;

    if-nez v1, :cond_d

    .line 2116
    new-instance v0, Lrx/observers/SafeSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    .end local p1    # "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    move-object p1, v0

    .line 2118
    .end local v0    # "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .restart local p1    # "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    :cond_d
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/Subscriber;Z)V

    .line 2119
    return-void
.end method

.method public final subscribeOn(Lrx/Scheduler;)Lrx/Completable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 2129
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2131
    new-instance v0, Lrx/Completable$31;

    invoke-direct {v0, p0, p1}, Lrx/Completable$31;-><init>(Lrx/Completable;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 2161
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Completable;)Lrx/Completable;
    .registers 12
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "other"    # Lrx/Completable;

    .prologue
    .line 2174
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2175
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;
    .registers 12
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 2189
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .param p5, "other"    # Lrx/Completable;

    .prologue
    .line 2204
    invoke-static {p5}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2205
    invoke-virtual/range {p0 .. p5}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;
    .registers 13
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .param p5, "other"    # Lrx/Completable;

    .prologue
    .line 2221
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeTimeout;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/CompletableOnSubscribeTimeout;-><init>(Lrx/Completable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final to(Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Completable;",
            "TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 2235
    .local p1, "converter":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Completable;TR;>;"
    invoke-interface {p1, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2245
    new-instance v0, Lrx/Completable$32;

    invoke-direct {v0, p0}, Lrx/Completable$32;-><init>(Lrx/Completable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toSingle(Lrx/functions/Func0;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2262
    .local p1, "completionValueFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<+TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    new-instance v0, Lrx/Completable$33;

    invoke-direct {v0, p0, p1}, Lrx/Completable$33;-><init>(Lrx/Completable;Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final toSingleDefault(Ljava/lang/Object;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2310
    .local p1, "completionValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    new-instance v0, Lrx/Completable$34;

    invoke-direct {v0, p0, p1}, Lrx/Completable$34;-><init>(Lrx/Completable;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/Completable;->toSingle(Lrx/functions/Func0;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final unsafeSubscribe(Lrx/CompletableSubscriber;)V
    .registers 5
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 2026
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    :try_start_3
    iget-object v2, p0, Lrx/Completable;->onSubscribe:Lrx/Completable$OnSubscribe;

    invoke-static {p0, v2}, Lrx/plugins/RxJavaHooks;->onCompletableStart(Lrx/Completable;Lrx/Completable$OnSubscribe;)Lrx/Completable$OnSubscribe;

    move-result-object v1

    .line 2030
    .local v1, "onSubscribeDecorated":Lrx/Completable$OnSubscribe;
    invoke-interface {v1, p1}, Lrx/Completable$OnSubscribe;->call(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_c} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_f

    .line 2039
    return-void

    .line 2031
    .end local v1    # "onSubscribeDecorated":Lrx/Completable$OnSubscribe;
    :catch_d
    move-exception v0

    .line 2032
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 2033
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_f
    move-exception v0

    .line 2034
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2035
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onCompletableError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2036
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 2037
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v2

    throw v2
.end method

.method public final unsafeSubscribe(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2062
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/Completable;->unsafeSubscribe(Lrx/Subscriber;Z)V

    .line 2063
    return-void
.end method

.method public final unsubscribeOn(Lrx/Scheduler;)Lrx/Completable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 2327
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2328
    new-instance v0, Lrx/Completable$35;

    invoke-direct {v0, p0, p1}, Lrx/Completable$35;-><init>(Lrx/Completable;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$OnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.Completable.AnonymousClass1 (rx.Completable$1)
.class final Lrx/Completable$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$1;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 3
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 72
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 73
    invoke-interface {p1}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 74
    return-void
.end method

###### Class rx.Completable.AnonymousClass10 (rx.Completable$10)
.class final Lrx/Completable$10;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flowable:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .prologue
    .line 569
    iput-object p1, p0, Lrx/Completable$10;->val$flowable:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 569
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$10;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 4
    .param p1, "cs"    # Lrx/CompletableSubscriber;

    .prologue
    .line 572
    new-instance v0, Lrx/Completable$10$1;

    invoke-direct {v0, p0, p1}, Lrx/Completable$10$1;-><init>(Lrx/Completable$10;Lrx/CompletableSubscriber;)V

    .line 589
    .local v0, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<Ljava/lang/Object;>;"
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 590
    iget-object v1, p0, Lrx/Completable$10;->val$flowable:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 591
    return-void
.end method

###### Class rx.Completable.AnonymousClass10.AnonymousClass1 (rx.Completable$10$1)
.class Lrx/Completable$10$1;
.super Lrx/Subscriber;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$10;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable$10;

.field final synthetic val$cs:Lrx/CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$10;Lrx/CompletableSubscriber;)V
    .registers 3

    .prologue
    .line 572
    iput-object p1, p0, Lrx/Completable$10$1;->this$0:Lrx/Completable$10;

    iput-object p2, p0, Lrx/Completable$10$1;->val$cs:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lrx/Completable$10$1;->val$cs:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 577
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 581
    iget-object v0, p0, Lrx/Completable$10$1;->val$cs:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 582
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 587
    return-void
.end method

###### Class rx.Completable.AnonymousClass11 (rx.Completable$11)
.class final Lrx/Completable$11;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->fromSingle(Lrx/Single;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$single:Lrx/Single;


# direct methods
.method constructor <init>(Lrx/Single;)V
    .registers 2

    .prologue
    .line 604
    iput-object p1, p0, Lrx/Completable$11;->val$single:Lrx/Single;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 604
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$11;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 607
    new-instance v0, Lrx/Completable$11$1;

    invoke-direct {v0, p0, p1}, Lrx/Completable$11$1;-><init>(Lrx/Completable$11;Lrx/CompletableSubscriber;)V

    .line 620
    .local v0, "te":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<Ljava/lang/Object;>;"
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 621
    iget-object v1, p0, Lrx/Completable$11;->val$single:Lrx/Single;

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 622
    return-void
.end method

###### Class rx.Completable.AnonymousClass11.AnonymousClass1 (rx.Completable$11$1)
.class Lrx/Completable$11$1;
.super Lrx/SingleSubscriber;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$11;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable$11;

.field final synthetic val$s:Lrx/CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$11;Lrx/CompletableSubscriber;)V
    .registers 3

    .prologue
    .line 607
    iput-object p1, p0, Lrx/Completable$11$1;->this$0:Lrx/Completable$11;

    iput-object p2, p0, Lrx/Completable$11$1;->val$s:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 611
    iget-object v0, p0, Lrx/Completable$11$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 612
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 616
    iget-object v0, p0, Lrx/Completable$11$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 617
    return-void
.end method

###### Class rx.Completable.AnonymousClass12 (rx.Completable$12)
.class final Lrx/Completable$12;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delay:J

.field final synthetic val$scheduler:Lrx/Scheduler;

.field final synthetic val$unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lrx/Scheduler;JLjava/util/concurrent/TimeUnit;)V
    .registers 5

    .prologue
    .line 799
    iput-object p1, p0, Lrx/Completable$12;->val$scheduler:Lrx/Scheduler;

    iput-wide p2, p0, Lrx/Completable$12;->val$delay:J

    iput-object p4, p0, Lrx/Completable$12;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 799
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$12;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 8
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 802
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 803
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 804
    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_23

    .line 805
    iget-object v2, p0, Lrx/Completable$12;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    .line 806
    .local v1, "w":Lrx/Scheduler$Worker;
    invoke-virtual {v0, v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 807
    new-instance v2, Lrx/Completable$12$1;

    invoke-direct {v2, p0, p1, v1}, Lrx/Completable$12$1;-><init>(Lrx/Completable$12;Lrx/CompletableSubscriber;Lrx/Scheduler$Worker;)V

    iget-wide v4, p0, Lrx/Completable$12;->val$delay:J

    iget-object v3, p0, Lrx/Completable$12;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 818
    .end local v1    # "w":Lrx/Scheduler$Worker;
    :cond_23
    return-void
.end method

###### Class rx.Completable.AnonymousClass12.AnonymousClass1 (rx.Completable$12$1)
.class Lrx/Completable$12$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$12;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable$12;

.field final synthetic val$s:Lrx/CompletableSubscriber;

.field final synthetic val$w:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Completable$12;Lrx/CompletableSubscriber;Lrx/Scheduler$Worker;)V
    .registers 4

    .prologue
    .line 807
    iput-object p1, p0, Lrx/Completable$12$1;->this$0:Lrx/Completable$12;

    iput-object p2, p0, Lrx/Completable$12$1;->val$s:Lrx/CompletableSubscriber;

    iput-object p3, p0, Lrx/Completable$12$1;->val$w:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 811
    :try_start_0
    iget-object v0, p0, Lrx/Completable$12$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 813
    iget-object v0, p0, Lrx/Completable$12$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 815
    return-void

    .line 813
    :catchall_b
    move-exception v0

    iget-object v1, p0, Lrx/Completable$12$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method

###### Class rx.Completable.AnonymousClass13 (rx.Completable$13)
.class final Lrx/Completable$13;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$completableFunc1:Lrx/functions/Func1;

.field final synthetic val$disposer:Lrx/functions/Action1;

.field final synthetic val$eager:Z

.field final synthetic val$resourceFunc0:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V
    .registers 5

    .prologue
    .line 876
    iput-object p1, p0, Lrx/Completable$13;->val$resourceFunc0:Lrx/functions/Func0;

    iput-object p2, p0, Lrx/Completable$13;->val$completableFunc1:Lrx/functions/Func1;

    iput-object p3, p0, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    iput-boolean p4, p0, Lrx/Completable$13;->val$eager:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 876
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$13;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 13
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 882
    :try_start_3
    iget-object v5, p0, Lrx/Completable$13;->val$resourceFunc0:Lrx/functions/Func0;

    invoke-interface {v5}, Lrx/functions/Func0;->call()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_2a

    move-result-object v4

    .line 892
    .local v4, "resource":Ljava/lang/Object;, "TR;"
    :try_start_9
    iget-object v5, p0, Lrx/Completable$13;->val$completableFunc1:Lrx/functions/Func1;

    invoke-interface {v5, v4}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Completable;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_11} :catch_36

    .line 911
    .local v0, "cs":Lrx/Completable;
    if-nez v0, :cond_90

    .line 913
    :try_start_13
    iget-object v5, p0, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    invoke-interface {v5, v4}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_18} :catch_6b

    .line 921
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 922
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "The completable supplied is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 991
    .end local v0    # "cs":Lrx/Completable;
    .end local v4    # "resource":Ljava/lang/Object;, "TR;"
    :goto_29
    return-void

    .line 883
    :catch_2a
    move-exception v1

    .line 884
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 885
    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 893
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v4    # "resource":Ljava/lang/Object;, "TR;"
    :catch_36
    move-exception v1

    .line 895
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_37
    iget-object v5, p0, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    invoke-interface {v5, v4}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_4a

    .line 904
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 906
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 907
    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 896
    :catch_4a
    move-exception v2

    .line 897
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 898
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 900
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 901
    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v6, v6, [Ljava/lang/Throwable;

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v5}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 914
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "cs":Lrx/Completable;
    :catch_6b
    move-exception v2

    .line 915
    .restart local v2    # "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 917
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v5

    invoke-interface {p1, v5}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 918
    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v6, v6, [Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "The completable supplied is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v5}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_29

    .line 926
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_90
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 928
    .local v3, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v5, Lrx/Completable$13$1;

    invoke-direct {v5, p0, v3, v4, p1}, Lrx/Completable$13$1;-><init>(Lrx/Completable$13;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Lrx/CompletableSubscriber;)V

    invoke-virtual {v0, v5}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    goto :goto_29
.end method

###### Class rx.Completable.AnonymousClass13.AnonymousClass1 (rx.Completable$13$1)
.class Lrx/Completable$13$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$13;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field d:Lrx/Subscription;

.field final synthetic this$0:Lrx/Completable$13;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$resource:Ljava/lang/Object;

.field final synthetic val$s:Lrx/CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$13;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Lrx/CompletableSubscriber;)V
    .registers 5

    .prologue
    .line 928
    iput-object p1, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iput-object p2, p0, Lrx/Completable$13$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/Completable$13$1;->val$resource:Ljava/lang/Object;

    iput-object p4, p0, Lrx/Completable$13$1;->val$s:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispose()V
    .registers 5

    .prologue
    .line 931
    iget-object v1, p0, Lrx/Completable$13$1;->d:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 932
    iget-object v1, p0, Lrx/Completable$13$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 934
    :try_start_f
    iget-object v1, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-object v1, v1, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    iget-object v2, p0, Lrx/Completable$13$1;->val$resource:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_18} :catch_19

    .line 939
    :cond_18
    :goto_18
    return-void

    .line 935
    :catch_19
    move-exception v0

    .line 936
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public onCompleted()V
    .registers 5

    .prologue
    .line 943
    iget-object v1, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-boolean v1, v1, Lrx/Completable$13;->val$eager:Z

    if-eqz v1, :cond_19

    .line 944
    iget-object v1, p0, Lrx/Completable$13$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 946
    :try_start_10
    iget-object v1, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-object v1, v1, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    iget-object v2, p0, Lrx/Completable$13$1;->val$resource:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_28

    .line 954
    :cond_19
    iget-object v1, p0, Lrx/Completable$13$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v1}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 956
    iget-object v1, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-boolean v1, v1, Lrx/Completable$13;->val$eager:Z

    if-nez v1, :cond_27

    .line 957
    invoke-virtual {p0}, Lrx/Completable$13$1;->dispose()V

    .line 959
    :cond_27
    :goto_27
    return-void

    .line 947
    :catch_28
    move-exception v0

    .line 948
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/Completable$13$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 963
    iget-object v2, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-boolean v2, v2, Lrx/Completable$13;->val$eager:Z

    if-eqz v2, :cond_19

    .line 964
    iget-object v2, p0, Lrx/Completable$13$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 966
    :try_start_10
    iget-object v2, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-object v2, v2, Lrx/Completable$13;->val$disposer:Lrx/functions/Action1;

    iget-object v3, p0, Lrx/Completable$13$1;->val$resource:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_19} :catch_28

    .line 973
    :cond_19
    :goto_19
    iget-object v2, p0, Lrx/Completable$13$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v2, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 975
    iget-object v2, p0, Lrx/Completable$13$1;->this$0:Lrx/Completable$13;

    iget-boolean v2, v2, Lrx/Completable$13;->val$eager:Z

    if-nez v2, :cond_27

    .line 976
    invoke-virtual {p0}, Lrx/Completable$13$1;->dispose()V

    .line 978
    :cond_27
    return-void

    .line 967
    :catch_28
    move-exception v1

    .line 968
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v4

    aput-object v1, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_19
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 4
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 982
    iput-object p1, p0, Lrx/Completable$13$1;->d:Lrx/Subscription;

    .line 983
    iget-object v0, p0, Lrx/Completable$13$1;->val$s:Lrx/CompletableSubscriber;

    new-instance v1, Lrx/Completable$13$1$1;

    invoke-direct {v1, p0}, Lrx/Completable$13$1$1;-><init>(Lrx/Completable$13$1;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 989
    return-void
.end method

###### Class rx.Completable.AnonymousClass13.AnonymousClass1.C01751 (rx.Completable$13$1$1)
.class Lrx/Completable$13$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$13$1;->onSubscribe(Lrx/Subscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$13$1;


# direct methods
.method constructor <init>(Lrx/Completable$13$1;)V
    .registers 2

    .prologue
    .line 983
    iput-object p1, p0, Lrx/Completable$13$1$1;->this$1:Lrx/Completable$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 986
    iget-object v0, p0, Lrx/Completable$13$1$1;->this$1:Lrx/Completable$13$1;

    invoke-virtual {v0}, Lrx/Completable$13$1;->dispose()V

    .line 987
    return-void
.end method

###### Class rx.Completable.AnonymousClass14 (rx.Completable$14)
.class Lrx/Completable$14;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->await()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$cdl:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$err:[Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 1036
    iput-object p1, p0, Lrx/Completable$14;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$14;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/Completable$14;->val$err:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1040
    iget-object v0, p0, Lrx/Completable$14;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1041
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1045
    iget-object v0, p0, Lrx/Completable$14;->val$err:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1046
    iget-object v0, p0, Lrx/Completable$14;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1047
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 2
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1052
    return-void
.end method

###### Class rx.Completable.AnonymousClass15 (rx.Completable$15)
.class Lrx/Completable$15;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->await(JLjava/util/concurrent/TimeUnit;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$cdl:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$err:[Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 1087
    iput-object p1, p0, Lrx/Completable$15;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$15;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/Completable$15;->val$err:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1091
    iget-object v0, p0, Lrx/Completable$15;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1092
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1096
    iget-object v0, p0, Lrx/Completable$15;->val$err:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1097
    iget-object v0, p0, Lrx/Completable$15;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1098
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 2
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1103
    return-void
.end method

###### Class rx.Completable.AnonymousClass16 (rx.Completable$16)
.class Lrx/Completable$16;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Z)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$delay:J

.field final synthetic val$delayError:Z

.field final synthetic val$scheduler:Lrx/Scheduler;

.field final synthetic val$unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/Scheduler;JLjava/util/concurrent/TimeUnit;Z)V
    .registers 8

    .prologue
    .line 1234
    iput-object p1, p0, Lrx/Completable$16;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$16;->val$scheduler:Lrx/Scheduler;

    iput-wide p3, p0, Lrx/Completable$16;->val$delay:J

    iput-object p5, p0, Lrx/Completable$16;->val$unit:Ljava/util/concurrent/TimeUnit;

    iput-boolean p6, p0, Lrx/Completable$16;->val$delayError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1234
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$16;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 6
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 1237
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 1239
    .local v0, "set":Lrx/subscriptions/CompositeSubscription;
    iget-object v2, p0, Lrx/Completable$16;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    .line 1240
    .local v1, "w":Lrx/Scheduler$Worker;
    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 1242
    iget-object v2, p0, Lrx/Completable$16;->this$0:Lrx/Completable;

    new-instance v3, Lrx/Completable$16$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lrx/Completable$16$1;-><init>(Lrx/Completable$16;Lrx/subscriptions/CompositeSubscription;Lrx/Scheduler$Worker;Lrx/CompletableSubscriber;)V

    invoke-virtual {v2, v3}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1284
    return-void
.end method

###### Class rx.Completable.AnonymousClass16.AnonymousClass1 (rx.Completable$16$1)
.class Lrx/Completable$16$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$16;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$16;

.field final synthetic val$s:Lrx/CompletableSubscriber;

.field final synthetic val$set:Lrx/subscriptions/CompositeSubscription;

.field final synthetic val$w:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Completable$16;Lrx/subscriptions/CompositeSubscription;Lrx/Scheduler$Worker;Lrx/CompletableSubscriber;)V
    .registers 5

    .prologue
    .line 1242
    iput-object p1, p0, Lrx/Completable$16$1;->this$1:Lrx/Completable$16;

    iput-object p2, p0, Lrx/Completable$16$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    iput-object p3, p0, Lrx/Completable$16$1;->val$w:Lrx/Scheduler$Worker;

    iput-object p4, p0, Lrx/Completable$16$1;->val$s:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 7

    .prologue
    .line 1247
    iget-object v0, p0, Lrx/Completable$16$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/Completable$16$1;->val$w:Lrx/Scheduler$Worker;

    new-instance v2, Lrx/Completable$16$1$1;

    invoke-direct {v2, p0}, Lrx/Completable$16$1$1;-><init>(Lrx/Completable$16$1;)V

    iget-object v3, p0, Lrx/Completable$16$1;->this$1:Lrx/Completable$16;

    iget-wide v4, v3, Lrx/Completable$16;->val$delay:J

    iget-object v3, p0, Lrx/Completable$16$1;->this$1:Lrx/Completable$16;

    iget-object v3, v3, Lrx/Completable$16;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 1257
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1261
    iget-object v0, p0, Lrx/Completable$16$1;->this$1:Lrx/Completable$16;

    iget-boolean v0, v0, Lrx/Completable$16;->val$delayError:Z

    if-eqz v0, :cond_1f

    .line 1262
    iget-object v0, p0, Lrx/Completable$16$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/Completable$16$1;->val$w:Lrx/Scheduler$Worker;

    new-instance v2, Lrx/Completable$16$1$2;

    invoke-direct {v2, p0, p1}, Lrx/Completable$16$1$2;-><init>(Lrx/Completable$16$1;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lrx/Completable$16$1;->this$1:Lrx/Completable$16;

    iget-wide v4, v3, Lrx/Completable$16;->val$delay:J

    iget-object v3, p0, Lrx/Completable$16$1;->this$1:Lrx/Completable$16;

    iget-object v3, v3, Lrx/Completable$16;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 1275
    :goto_1e
    return-void

    .line 1273
    :cond_1f
    iget-object v0, p0, Lrx/Completable$16$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 4
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1279
    iget-object v0, p0, Lrx/Completable$16$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 1280
    iget-object v0, p0, Lrx/Completable$16$1;->val$s:Lrx/CompletableSubscriber;

    iget-object v1, p0, Lrx/Completable$16$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-interface {v0, v1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 1281
    return-void
.end method

###### Class rx.Completable.AnonymousClass16.AnonymousClass1.C01761 (rx.Completable$16$1$1)
.class Lrx/Completable$16$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$16$1;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$16$1;


# direct methods
.method constructor <init>(Lrx/Completable$16$1;)V
    .registers 2

    .prologue
    .line 1247
    iput-object p1, p0, Lrx/Completable$16$1$1;->this$2:Lrx/Completable$16$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 1251
    :try_start_0
    iget-object v0, p0, Lrx/Completable$16$1$1;->this$2:Lrx/Completable$16$1;

    iget-object v0, v0, Lrx/Completable$16$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 1253
    iget-object v0, p0, Lrx/Completable$16$1$1;->this$2:Lrx/Completable$16$1;

    iget-object v0, v0, Lrx/Completable$16$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 1255
    return-void

    .line 1253
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lrx/Completable$16$1$1;->this$2:Lrx/Completable$16$1;

    iget-object v1, v1, Lrx/Completable$16$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method

###### Class rx.Completable.AnonymousClass16.AnonymousClass1.AnonymousClass2 (rx.Completable$16$1$2)
.class Lrx/Completable$16$1$2;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$16$1;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$16$1;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/Completable$16$1;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 1262
    iput-object p1, p0, Lrx/Completable$16$1$2;->this$2:Lrx/Completable$16$1;

    iput-object p2, p0, Lrx/Completable$16$1$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 1266
    :try_start_0
    iget-object v0, p0, Lrx/Completable$16$1$2;->this$2:Lrx/Completable$16$1;

    iget-object v0, v0, Lrx/Completable$16$1;->val$s:Lrx/CompletableSubscriber;

    iget-object v1, p0, Lrx/Completable$16$1$2;->val$e:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_11

    .line 1268
    iget-object v0, p0, Lrx/Completable$16$1$2;->this$2:Lrx/Completable$16$1;

    iget-object v0, v0, Lrx/Completable$16$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 1270
    return-void

    .line 1268
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lrx/Completable$16$1$2;->this$2:Lrx/Completable$16$1;

    iget-object v1, v1, Lrx/Completable$16$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method

###### Class rx.Completable.AnonymousClass17 (rx.Completable$17)
.class Lrx/Completable$17;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->doOnEach(Lrx/functions/Action1;)Lrx/Completable;
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
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$onNotification:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action1;)V
    .registers 3

    .prologue
    .line 1309
    iput-object p1, p0, Lrx/Completable$17;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$17;->val$onNotification:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1309
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$17;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1312
    iget-object v0, p0, Lrx/Completable$17;->val$onNotification:Lrx/functions/Action1;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 1313
    return-void
.end method

###### Class rx.Completable.AnonymousClass18 (rx.Completable$18)
.class Lrx/Completable$18;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->doOnEach(Lrx/functions/Action1;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$onNotification:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action1;)V
    .registers 3

    .prologue
    .line 1314
    iput-object p1, p0, Lrx/Completable$18;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$18;->val$onNotification:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 1317
    iget-object v0, p0, Lrx/Completable$18;->val$onNotification:Lrx/functions/Action1;

    invoke-static {}, Lrx/Notification;->createOnCompleted()Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 1318
    return-void
.end method

###### Class rx.Completable.AnonymousClass19 (rx.Completable$19)
.class Lrx/Completable$19;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$onAfterComplete:Lrx/functions/Action0;

.field final synthetic val$onComplete:Lrx/functions/Action0;

.field final synthetic val$onError:Lrx/functions/Action1;

.field final synthetic val$onSubscribe:Lrx/functions/Action1;

.field final synthetic val$onUnsubscribe:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .registers 7

    .prologue
    .line 1364
    iput-object p1, p0, Lrx/Completable$19;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$19;->val$onComplete:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Completable$19;->val$onAfterComplete:Lrx/functions/Action0;

    iput-object p4, p0, Lrx/Completable$19;->val$onError:Lrx/functions/Action1;

    iput-object p5, p0, Lrx/Completable$19;->val$onSubscribe:Lrx/functions/Action1;

    iput-object p6, p0, Lrx/Completable$19;->val$onUnsubscribe:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1364
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$19;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 1367
    iget-object v0, p0, Lrx/Completable$19;->this$0:Lrx/Completable;

    new-instance v1, Lrx/Completable$19$1;

    invoke-direct {v1, p0, p1}, Lrx/Completable$19$1;-><init>(Lrx/Completable$19;Lrx/CompletableSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1424
    return-void
.end method

###### Class rx.Completable.AnonymousClass19.AnonymousClass1 (rx.Completable$19$1)
.class Lrx/Completable$19$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$19;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$19;

.field final synthetic val$s:Lrx/CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$19;Lrx/CompletableSubscriber;)V
    .registers 3

    .prologue
    .line 1367
    iput-object p1, p0, Lrx/Completable$19$1;->this$1:Lrx/Completable$19;

    iput-object p2, p0, Lrx/Completable$19$1;->val$s:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 1372
    :try_start_0
    iget-object v1, p0, Lrx/Completable$19$1;->this$1:Lrx/Completable$19;

    iget-object v1, v1, Lrx/Completable$19;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_14

    .line 1378
    iget-object v1, p0, Lrx/Completable$19$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v1}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 1381
    :try_start_c
    iget-object v1, p0, Lrx/Completable$19$1;->this$1:Lrx/Completable$19;

    iget-object v1, v1, Lrx/Completable$19;->val$onAfterComplete:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_1b

    .line 1385
    :goto_13
    return-void

    .line 1373
    :catch_14
    move-exception v0

    .line 1374
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/Completable$19$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 1382
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v0

    .line 1383
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1390
    :try_start_0
    iget-object v2, p0, Lrx/Completable$19$1;->this$1:Lrx/Completable$19;

    iget-object v2, v2, Lrx/Completable$19;->val$onError:Lrx/functions/Action1;

    invoke-interface {v2, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_d

    .line 1395
    :goto_7
    iget-object v2, p0, Lrx/Completable$19$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v2, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 1396
    return-void

    .line 1391
    :catch_d
    move-exception v1

    .line 1392
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_7
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 5
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1402
    :try_start_0
    iget-object v1, p0, Lrx/Completable$19$1;->this$1:Lrx/Completable$19;

    iget-object v1, v1, Lrx/Completable$19;->val$onSubscribe:Lrx/functions/Action1;

    invoke-interface {v1, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_16

    .line 1410
    iget-object v1, p0, Lrx/Completable$19$1;->val$s:Lrx/CompletableSubscriber;

    new-instance v2, Lrx/Completable$19$1$1;

    invoke-direct {v2, p0, p1}, Lrx/Completable$19$1$1;-><init>(Lrx/Completable$19$1;Lrx/Subscription;)V

    invoke-static {v2}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 1421
    :goto_15
    return-void

    .line 1403
    :catch_16
    move-exception v0

    .line 1404
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 1405
    iget-object v1, p0, Lrx/Completable$19$1;->val$s:Lrx/CompletableSubscriber;

    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 1406
    iget-object v1, p0, Lrx/Completable$19$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_15
.end method

###### Class rx.Completable.AnonymousClass19.AnonymousClass1.C01771 (rx.Completable$19$1$1)
.class Lrx/Completable$19$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$19$1;->onSubscribe(Lrx/Subscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$19$1;

.field final synthetic val$d:Lrx/Subscription;


# direct methods
.method constructor <init>(Lrx/Completable$19$1;Lrx/Subscription;)V
    .registers 3

    .prologue
    .line 1410
    iput-object p1, p0, Lrx/Completable$19$1$1;->this$2:Lrx/Completable$19$1;

    iput-object p2, p0, Lrx/Completable$19$1$1;->val$d:Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 1414
    :try_start_0
    iget-object v1, p0, Lrx/Completable$19$1$1;->this$2:Lrx/Completable$19$1;

    iget-object v1, v1, Lrx/Completable$19$1;->this$1:Lrx/Completable$19;

    iget-object v1, v1, Lrx/Completable$19;->val$onUnsubscribe:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_f

    .line 1418
    :goto_9
    iget-object v1, p0, Lrx/Completable$19$1$1;->val$d:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 1419
    return-void

    .line 1415
    :catch_f
    move-exception v0

    .line 1416
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

###### Class rx.Completable.AnonymousClass2 (rx.Completable$2)
.class final Lrx/Completable$2;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$2;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 3
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 81
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 82
    return-void
.end method

###### Class rx.Completable.AnonymousClass20 (rx.Completable$20)
.class Lrx/Completable$20;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->doOnTerminate(Lrx/functions/Action0;)Lrx/Completable;
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
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$onTerminate:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action0;)V
    .registers 3

    .prologue
    .line 1446
    iput-object p1, p0, Lrx/Completable$20;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$20;->val$onTerminate:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1446
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$20;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1449
    iget-object v0, p0, Lrx/Completable$20;->val$onTerminate:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 1450
    return-void
.end method

###### Class rx.Completable.AnonymousClass21 (rx.Completable$21)
.class Lrx/Completable$21;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->get()Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$cdl:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$err:[Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 1475
    iput-object p1, p0, Lrx/Completable$21;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$21;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/Completable$21;->val$err:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1479
    iget-object v0, p0, Lrx/Completable$21;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1480
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1484
    iget-object v0, p0, Lrx/Completable$21;->val$err:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1485
    iget-object v0, p0, Lrx/Completable$21;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1486
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 2
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1491
    return-void
.end method

###### Class rx.Completable.AnonymousClass22 (rx.Completable$22)
.class Lrx/Completable$22;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$cdl:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$err:[Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 1521
    iput-object p1, p0, Lrx/Completable$22;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$22;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lrx/Completable$22;->val$err:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1525
    iget-object v0, p0, Lrx/Completable$22;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1526
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1530
    iget-object v0, p0, Lrx/Completable$22;->val$err:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1531
    iget-object v0, p0, Lrx/Completable$22;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1532
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 2
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1537
    return-void
.end method

###### Class rx.Completable.AnonymousClass23 (rx.Completable$23)
.class Lrx/Completable$23;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->lift(Lrx/Completable$Operator;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$onLift:Lrx/Completable$Operator;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/Completable$Operator;)V
    .registers 3

    .prologue
    .line 1565
    iput-object p1, p0, Lrx/Completable$23;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$23;->val$onLift:Lrx/Completable$Operator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1565
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$23;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 6
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 1569
    :try_start_0
    iget-object v3, p0, Lrx/Completable$23;->val$onLift:Lrx/Completable$Operator;

    invoke-static {v3}, Lrx/plugins/RxJavaHooks;->onCompletableLift(Lrx/Completable$Operator;)Lrx/Completable$Operator;

    move-result-object v1

    .line 1570
    .local v1, "onLiftDecorated":Lrx/Completable$Operator;
    invoke-interface {v1, p1}, Lrx/Completable$Operator;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/CompletableSubscriber;

    .line 1572
    .local v2, "sw":Lrx/CompletableSubscriber;
    iget-object v3, p0, Lrx/Completable$23;->this$0:Lrx/Completable;

    invoke-virtual {v3, v2}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_14

    .line 1578
    return-void

    .line 1573
    .end local v1    # "onLiftDecorated":Lrx/Completable$Operator;
    .end local v2    # "sw":Lrx/CompletableSubscriber;
    :catch_12
    move-exception v0

    .line 1574
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 1575
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_14
    move-exception v0

    .line 1576
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v3

    throw v3
.end method

###### Class rx.Completable.AnonymousClass24 (rx.Completable$24)
.class Lrx/Completable$24;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->observeOn(Lrx/Scheduler;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/Scheduler;)V
    .registers 3

    .prologue
    .line 1602
    iput-object p1, p0, Lrx/Completable$24;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$24;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1602
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$24;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 6
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 1606
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    .line 1608
    .local v0, "ad":Lrx/internal/util/SubscriptionList;
    iget-object v2, p0, Lrx/Completable$24;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v1

    .line 1609
    .local v1, "w":Lrx/Scheduler$Worker;
    invoke-virtual {v0, v1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 1611
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 1613
    iget-object v2, p0, Lrx/Completable$24;->this$0:Lrx/Completable;

    new-instance v3, Lrx/Completable$24$1;

    invoke-direct {v3, p0, v1, p1, v0}, Lrx/Completable$24$1;-><init>(Lrx/Completable$24;Lrx/Scheduler$Worker;Lrx/CompletableSubscriber;Lrx/internal/util/SubscriptionList;)V

    invoke-virtual {v2, v3}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1649
    return-void
.end method

###### Class rx.Completable.AnonymousClass24.AnonymousClass1 (rx.Completable$24$1)
.class Lrx/Completable$24$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$24;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$24;

.field final synthetic val$ad:Lrx/internal/util/SubscriptionList;

.field final synthetic val$s:Lrx/CompletableSubscriber;

.field final synthetic val$w:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Completable$24;Lrx/Scheduler$Worker;Lrx/CompletableSubscriber;Lrx/internal/util/SubscriptionList;)V
    .registers 5

    .prologue
    .line 1613
    iput-object p1, p0, Lrx/Completable$24$1;->this$1:Lrx/Completable$24;

    iput-object p2, p0, Lrx/Completable$24$1;->val$w:Lrx/Scheduler$Worker;

    iput-object p3, p0, Lrx/Completable$24$1;->val$s:Lrx/CompletableSubscriber;

    iput-object p4, p0, Lrx/Completable$24$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 1617
    iget-object v0, p0, Lrx/Completable$24$1;->val$w:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/Completable$24$1$1;

    invoke-direct {v1, p0}, Lrx/Completable$24$1$1;-><init>(Lrx/Completable$24$1;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 1627
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1631
    iget-object v0, p0, Lrx/Completable$24$1;->val$w:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/Completable$24$1$2;

    invoke-direct {v1, p0, p1}, Lrx/Completable$24$1$2;-><init>(Lrx/Completable$24$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 1641
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1645
    iget-object v0, p0, Lrx/Completable$24$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 1646
    return-void
.end method

###### Class rx.Completable.AnonymousClass24.AnonymousClass1.C01781 (rx.Completable$24$1$1)
.class Lrx/Completable$24$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$24$1;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$24$1;


# direct methods
.method constructor <init>(Lrx/Completable$24$1;)V
    .registers 2

    .prologue
    .line 1617
    iput-object p1, p0, Lrx/Completable$24$1$1;->this$2:Lrx/Completable$24$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 1621
    :try_start_0
    iget-object v0, p0, Lrx/Completable$24$1$1;->this$2:Lrx/Completable$24$1;

    iget-object v0, v0, Lrx/Completable$24$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 1623
    iget-object v0, p0, Lrx/Completable$24$1$1;->this$2:Lrx/Completable$24$1;

    iget-object v0, v0, Lrx/Completable$24$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 1625
    return-void

    .line 1623
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lrx/Completable$24$1$1;->this$2:Lrx/Completable$24$1;

    iget-object v1, v1, Lrx/Completable$24$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v1}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    throw v0
.end method

###### Class rx.Completable.AnonymousClass24.AnonymousClass1.AnonymousClass2 (rx.Completable$24$1$2)
.class Lrx/Completable$24$1$2;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$24$1;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$24$1;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/Completable$24$1;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 1631
    iput-object p1, p0, Lrx/Completable$24$1$2;->this$2:Lrx/Completable$24$1;

    iput-object p2, p0, Lrx/Completable$24$1$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 1635
    :try_start_0
    iget-object v0, p0, Lrx/Completable$24$1$2;->this$2:Lrx/Completable$24$1;

    iget-object v0, v0, Lrx/Completable$24$1;->val$s:Lrx/CompletableSubscriber;

    iget-object v1, p0, Lrx/Completable$24$1$2;->val$e:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_11

    .line 1637
    iget-object v0, p0, Lrx/Completable$24$1$2;->this$2:Lrx/Completable$24$1;

    iget-object v0, v0, Lrx/Completable$24$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 1639
    return-void

    .line 1637
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lrx/Completable$24$1$2;->this$2:Lrx/Completable$24$1;

    iget-object v1, v1, Lrx/Completable$24$1;->val$ad:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v1}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    throw v0
.end method

###### Class rx.Completable.AnonymousClass25 (rx.Completable$25)
.class Lrx/Completable$25;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->onErrorComplete(Lrx/functions/Func1;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$predicate:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Func1;)V
    .registers 3

    .prologue
    .line 1672
    iput-object p1, p0, Lrx/Completable$25;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$25;->val$predicate:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1672
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$25;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 1675
    iget-object v0, p0, Lrx/Completable$25;->this$0:Lrx/Completable;

    new-instance v1, Lrx/Completable$25$1;

    invoke-direct {v1, p0, p1}, Lrx/Completable$25$1;-><init>(Lrx/Completable$25;Lrx/CompletableSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1707
    return-void
.end method

###### Class rx.Completable.AnonymousClass25.AnonymousClass1 (rx.Completable$25$1)
.class Lrx/Completable$25$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$25;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$25;

.field final synthetic val$s:Lrx/CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$25;Lrx/CompletableSubscriber;)V
    .registers 3

    .prologue
    .line 1675
    iput-object p1, p0, Lrx/Completable$25$1;->this$1:Lrx/Completable$25;

    iput-object p2, p0, Lrx/Completable$25$1;->val$s:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1679
    iget-object v0, p0, Lrx/Completable$25$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 1680
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1687
    :try_start_0
    iget-object v3, p0, Lrx/Completable$25$1;->this$1:Lrx/Completable$25;

    iget-object v3, v3, Lrx/Completable$25;->val$predicate:Lrx/functions/Func1;

    invoke-interface {v3, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_16

    move-result v0

    .line 1694
    .local v0, "b":Z
    :goto_e
    if-eqz v0, :cond_2f

    .line 1695
    iget-object v3, p0, Lrx/Completable$25$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v3}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 1699
    :goto_15
    return-void

    .line 1688
    .end local v0    # "b":Z
    :catch_16
    move-exception v2

    .line 1689
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1690
    new-instance v1, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1691
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .restart local v0    # "b":Z
    move-object p1, v1

    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_e

    .line 1697
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_2f
    iget-object v3, p0, Lrx/Completable$25$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v3, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1703
    iget-object v0, p0, Lrx/Completable$25$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 1704
    return-void
.end method

###### Class rx.Completable.AnonymousClass26 (rx.Completable$26)
.class Lrx/Completable$26;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->onErrorResumeNext(Lrx/functions/Func1;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$errorMapper:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Func1;)V
    .registers 3

    .prologue
    .line 1721
    iput-object p1, p0, Lrx/Completable$26;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$26;->val$errorMapper:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1721
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$26;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 5
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 1724
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 1725
    .local v0, "sd":Lrx/subscriptions/SerialSubscription;
    iget-object v1, p0, Lrx/Completable$26;->this$0:Lrx/Completable;

    new-instance v2, Lrx/Completable$26$1;

    invoke-direct {v2, p0, p1, v0}, Lrx/Completable$26$1;-><init>(Lrx/Completable$26;Lrx/CompletableSubscriber;Lrx/subscriptions/SerialSubscription;)V

    invoke-virtual {v1, v2}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 1777
    return-void
.end method

###### Class rx.Completable.AnonymousClass26.AnonymousClass1 (rx.Completable$26$1)
.class Lrx/Completable$26$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$26;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$26;

.field final synthetic val$s:Lrx/CompletableSubscriber;

.field final synthetic val$sd:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/Completable$26;Lrx/CompletableSubscriber;Lrx/subscriptions/SerialSubscription;)V
    .registers 4

    .prologue
    .line 1725
    iput-object p1, p0, Lrx/Completable$26$1;->this$1:Lrx/Completable$26;

    iput-object p2, p0, Lrx/Completable$26$1;->val$s:Lrx/CompletableSubscriber;

    iput-object p3, p0, Lrx/Completable$26$1;->val$sd:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1729
    iget-object v0, p0, Lrx/Completable$26$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 1730
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1737
    :try_start_3
    iget-object v4, p0, Lrx/Completable$26$1;->this$1:Lrx/Completable$26;

    iget-object v4, v4, Lrx/Completable$26;->val$errorMapper:Lrx/functions/Func1;

    invoke-interface {v4, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Completable;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d} :catch_2c

    .line 1744
    .local v0, "c":Lrx/Completable;
    if-nez v0, :cond_43

    .line 1745
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The completable returned is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1746
    .local v3, "npe":Ljava/lang/NullPointerException;
    new-instance v1, Lrx/exceptions/CompositeException;

    new-array v4, v7, [Ljava/lang/Throwable;

    aput-object p1, v4, v5

    aput-object v3, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1747
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/Completable$26$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v4, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 1769
    .end local v0    # "c":Lrx/Completable;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    .restart local p1    # "e":Ljava/lang/Throwable;
    :goto_2b
    return-void

    .line 1738
    :catch_2c
    move-exception v2

    .line 1739
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v1, Lrx/exceptions/CompositeException;

    new-array v4, v7, [Ljava/lang/Throwable;

    aput-object p1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1740
    .end local p1    # "e":Ljava/lang/Throwable;
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/Completable$26$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v4, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 1741
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_2b

    .line 1751
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "c":Lrx/Completable;
    :cond_43
    new-instance v4, Lrx/Completable$26$1$1;

    invoke-direct {v4, p0}, Lrx/Completable$26$1$1;-><init>(Lrx/Completable$26$1;)V

    invoke-virtual {v0, v4}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    goto :goto_2b
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1773
    iget-object v0, p0, Lrx/Completable$26$1;->val$sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 1774
    return-void
.end method

###### Class rx.Completable.AnonymousClass26.AnonymousClass1.C01791 (rx.Completable$26$1$1)
.class Lrx/Completable$26$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$26$1;->onError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$26$1;


# direct methods
.method constructor <init>(Lrx/Completable$26$1;)V
    .registers 2

    .prologue
    .line 1751
    iput-object p1, p0, Lrx/Completable$26$1$1;->this$2:Lrx/Completable$26$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1755
    iget-object v0, p0, Lrx/Completable$26$1$1;->this$2:Lrx/Completable$26$1;

    iget-object v0, v0, Lrx/Completable$26$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 1756
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1760
    iget-object v0, p0, Lrx/Completable$26$1$1;->this$2:Lrx/Completable$26$1;

    iget-object v0, v0, Lrx/Completable$26$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 1761
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1765
    iget-object v0, p0, Lrx/Completable$26$1$1;->this$2:Lrx/Completable$26$1;

    iget-object v0, v0, Lrx/Completable$26$1;->val$sd:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 1766
    return-void
.end method

###### Class rx.Completable.AnonymousClass27 (rx.Completable$27)
.class Lrx/Completable$27;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->subscribe()Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/subscriptions/MultipleAssignmentSubscription;)V
    .registers 3

    .prologue
    .line 1888
    iput-object p1, p0, Lrx/Completable$27;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 1891
    iget-object v0, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1892
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1896
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 1897
    iget-object v0, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1898
    invoke-static {p1}, Lrx/Completable;->deliverUncaughtException(Ljava/lang/Throwable;)V

    .line 1899
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1903
    iget-object v0, p0, Lrx/Completable$27;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 1904
    return-void
.end method

###### Class rx.Completable.AnonymousClass28 (rx.Completable$28)
.class Lrx/Completable$28;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->subscribe(Lrx/functions/Action0;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

.field final synthetic val$onComplete:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;)V
    .registers 4

    .prologue
    .line 1921
    iput-object p1, p0, Lrx/Completable$28;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$28;->val$onComplete:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Completable$28;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 1925
    iget-boolean v1, p0, Lrx/Completable$28;->done:Z

    if-nez v1, :cond_11

    .line 1926
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/Completable$28;->done:Z

    .line 1928
    :try_start_7
    iget-object v1, p0, Lrx/Completable$28;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_12
    .catchall {:try_start_7 .. :try_end_c} :catchall_1f

    .line 1933
    iget-object v1, p0, Lrx/Completable$28;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1936
    :cond_11
    :goto_11
    return-void

    .line 1929
    :catch_12
    move-exception v0

    .line 1930
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_13
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 1931
    invoke-static {v0}, Lrx/Completable;->deliverUncaughtException(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1f

    .line 1933
    iget-object v1, p0, Lrx/Completable$28;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    goto :goto_11

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1f
    move-exception v1

    iget-object v2, p0, Lrx/Completable$28;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1940
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 1941
    iget-object v0, p0, Lrx/Completable$28;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1942
    invoke-static {p1}, Lrx/Completable;->deliverUncaughtException(Ljava/lang/Throwable;)V

    .line 1943
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 1947
    iget-object v0, p0, Lrx/Completable$28;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 1948
    return-void
.end method

###### Class rx.Completable.AnonymousClass29 (rx.Completable$29)
.class Lrx/Completable$29;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->subscribe(Lrx/functions/Action0;Lrx/functions/Action1;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

.field final synthetic val$onComplete:Lrx/functions/Action0;

.field final synthetic val$onError:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action1;)V
    .registers 5

    .prologue
    .line 1967
    iput-object p1, p0, Lrx/Completable$29;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$29;->val$onComplete:Lrx/functions/Action0;

    iput-object p3, p0, Lrx/Completable$29;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    iput-object p4, p0, Lrx/Completable$29;->val$onError:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method callOnError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1996
    :try_start_0
    iget-object v2, p0, Lrx/Completable$29;->val$onError:Lrx/functions/Action1;

    invoke-interface {v2, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b
    .catchall {:try_start_0 .. :try_end_5} :catchall_2b

    .line 2002
    iget-object v2, p0, Lrx/Completable$29;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 2004
    :goto_a
    return-void

    .line 1997
    :catch_b
    move-exception v1

    .line 1998
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_c
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_2b

    .line 1999
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1e
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 2000
    invoke-static {v0}, Lrx/Completable;->deliverUncaughtException(Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_32

    .line 2002
    iget-object v2, p0, Lrx/Completable$29;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v2}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    move-object p1, v0

    .line 2003
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_a

    .line 2002
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_2b
    move-exception v2

    :goto_2c
    iget-object v3, p0, Lrx/Completable$29;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v3}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    throw v2

    .end local p1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :catchall_32
    move-exception v2

    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_2c
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 1971
    iget-boolean v1, p0, Lrx/Completable$29;->done:Z

    if-nez v1, :cond_11

    .line 1972
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/Completable$29;->done:Z

    .line 1974
    :try_start_7
    iget-object v1, p0, Lrx/Completable$29;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_12

    .line 1979
    iget-object v1, p0, Lrx/Completable$29;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/MultipleAssignmentSubscription;->unsubscribe()V

    .line 1981
    :cond_11
    :goto_11
    return-void

    .line 1975
    :catch_12
    move-exception v0

    .line 1976
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/Completable$29;->callOnError(Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1985
    iget-boolean v0, p0, Lrx/Completable$29;->done:Z

    if-nez v0, :cond_b

    .line 1986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/Completable$29;->done:Z

    .line 1987
    invoke-virtual {p0, p1}, Lrx/Completable$29;->callOnError(Ljava/lang/Throwable;)V

    .line 1992
    :goto_a
    return-void

    .line 1989
    :cond_b
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 1990
    invoke-static {p1}, Lrx/Completable;->deliverUncaughtException(Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 2008
    iget-object v0, p0, Lrx/Completable$29;->val$mad:Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/MultipleAssignmentSubscription;->set(Lrx/Subscription;)V

    .line 2009
    return-void
.end method

###### Class rx.Completable.AnonymousClass3 (rx.Completable$3)
.class final Lrx/Completable$3;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->amb([Lrx/Completable;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sources:[Lrx/Completable;


# direct methods
.method constructor <init>([Lrx/Completable;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lrx/Completable$3;->val$sources:[Lrx/Completable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 101
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$3;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 12
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 104
    new-instance v7, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v7}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 105
    .local v7, "set":Lrx/subscriptions/CompositeSubscription;
    invoke-interface {p1, v7}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 107
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 109
    .local v6, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v3, Lrx/Completable$3$1;

    invoke-direct {v3, p0, v6, v7, p1}, Lrx/Completable$3$1;-><init>(Lrx/Completable$3;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/CompletableSubscriber;)V

    .line 135
    .local v3, "inner":Lrx/CompletableSubscriber;
    iget-object v0, p0, Lrx/Completable$3;->val$sources:[Lrx/Completable;

    .local v0, "arr$":[Lrx/Completable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_16
    if-ge v2, v4, :cond_20

    aget-object v1, v0, v2

    .line 136
    .local v1, "c":Lrx/Completable;
    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_21

    .line 156
    .end local v1    # "c":Lrx/Completable;
    :cond_20
    :goto_20
    return-void

    .line 139
    .restart local v1    # "c":Lrx/Completable;
    :cond_21
    if-nez v1, :cond_3d

    .line 140
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v8, "One of the sources is null"

    invoke-direct {v5, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 141
    .local v5, "npe":Ljava/lang/NullPointerException;
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 142
    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 143
    invoke-interface {p1, v5}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_20

    .line 145
    :cond_39
    invoke-static {v5}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_20

    .line 149
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    :cond_3d
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_20

    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_20

    .line 154
    invoke-virtual {v1, v3}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

###### Class rx.Completable.AnonymousClass3.AnonymousClass1 (rx.Completable$3$1)
.class Lrx/Completable$3$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$3;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable$3;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lrx/CompletableSubscriber;

.field final synthetic val$set:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method constructor <init>(Lrx/Completable$3;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/CompletableSubscriber;)V
    .registers 5

    .prologue
    .line 109
    iput-object p1, p0, Lrx/Completable$3$1;->this$0:Lrx/Completable$3;

    iput-object p2, p0, Lrx/Completable$3$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/Completable$3$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    iput-object p4, p0, Lrx/Completable$3$1;->val$s:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lrx/Completable$3$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 113
    iget-object v0, p0, Lrx/Completable$3$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 114
    iget-object v0, p0, Lrx/Completable$3$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 116
    :cond_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    iget-object v0, p0, Lrx/Completable$3$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 121
    iget-object v0, p0, Lrx/Completable$3$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 122
    iget-object v0, p0, Lrx/Completable$3$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 126
    :goto_14
    return-void

    .line 124
    :cond_15
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 130
    iget-object v0, p0, Lrx/Completable$3$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 131
    return-void
.end method

###### Class rx.Completable.AnonymousClass30 (rx.Completable$30)
.class Lrx/Completable$30;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->unsafeSubscribe(Lrx/Subscriber;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$s:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/Subscriber;)V
    .registers 3

    .prologue
    .line 2078
    iput-object p1, p0, Lrx/Completable$30;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$30;->val$s:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 2081
    iget-object v0, p0, Lrx/Completable$30;->val$s:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 2082
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2086
    iget-object v0, p0, Lrx/Completable$30;->val$s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 2087
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 2091
    iget-object v0, p0, Lrx/Completable$30;->val$s:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 2092
    return-void
.end method

###### Class rx.Completable.AnonymousClass31 (rx.Completable$31)
.class Lrx/Completable$31;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->subscribeOn(Lrx/Scheduler;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/Scheduler;)V
    .registers 3

    .prologue
    .line 2131
    iput-object p1, p0, Lrx/Completable$31;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$31;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2131
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$31;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 2136
    iget-object v1, p0, Lrx/Completable$31;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 2138
    .local v0, "w":Lrx/Scheduler$Worker;
    new-instance v1, Lrx/Completable$31$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/Completable$31$1;-><init>(Lrx/Completable$31;Lrx/CompletableSubscriber;Lrx/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 2148
    return-void
.end method

###### Class rx.Completable.AnonymousClass31.AnonymousClass1 (rx.Completable$31$1)
.class Lrx/Completable$31$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$31;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$31;

.field final synthetic val$s:Lrx/CompletableSubscriber;

.field final synthetic val$w:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Completable$31;Lrx/CompletableSubscriber;Lrx/Scheduler$Worker;)V
    .registers 4

    .prologue
    .line 2138
    iput-object p1, p0, Lrx/Completable$31$1;->this$1:Lrx/Completable$31;

    iput-object p2, p0, Lrx/Completable$31$1;->val$s:Lrx/CompletableSubscriber;

    iput-object p3, p0, Lrx/Completable$31$1;->val$w:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 2142
    :try_start_0
    iget-object v0, p0, Lrx/Completable$31$1;->this$1:Lrx/Completable$31;

    iget-object v0, v0, Lrx/Completable$31;->this$0:Lrx/Completable;

    iget-object v1, p0, Lrx/Completable$31$1;->val$s:Lrx/CompletableSubscriber;

    invoke-virtual {v0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_f

    .line 2144
    iget-object v0, p0, Lrx/Completable$31$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 2146
    return-void

    .line 2144
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lrx/Completable$31$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method

###### Class rx.Completable.AnonymousClass32 (rx.Completable$32)
.class Lrx/Completable$32;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->toObservable()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;


# direct methods
.method constructor <init>(Lrx/Completable;)V
    .registers 2

    .prologue
    .line 2245
    iput-object p1, p0, Lrx/Completable$32;->this$0:Lrx/Completable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2245
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$32;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2248
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/Completable$32;->this$0:Lrx/Completable;

    invoke-virtual {v0, p1}, Lrx/Completable;->unsafeSubscribe(Lrx/Subscriber;)V

    .line 2249
    return-void
.end method

###### Class rx.Completable.AnonymousClass33 (rx.Completable$33)
.class Lrx/Completable$33;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->toSingle(Lrx/functions/Func0;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$completionValueFunc0:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/functions/Func0;)V
    .registers 3

    .prologue
    .line 2263
    iput-object p1, p0, Lrx/Completable$33;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$33;->val$completionValueFunc0:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2263
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$33;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2266
    .local p1, "s":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v0, p0, Lrx/Completable$33;->this$0:Lrx/Completable;

    new-instance v1, Lrx/Completable$33$1;

    invoke-direct {v1, p0, p1}, Lrx/Completable$33$1;-><init>(Lrx/Completable$33;Lrx/SingleSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 2297
    return-void
.end method

###### Class rx.Completable.AnonymousClass33.AnonymousClass1 (rx.Completable$33$1)
.class Lrx/Completable$33$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$33;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$33;

.field final synthetic val$s:Lrx/SingleSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$33;Lrx/SingleSubscriber;)V
    .registers 3

    .prologue
    .line 2266
    iput-object p1, p0, Lrx/Completable$33$1;->this$1:Lrx/Completable$33;

    iput-object p2, p0, Lrx/Completable$33$1;->val$s:Lrx/SingleSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 6

    .prologue
    .line 2273
    :try_start_0
    iget-object v2, p0, Lrx/Completable$33$1;->this$1:Lrx/Completable$33;

    iget-object v2, v2, Lrx/Completable$33;->val$completionValueFunc0:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_17

    move-result-object v1

    .line 2279
    .local v1, "v":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1e

    .line 2280
    iget-object v2, p0, Lrx/Completable$33$1;->val$s:Lrx/SingleSubscriber;

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "The value supplied is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 2284
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :goto_16
    return-void

    .line 2274
    :catch_17
    move-exception v0

    .line 2275
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/Completable$33$1;->val$s:Lrx/SingleSubscriber;

    invoke-virtual {v2, v0}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 2282
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_1e
    iget-object v2, p0, Lrx/Completable$33$1;->val$s:Lrx/SingleSubscriber;

    invoke-virtual {v2, v1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2288
    iget-object v0, p0, Lrx/Completable$33$1;->val$s:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 2289
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 2293
    iget-object v0, p0, Lrx/Completable$33$1;->val$s:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 2294
    return-void
.end method

###### Class rx.Completable.AnonymousClass34 (rx.Completable$34)
.class Lrx/Completable$34;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->toSingleDefault(Ljava/lang/Object;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$completionValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/Completable;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 2311
    iput-object p1, p0, Lrx/Completable$34;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$34;->val$completionValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2314
    iget-object v0, p0, Lrx/Completable$34;->val$completionValue:Ljava/lang/Object;

    return-object v0
.end method

###### Class rx.Completable.AnonymousClass35 (rx.Completable$35)
.class Lrx/Completable$35;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->unsubscribeOn(Lrx/Scheduler;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable;

.field final synthetic val$scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Lrx/Completable;Lrx/Scheduler;)V
    .registers 3

    .prologue
    .line 2328
    iput-object p1, p0, Lrx/Completable$35;->this$0:Lrx/Completable;

    iput-object p2, p0, Lrx/Completable$35;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2328
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$35;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 2331
    iget-object v0, p0, Lrx/Completable$35;->this$0:Lrx/Completable;

    new-instance v1, Lrx/Completable$35$1;

    invoke-direct {v1, p0, p1}, Lrx/Completable$35$1;-><init>(Lrx/Completable$35;Lrx/CompletableSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 2364
    return-void
.end method

###### Class rx.Completable.AnonymousClass35.AnonymousClass1 (rx.Completable$35$1)
.class Lrx/Completable$35$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$35;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$35;

.field final synthetic val$s:Lrx/CompletableSubscriber;


# direct methods
.method constructor <init>(Lrx/Completable$35;Lrx/CompletableSubscriber;)V
    .registers 3

    .prologue
    .line 2331
    iput-object p1, p0, Lrx/Completable$35$1;->this$1:Lrx/Completable$35;

    iput-object p2, p0, Lrx/Completable$35$1;->val$s:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 2335
    iget-object v0, p0, Lrx/Completable$35$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 2336
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2340
    iget-object v0, p0, Lrx/Completable$35$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 2341
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 4
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 2345
    iget-object v0, p0, Lrx/Completable$35$1;->val$s:Lrx/CompletableSubscriber;

    new-instance v1, Lrx/Completable$35$1$1;

    invoke-direct {v1, p0, p1}, Lrx/Completable$35$1$1;-><init>(Lrx/Completable$35$1;Lrx/Subscription;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 2361
    return-void
.end method

###### Class rx.Completable.AnonymousClass35.AnonymousClass1.C01801 (rx.Completable$35$1$1)
.class Lrx/Completable$35$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$35$1;->onSubscribe(Lrx/Subscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$35$1;

.field final synthetic val$d:Lrx/Subscription;


# direct methods
.method constructor <init>(Lrx/Completable$35$1;Lrx/Subscription;)V
    .registers 3

    .prologue
    .line 2345
    iput-object p1, p0, Lrx/Completable$35$1$1;->this$2:Lrx/Completable$35$1;

    iput-object p2, p0, Lrx/Completable$35$1$1;->val$d:Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 2348
    iget-object v1, p0, Lrx/Completable$35$1$1;->this$2:Lrx/Completable$35$1;

    iget-object v1, v1, Lrx/Completable$35$1;->this$1:Lrx/Completable$35;

    iget-object v1, v1, Lrx/Completable$35;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 2349
    .local v0, "w":Lrx/Scheduler$Worker;
    new-instance v1, Lrx/Completable$35$1$1$1;

    invoke-direct {v1, p0, v0}, Lrx/Completable$35$1$1$1;-><init>(Lrx/Completable$35$1$1;Lrx/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 2359
    return-void
.end method

###### Class rx.Completable.AnonymousClass35.AnonymousClass1.C01801.C01811 (rx.Completable$35$1$1$1)
.class Lrx/Completable$35$1$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$35$1$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lrx/Completable$35$1$1;

.field final synthetic val$w:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Completable$35$1$1;Lrx/Scheduler$Worker;)V
    .registers 3

    .prologue
    .line 2349
    iput-object p1, p0, Lrx/Completable$35$1$1$1;->this$3:Lrx/Completable$35$1$1;

    iput-object p2, p0, Lrx/Completable$35$1$1$1;->val$w:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 2353
    :try_start_0
    iget-object v0, p0, Lrx/Completable$35$1$1$1;->this$3:Lrx/Completable$35$1$1;

    iget-object v0, v0, Lrx/Completable$35$1$1;->val$d:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    .line 2355
    iget-object v0, p0, Lrx/Completable$35$1$1$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 2357
    return-void

    .line 2355
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lrx/Completable$35$1$1$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method

###### Class rx.Completable.AnonymousClass4 (rx.Completable$4)
.class final Lrx/Completable$4;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->amb(Ljava/lang/Iterable;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$sources:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lrx/Completable$4;->val$sources:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 170
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$4;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 14
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 173
    new-instance v8, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v8}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 174
    .local v8, "set":Lrx/subscriptions/CompositeSubscription;
    invoke-interface {p1, v8}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 179
    :try_start_a
    iget-object v9, p0, Lrx/Completable$4;->val$sources:Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_1d

    move-result-object v5

    .line 185
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    if-nez v5, :cond_22

    .line 186
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "The iterator returned is null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v9}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 284
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_1c
    :goto_1c
    return-void

    .line 180
    :catch_1d
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/Throwable;
    invoke-interface {p1, v2}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 190
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_22
    const/4 v3, 0x1

    .line 192
    .local v3, "empty":Z
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 194
    .local v7, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Lrx/Completable$4$1;

    invoke-direct {v4, p0, v7, v8, p1}, Lrx/Completable$4$1;-><init>(Lrx/Completable$4;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/CompletableSubscriber;)V

    .line 221
    .local v4, "inner":Lrx/CompletableSubscriber;
    :goto_2d
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_1c

    invoke-virtual {v8}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 228
    :try_start_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_45

    move-result v0

    .line 239
    .local v0, "b":Z
    if-nez v0, :cond_57

    .line 240
    if-eqz v3, :cond_1c

    .line 241
    invoke-interface {p1}, Lrx/CompletableSubscriber;->onCompleted()V

    goto :goto_1c

    .line 229
    .end local v0    # "b":Z
    :catch_45
    move-exception v2

    .line 230
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 231
    invoke-virtual {v8}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 232
    invoke-interface {p1, v2}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 234
    :cond_53
    invoke-static {v2}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 246
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    :cond_57
    const/4 v3, 0x0

    .line 248
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_1c

    invoke-virtual {v8}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 255
    :try_start_64
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Completable;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6a} :catch_80

    .line 266
    .local v1, "c":Lrx/Completable;
    if-nez v1, :cond_96

    .line 267
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v9, "One of the sources is null"

    invoke-direct {v6, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 268
    .local v6, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 269
    invoke-virtual {v8}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 270
    invoke-interface {p1, v6}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 256
    .end local v1    # "c":Lrx/Completable;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :catch_80
    move-exception v2

    .line 257
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 258
    invoke-virtual {v8}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 259
    invoke-interface {p1, v2}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 261
    :cond_8e
    invoke-static {v2}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 272
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "c":Lrx/Completable;
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    :cond_92
    invoke-static {v6}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 277
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :cond_96
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_1c

    invoke-virtual {v8}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 282
    invoke-virtual {v1, v4}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    goto :goto_2d
.end method

###### Class rx.Completable.AnonymousClass4.AnonymousClass1 (rx.Completable$4$1)
.class Lrx/Completable$4$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$4;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Completable$4;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lrx/CompletableSubscriber;

.field final synthetic val$set:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method constructor <init>(Lrx/Completable$4;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/CompletableSubscriber;)V
    .registers 5

    .prologue
    .line 194
    iput-object p1, p0, Lrx/Completable$4$1;->this$0:Lrx/Completable$4;

    iput-object p2, p0, Lrx/Completable$4$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/Completable$4$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    iput-object p4, p0, Lrx/Completable$4$1;->val$s:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 197
    iget-object v0, p0, Lrx/Completable$4$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 198
    iget-object v0, p0, Lrx/Completable$4$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 199
    iget-object v0, p0, Lrx/Completable$4$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 201
    :cond_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 205
    iget-object v0, p0, Lrx/Completable$4$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 206
    iget-object v0, p0, Lrx/Completable$4$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 207
    iget-object v0, p0, Lrx/Completable$4$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 211
    :goto_14
    return-void

    .line 209
    :cond_15
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 215
    iget-object v0, p0, Lrx/Completable$4$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 216
    return-void
.end method

###### Class rx.Completable.AnonymousClass5 (rx.Completable$5)
.class final Lrx/Completable$5;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->defer(Lrx/functions/Func0;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$completableFunc0:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/functions/Func0;)V
    .registers 2

    .prologue
    .line 380
    iput-object p1, p0, Lrx/Completable$5;->val$completableFunc0:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 380
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$5;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 6
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 386
    :try_start_0
    iget-object v2, p0, Lrx/Completable$5;->val$completableFunc0:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Completable;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_1c

    .line 393
    .local v0, "c":Lrx/Completable;
    if-nez v0, :cond_28

    .line 394
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    invoke-interface {p1, v2}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 395
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The completable returned is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 400
    .end local v0    # "c":Lrx/Completable;
    :goto_1b
    return-void

    .line 387
    :catch_1c
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    invoke-interface {p1, v2}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 389
    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 399
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "c":Lrx/Completable;
    :cond_28
    invoke-virtual {v0, p1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    goto :goto_1b
.end method

###### Class rx.Completable.AnonymousClass6 (rx.Completable$6)
.class final Lrx/Completable$6;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->error(Lrx/functions/Func0;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$errorFunc0:Lrx/functions/Func0;


# direct methods
.method constructor <init>(Lrx/functions/Func0;)V
    .registers 2

    .prologue
    .line 416
    iput-object p1, p0, Lrx/Completable$6;->val$errorFunc0:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 416
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$6;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 5
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 419
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v2

    invoke-interface {p1, v2}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 423
    :try_start_7
    iget-object v2, p0, Lrx/Completable$6;->val$errorFunc0:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_1c

    .line 428
    .local v1, "error":Ljava/lang/Throwable;
    :goto_f
    if-nez v1, :cond_18

    .line 429
    new-instance v1, Ljava/lang/NullPointerException;

    .end local v1    # "error":Ljava/lang/Throwable;
    const-string v2, "The error supplied is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 431
    .restart local v1    # "error":Ljava/lang/Throwable;
    :cond_18
    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 432
    return-void

    .line 424
    .end local v1    # "error":Ljava/lang/Throwable;
    :catch_1c
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    .restart local v1    # "error":Ljava/lang/Throwable;
    goto :goto_f
.end method

###### Class rx.Completable.AnonymousClass7 (rx.Completable$7)
.class final Lrx/Completable$7;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->error(Ljava/lang/Throwable;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .prologue
    .line 444
    iput-object p1, p0, Lrx/Completable$7;->val$error:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 444
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$7;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 3
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 447
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 448
    iget-object v0, p0, Lrx/Completable$7;->val$error:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 449
    return-void
.end method

###### Class rx.Completable.AnonymousClass8 (rx.Completable$8)
.class final Lrx/Completable$8;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->fromAction(Lrx/functions/Action0;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/functions/Action0;)V
    .registers 2

    .prologue
    .line 462
    iput-object p1, p0, Lrx/Completable$8;->val$action:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 462
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$8;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 5
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 465
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    .line 466
    .local v0, "bs":Lrx/subscriptions/BooleanSubscription;
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 468
    :try_start_8
    iget-object v2, p0, Lrx/Completable$8;->val$action:Lrx/functions/Action0;

    invoke-interface {v2}, Lrx/functions/Action0;->call()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_17

    .line 475
    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_16

    .line 476
    invoke-interface {p1}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 478
    :cond_16
    :goto_16
    return-void

    .line 469
    :catch_17
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_16

    .line 471
    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

###### Class rx.Completable.AnonymousClass9 (rx.Completable$9)
.class final Lrx/Completable$9;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2

    .prologue
    .line 490
    iput-object p1, p0, Lrx/Completable$9;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 490
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Completable$9;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 5
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 493
    new-instance v0, Lrx/subscriptions/BooleanSubscription;

    invoke-direct {v0}, Lrx/subscriptions/BooleanSubscription;-><init>()V

    .line 494
    .local v0, "bs":Lrx/subscriptions/BooleanSubscription;
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 496
    :try_start_8
    iget-object v2, p0, Lrx/Completable$9;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_17

    .line 503
    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_16

    .line 504
    invoke-interface {p1}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 506
    :cond_16
    :goto_16
    return-void

    .line 497
    :catch_17
    move-exception v1

    .line 498
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/subscriptions/BooleanSubscription;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_16

    .line 499
    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_16
.end method

###### Class rx.Completable.OnSubscribe (rx.Completable$OnSubscribe)
.class public interface abstract Lrx/Completable$OnSubscribe;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/CompletableSubscriber;",
        ">;"
    }
.end annotation

###### Class rx.Completable.Operator (rx.Completable$Operator)
.class public interface abstract Lrx/Completable$Operator;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/CompletableSubscriber;",
        "Lrx/CompletableSubscriber;",
        ">;"
    }
.end annotation

###### Class rx.Completable.Transformer (rx.Completable$Transformer)
.class public interface abstract Lrx/Completable$Transformer;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Transformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Completable;",
        "Lrx/Completable;",
        ">;"
    }
.end annotation
