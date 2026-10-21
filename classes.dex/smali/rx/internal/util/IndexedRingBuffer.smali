###### Class rx.internal.util.IndexedRingBuffer (rx.internal.util.IndexedRingBuffer)
.class public final Lrx/internal/util/IndexedRingBuffer;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/IndexedRingBuffer$IndexSection;,
        Lrx/internal/util/IndexedRingBuffer$ElementSection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final POOL:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool",
            "<",
            "Lrx/internal/util/IndexedRingBuffer",
            "<*>;>;"
        }
    .end annotation
.end field

.field static final SIZE:I


# instance fields
.field private final elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/IndexedRingBuffer$ElementSection",
            "<TE;>;"
        }
    .end annotation
.end field

.field final index:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

.field final removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 55
    new-instance v3, Lrx/internal/util/IndexedRingBuffer$1;

    invoke-direct {v3}, Lrx/internal/util/IndexedRingBuffer$1;-><init>()V

    sput-object v3, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    .line 238
    const/16 v0, 0x80

    .line 241
    .local v0, "defaultSize":I
    invoke-static {}, Lrx/internal/util/PlatformDependent;->isAndroid()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 242
    const/16 v0, 0x8

    .line 246
    :cond_11
    const-string v3, "rx.indexed-ring-buffer.size"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "sizeFromProperty":Ljava/lang/String;
    if-eqz v2, :cond_1d

    .line 249
    :try_start_19
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_1c} :catch_20

    move-result v0

    .line 255
    :cond_1d
    :goto_1d
    sput v0, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    .line 256
    return-void

    .line 250
    :catch_20
    move-exception v1

    .line 251
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set \'rx.indexed-ring-buffer.size\' with value "

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

    goto :goto_1d
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 294
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$ElementSection;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 51
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$IndexSection;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 296
    return-void
.end method

.method private forEach(Lrx/functions/Func1;II)I
    .registers 12
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    iget-object v7, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 455
    .local v4, "maxIndex":I
    move v5, p2

    .line 456
    .local v5, "realIndex":I
    iget-object v6, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 458
    .local v6, "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    sget v7, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-lt p2, v7, :cond_14

    .line 460
    invoke-direct {p0, p2}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v6

    .line 461
    sget v7, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int/2addr p2, v7

    .line 464
    :cond_14
    :goto_14
    if-eqz v6, :cond_1f

    .line 465
    move v2, p2

    .local v2, "i":I
    :goto_17
    sget v7, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v2, v7, :cond_3c

    .line 466
    if-ge v5, v4, :cond_1f

    if-lt v5, p3, :cond_21

    .end local v2    # "i":I
    :cond_1f
    move v3, v5

    .line 484
    :goto_20
    return v3

    .line 469
    .restart local v2    # "i":I
    :cond_21
    iget-object v7, v6, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 470
    .local v1, "element":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_2e

    .line 465
    :cond_29
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 473
    :cond_2e
    move v3, v5

    .line 474
    .local v3, "lastIndex":I
    invoke-interface {p1, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 475
    .local v0, "continueLoop":Z
    if-nez v0, :cond_29

    goto :goto_20

    .line 479
    .end local v0    # "continueLoop":Z
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    .end local v3    # "lastIndex":I
    :cond_3c
    iget-object v7, v6, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    check-cast v6, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 480
    .restart local v6    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    const/4 p2, 0x0

    goto :goto_14
.end method

.method private getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/internal/util/IndexedRingBuffer$ElementSection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge p1, v3, :cond_7

    .line 348
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 357
    :cond_6
    return-object v0

    .line 352
    :cond_7
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    div-int v2, p1, v3

    .line 353
    .local v2, "numSections":I
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 354
    .local v0, "a":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_6

    .line 355
    invoke-virtual {v0}, Lrx/internal/util/IndexedRingBuffer$ElementSection;->getNext()Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v0

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private declared-synchronized getIndexForAdd()I
    .registers 6

    .prologue
    .line 365
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer;->getIndexFromPreviouslyRemoved()I

    move-result v1

    .line 366
    .local v1, "ri":I
    if-ltz v1, :cond_2f

    .line 367
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v1, v3, :cond_21

    .line 369
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getAndSet(II)I

    move-result v0

    .line 374
    .local v0, "i":I
    :goto_12
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v0, v3, :cond_1f

    .line 376
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_36

    .line 381
    :cond_1f
    :goto_1f
    monitor-exit p0

    return v0

    .line 371
    .end local v0    # "i":I
    :cond_21
    :try_start_21
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v2, v1, v3

    .line 372
    .local v2, "sectionIndex":I
    invoke-direct {p0, v1}, Lrx/internal/util/IndexedRingBuffer;->getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getAndSet(II)I

    move-result v0

    .restart local v0    # "i":I
    goto :goto_12

    .line 379
    .end local v0    # "i":I
    .end local v2    # "sectionIndex":I
    :cond_2f
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_36

    move-result v0

    .restart local v0    # "i":I
    goto :goto_1f

    .line 365
    .end local v0    # "i":I
    .end local v1    # "ri":I
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getIndexFromPreviouslyRemoved()I
    .registers 4

    .prologue
    .line 396
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 397
    .local v0, "currentRi":I
    if-lez v0, :cond_17

    .line 399
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_19

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    add-int/lit8 v1, v0, -0x1

    .line 404
    :goto_15
    monitor-exit p0

    return v1

    :cond_17
    const/4 v1, -0x1

    goto :goto_15

    .line 396
    .end local v0    # "currentRi":I
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 332
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge p1, v3, :cond_7

    .line 333
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 342
    :cond_6
    return-object v0

    .line 337
    :cond_7
    sget v3, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    div-int v2, p1, v3

    .line 338
    .local v2, "numSections":I
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 339
    .local v0, "a":Lrx/internal/util/IndexedRingBuffer$IndexSection;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_6

    .line 340
    invoke-virtual {v0}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->getNext()Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v0

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public static getInstance()Lrx/internal/util/IndexedRingBuffer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/util/IndexedRingBuffer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v0}, Lrx/internal/util/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/util/IndexedRingBuffer;

    return-object v0
