###### Class rx.internal.util.RxRingBuffer (rx.internal.util.RxRingBuffer)
.class public Lrx/internal/util/RxRingBuffer;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements Lrx/Subscription;


# static fields
.field private static final ON:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIZE:I

.field public static final SPMC_POOL:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SPSC_POOL:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final pool:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field public volatile terminalState:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 128
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v3

    sput-object v3, Lrx/internal/util/RxRingBuffer;->ON:Lrx/internal/operators/NotificationLite;

    .line 245
    const/16 v0, 0x80

    .line 248
    .local v0, "defaultSize":I
    invoke-static {}, Lrx/internal/util/PlatformDependent;->isAndroid()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 249
    const/16 v0, 0x10

    .line 253
    :cond_10
    const-string v3, "rx.ring-buffer.size"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "sizeFromProperty":Ljava/lang/String;
    if-eqz v2, :cond_1c

    .line 256
    :try_start_18
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_2d

    move-result v0

    .line 262
    :cond_1c
    :goto_1c
    sput v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    .line 267
    new-instance v3, Lrx/internal/util/RxRingBuffer$1;

    invoke-direct {v3}, Lrx/internal/util/RxRingBuffer$1;-><init>()V

    sput-object v3, Lrx/internal/util/RxRingBuffer;->SPSC_POOL:Lrx/internal/util/ObjectPool;

    .line 277
    new-instance v3, Lrx/internal/util/RxRingBuffer$2;

    invoke-direct {v3}, Lrx/internal/util/RxRingBuffer$2;-><init>()V

    sput-object v3, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    return-void

    .line 257
    :catch_2d
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set \'rx.buffer.size\' with value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    .line 330
    new-instance v0, Lrx/internal/util/SynchronizedQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {p0, v0, v1}, Lrx/internal/util/RxRingBuffer;-><init>(Ljava/util/Queue;I)V

    .line 331
    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .registers 4
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->pool:Lrx/internal/util/ObjectPool;

    .line 305
    iput p2, p0, Lrx/internal/util/RxRingBuffer;->size:I

    .line 306
    return-void
.end method

.method private constructor <init>(Lrx/internal/util/ObjectPool;I)V
    .registers 4
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/ObjectPool",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "pool":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<Ljava/util/Queue<Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lrx/internal/util/RxRingBuffer;->pool:Lrx/internal/util/ObjectPool;

    .line 310
    invoke-virtual {p1}, Lrx/internal/util/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 311
    iput p2, p0, Lrx/internal/util/RxRingBuffer;->size:I

    .line 312
    return-void
.end method

.method public static getSpmcInstance()Lrx/internal/util/RxRingBuffer;
    .registers 3

    .prologue
    .line 295
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 296
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/RxRingBuffer;-><init>(Lrx/internal/util/ObjectPool;I)V

    .line 298
    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    invoke-direct {v0}, Lrx/internal/util/RxRingBuffer;-><init>()V

    goto :goto_f
.end method