.end method

.method private declared-synchronized pushRemovedIndex(I)V
    .registers 5
    .param p1, "elementIndex"    # I

    .prologue
    .line 414
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 415
    .local v0, "i":I
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v2, :cond_12

    .line 417
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->removed:Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-virtual {v2, v0, p1}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->set(II)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_1e

    .line 422
    :goto_10
    monitor-exit p0

    return-void

    .line 419
    :cond_12
    :try_start_12
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, v0, v2

    .line 420
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lrx/internal/util/IndexedRingBuffer;->getIndexSection(I)Lrx/internal/util/IndexedRingBuffer$IndexSection;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lrx/internal/util/IndexedRingBuffer$IndexSection;->set(II)V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_10

    .line 414
    .end local v0    # "i":I
    .end local v1    # "sectionIndex":I
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer;->getIndexForAdd()I

    move-result v0

    .line 306
    .local v0, "i":I
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v2, :cond_10

    .line 308
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    iget-object v2, v2, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 313
    :goto_f
    return v0

    .line 311
    :cond_10
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, v0, v2

    .line 312
    .local v1, "sectionIndex":I
    invoke-direct {p0, v0}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v2

    iget-object v2, v2, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_f
.end method

.method public forEach(Lrx/functions/Func1;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;I)I

    move-result v0

    return v0
.end method