.method public static getSpscInstance()Lrx/internal/util/RxRingBuffer;
    .registers 3

    .prologue
    .line 287
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 288
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPSC_POOL:Lrx/internal/util/ObjectPool;

    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/RxRingBuffer;-><init>(Lrx/internal/util/ObjectPool;I)V

    .line 290
    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    invoke-direct {v0}, Lrx/internal/util/RxRingBuffer;-><init>()V

    goto :goto_f
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Lrx/Observer;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "child"    # Lrx/Observer;

    .prologue
    .line 445
    sget-object v0, Lrx/internal/util/RxRingBuffer;->ON:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p2, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public asError(Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 449
    sget-object v0, Lrx/internal/util/RxRingBuffer;->ON:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public available()I
    .registers 3

    .prologue
    .line 374
    iget v0, p0, Lrx/internal/util/RxRingBuffer;->size:I

    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer;->count()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .registers 2

    .prologue
    .line 378
    iget v0, p0, Lrx/internal/util/RxRingBuffer;->size:I

    return v0
.end method

.method public count()I
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 383
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v0, :cond_6

    .line 384
    const/4 v1, 0x0

    .line 386
    :goto_5
    return v1

    :cond_6
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    goto :goto_5
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 440
    sget-object v0, Lrx/internal/util/RxRingBuffer;->ON:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 432
    sget-object v0, Lrx/internal/util/RxRingBuffer;->ON:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 390
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 391
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public isError(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 436
    sget-object v0, Lrx/internal/util/RxRingBuffer;->ON:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 362
    sget-object v0, Lrx/internal/util/RxRingBuffer;->ON:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 364
    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 368
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 369
    sget-object v0, Lrx/internal/util/RxRingBuffer;->ON:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 371
    :cond_c
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    .local v0, "iae":Z
    const/4 v1, 0x0

    .line 342
    .local v1, "mbe":Z
    monitor-enter p0

    .line 343
    :try_start_3
    iget-object v2, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 344
    .local v2, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-eqz v2, :cond_21

    .line 345
    sget-object v3, Lrx/internal/util/RxRingBuffer;->ON:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v1, 0x1

    .line 349
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_23

    .line 351
    if-eqz v0, :cond_26

    .line 352
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    :cond_1f
    const/4 v1, 0x0

    goto :goto_14

    .line 347
    :cond_21
    const/4 v0, 0x1

    goto :goto_14

    .line 349
    .end local v2    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3

    .line 354
    .restart local v2    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_26
    if-eqz v1, :cond_2e

    .line 355
    new-instance v3, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v3}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    throw v3

    .line 357
    :cond_2e
    return-void
.end method

.method public peek()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 416
    monitor-enter p0

    .line 417
    :try_start_1
    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 418
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_8

    .line 420
    const/4 v0, 0x0

    monitor-exit p0

    .line 428
    :goto_7
    return-object v0

    .line 422
    :cond_8
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 423
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 424
    .local v2, "ts":Ljava/lang/Object;
    if-nez v0, :cond_19

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_19

    .line 425
    move-object v0, v2

    .line 427
    :cond_19
    monitor-exit p0

    goto :goto_7

    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v2    # "ts":Ljava/lang/Object;
    :catchall_1b
    move-exception v3

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method public poll()Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 396
    monitor-enter p0

    .line 397
    :try_start_2
    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 398
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    if-nez v1, :cond_8

    .line 400
    monitor-exit p0

    .line 411
    :goto_7
    return-object v0

    .line 402
    :cond_8
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 404
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 405
    .local v2, "ts":Ljava/lang/Object;
    if-nez v0, :cond_1c

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1c

    .line 406
    move-object v0, v2

    .line 408
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 410
    :cond_1c
    monitor-exit p0

    goto :goto_7

    .end local v0    # "o":Ljava/lang/Object;
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v2    # "ts":Ljava/lang/Object;
    :catchall_1e
    move-exception v3

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_1e

    throw v3
.end method

.method public declared-synchronized release()V
    .registers 4

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 316
    .local v1, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->pool:Lrx/internal/util/ObjectPool;

    .line 317
    .local v0, "p":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<Ljava/util/Queue<Ljava/lang/Object;>;>;"
    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    .line 318
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 319
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 320
    invoke-virtual {v0, v1}, Lrx/internal/util/ObjectPool;->returnObject(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 322
    :cond_12
    monitor-exit p0

    return-void

    .line 315
    .end local v0    # "p":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<Ljava/util/Queue<Ljava/lang/Object;>;>;"
    .end local v1    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public unsubscribe()V
    .registers 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer;->release()V

    .line 327
    return-void
.end method

###### Class rx.internal.util.RxRingBuffer.AnonymousClass1 (rx.internal.util.RxRingBuffer$1)
.class final Lrx/internal/util/RxRingBuffer$1;
.super Lrx/internal/util/ObjectPool;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/RxRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/ObjectPool",
        "<",
        "Ljava/util/Queue",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 267
    invoke-direct {p0}, Lrx/internal/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer$1;->createObject()Lrx/internal/util/unsafe/SpscArrayQueue;

    move-result-object v0

    return-object v0
.end method

.method protected createObject()Lrx/internal/util/unsafe/SpscArrayQueue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/unsafe/SpscArrayQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lrx/internal/util/unsafe/SpscArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpscArrayQueue;-><init>(I)V

    return-object v0
.end method

###### Class rx.internal.util.RxRingBuffer.AnonymousClass2 (rx.internal.util.RxRingBuffer$2)
.class final Lrx/internal/util/RxRingBuffer$2;
.super Lrx/internal/util/ObjectPool;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/RxRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/ObjectPool",
        "<",
        "Ljava/util/Queue",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 277
    invoke-direct {p0}, Lrx/internal/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer$2;->createObject()Lrx/internal/util/unsafe/SpmcArrayQueue;

    move-result-object v0

    return-object v0
.end method

.method protected createObject()Lrx/internal/util/unsafe/SpmcArrayQueue;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/unsafe/SpmcArrayQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lrx/internal/util/unsafe/SpmcArrayQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;-><init>(I)V

    return-object v0
.end method