.method public forEach(Lrx/functions/Func1;I)I
    .registers 5
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    .local p1, "action":Lrx/functions/Func1;, "Lrx/functions/Func1<-TE;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;II)I

    move-result v0

    .line 442
    .local v0, "endedAt":I
    if-lez p2, :cond_1a

    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 444
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lrx/internal/util/IndexedRingBuffer;->forEach(Lrx/functions/Func1;II)I

    move-result v0

    .line 449
    :cond_19
    :goto_19
    return v0

    .line 445
    :cond_1a
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 447
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 426
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public releaseToPool()V
    .registers 8

    .prologue
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v6, 0x0

    .line 269
    iget-object v4, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 270
    .local v1, "maxIndex":I
    const/4 v2, 0x0

    .line 271
    .local v2, "realIndex":I
    iget-object v3, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 272
    .local v3, "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    :goto_a
    if-eqz v3, :cond_13

    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    sget v4, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge v0, v4, :cond_2e

    .line 274
    if-lt v2, v1, :cond_23

    .line 284
    .end local v0    # "i":I
    :cond_13
    iget-object v4, p0, Lrx/internal/util/IndexedRingBuffer;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 285
    iget-object v4, p0, Lrx/internal/util/IndexedRingBuffer;->removedIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 286
    sget-object v4, Lrx/internal/util/IndexedRingBuffer;->POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v4, p0}, Lrx/internal/util/ObjectPool;->returnObject(Ljava/lang/Object;)V

    .line 287
    return-void

    .line 279
    .restart local v0    # "i":I
    :cond_23
    iget-object v4, v3, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 281
    :cond_2e
    iget-object v4, v3, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    check-cast v3, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .restart local v3    # "section":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    goto :goto_a
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    const/4 v3, 0x0

    .line 319
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    if-ge p1, v2, :cond_11

    .line 321
    iget-object v2, p0, Lrx/internal/util/IndexedRingBuffer;->elements:Lrx/internal/util/IndexedRingBuffer$ElementSection;

    iget-object v2, v2, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 326
    .local v0, "e":Ljava/lang/Object;, "TE;"
    :goto_d
    invoke-direct {p0, p1}, Lrx/internal/util/IndexedRingBuffer;->pushRemovedIndex(I)V

    .line 327
    return-object v0

    .line 323
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_11
    sget v2, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    rem-int v1, p1, v2

    .line 324
    .local v1, "sectionIndex":I
    invoke-direct {p0, p1}, Lrx/internal/util/IndexedRingBuffer;->getElementSection(I)Lrx/internal/util/IndexedRingBuffer$ElementSection;

    move-result-object v2

    iget-object v2, v2, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_d
.end method

.method public unsubscribe()V
    .registers 1

    .prologue
    .line 291
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer;, "Lrx/internal/util/IndexedRingBuffer<TE;>;"
    invoke-virtual {p0}, Lrx/internal/util/IndexedRingBuffer;->releaseToPool()V

    .line 292
    return-void
.end method

###### Class rx.internal.util.IndexedRingBuffer.AnonymousClass1 (rx.internal.util.IndexedRingBuffer$1)
.class final Lrx/internal/util/IndexedRingBuffer$1;
.super Lrx/internal/util/ObjectPool;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/IndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/ObjectPool",
        "<",
        "Lrx/internal/util/IndexedRingBuffer",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lrx/internal/util/ObjectPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lrx/internal/util/IndexedRingBuffer$1;->createObject()Lrx/internal/util/IndexedRingBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected createObject()Lrx/internal/util/IndexedRingBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/IndexedRingBuffer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lrx/internal/util/IndexedRingBuffer;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer;-><init>()V

    return-object v0
.end method

###### Class rx.internal.util.IndexedRingBuffer.ElementSection (rx.internal.util.IndexedRingBuffer$ElementSection)
.class final Lrx/internal/util/IndexedRingBuffer$ElementSection;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/IndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ElementSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field final next:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/util/IndexedRingBuffer$ElementSection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 487
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 489
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method getNext()Lrx/internal/util/IndexedRingBuffer$ElementSection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/IndexedRingBuffer$ElementSection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 493
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 501
    :goto_10
    return-object v1

    .line 495
    :cond_11
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$ElementSection;-><init>()V

    .line 496
    .local v0, "newSection":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move-object v1, v0

    .line 498
    goto :goto_10

    .line 501
    :cond_21
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    goto :goto_10
.end method

###### Class rx.internal.util.IndexedRingBuffer.IndexSection (rx.internal.util.IndexedRingBuffer$IndexSection)
.class Lrx/internal/util/IndexedRingBuffer$IndexSection;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/IndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexSection"
.end annotation


# instance fields
.field private final _next:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/util/IndexedRingBuffer$IndexSection;",
            ">;"
        }
    .end annotation
.end field

.field private final unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 511
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public getAndSet(II)I
    .registers 4
    .param p1, "expected"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->getAndSet(II)I

    move-result v0

    return v0
.end method

.method getNext()Lrx/internal/util/IndexedRingBuffer$IndexSection;
    .registers 4

    .prologue
    .line 522
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 523
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    .line 531
    :goto_10
    return-object v1

    .line 525
    :cond_11
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$IndexSection;-><init>()V

    .line 526
    .local v0, "newSection":Lrx/internal/util/IndexedRingBuffer$IndexSection;
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    move-object v1, v0

    .line 528
    goto :goto_10

    .line 531
    :cond_21
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->_next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/IndexedRingBuffer$IndexSection;

    goto :goto_10
.end method

.method public set(II)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "elementIndex"    # I

    .prologue
    .line 518
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$IndexSection;->unsafeArray:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 519
    return-void
.end method
