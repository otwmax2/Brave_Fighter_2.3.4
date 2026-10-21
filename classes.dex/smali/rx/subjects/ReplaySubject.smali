###### Class rx.subjects.ReplaySubject (rx.subjects.ReplaySubject)
.class public final Lrx/subjects/ReplaySubject;
.super Lrx/subjects/Subject;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$ReplayProducer;,
        Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;,
        Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;,
        Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;,
        Lrx/subjects/ReplaySubject$ReplayBuffer;,
        Lrx/subjects/ReplaySubject$ReplayState;
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


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# instance fields
.field final state:Lrx/subjects/ReplaySubject$ReplayState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lrx/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lrx/subjects/ReplaySubject$ReplayState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 237
    iput-object p1, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    .line 238
    return-void
.end method

.method public static create()Lrx/subjects/ReplaySubject;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    const/16 v0, 0x10

    invoke-static {v0}, Lrx/subjects/ReplaySubject;->create(I)Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lrx/subjects/ReplaySubject;
    .registers 6
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    if-gtz p0, :cond_1b

    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capacity > 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_1b
    new-instance v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;

    invoke-direct {v0, p0}, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;-><init>(I)V

    .line 96
    .local v0, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 97
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method static createUnbounded()Lrx/subjects/ReplaySubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;

    const v2, 0x7fffffff

    invoke-direct {v0, v2}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;-><init>(I)V

    .line 114
    .local v0, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 115
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method static createUnboundedTime()Lrx/subjects/ReplaySubject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;

    const v2, 0x7fffffff

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v3

    invoke-direct {v0, v2, v4, v5, v3}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;-><init>(IJLrx/Scheduler;)V

    .line 132
    .local v0, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 133
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method public static createWithSize(I)Lrx/subjects/ReplaySubject;
    .registers 4
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;

    invoke-direct {v0, p0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;-><init>(I)V

    .line 157
    .local v0, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 158
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/subjects/ReplaySubject;
    .registers 6
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 193
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0, p3}, Lrx/subjects/ReplaySubject;->createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/subjects/ReplaySubject;
    .registers 9
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "size"    # I
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, p3, v2, v3, p4}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;-><init>(IJLrx/Scheduler;)V

    .line 231
    .local v0, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$ReplayState;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$ReplayState;-><init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V

    .line 232
    .local v1, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 289
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 290
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error()Ljava/lang/Throwable;

    move-result-object v0

    .line 292
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 338
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    sget-object v1, Lrx/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/subjects/ReplaySubject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 339
    .local v0, "r":[Ljava/lang/Object;, "[TT;"
    sget-object v1, Lrx/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_f

    .line 340
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    .line 342
    .end local v0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_f
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$ReplayBuffer;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasAnyValue()Z
    .registers 2

    .prologue
    .line 308
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasCompleted()Z
    .registers 2

    .prologue
    .line 280
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hasObservers()Z
    .registers 2

    .prologue
    .line 263
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v0, v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public hasThrowable()Z
    .registers 2

    .prologue
    .line 272
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hasValue()Z
    .registers 2

    .prologue
    .line 316
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject;->hasAnyValue()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 252
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->onCompleted()V

    .line 253
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 247
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->onError(Ljava/lang/Throwable;)V

    .line 248
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
    .line 242
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->onNext(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 300
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->size()I

    move-result v0

    return v0
.end method

.method subscriberCount()I
    .registers 2

    .prologue
    .line 258
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    array-length v0, v0

    return v0
.end method

###### Class rx.subjects.ReplaySubject.ReplayBuffer (rx.subjects.ReplaySubject$ReplayBuffer)
.class interface abstract Lrx/subjects/ReplaySubject$ReplayBuffer;
.super Ljava/lang/Object;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract complete()V
.end method

.method public abstract drain(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract error()Ljava/lang/Throwable;
.end method

.method public abstract error(Ljava/lang/Throwable;)V
.end method

.method public abstract isComplete()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract last()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract next(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation
.end method

###### Class rx.subjects.ReplaySubject.ReplayProducer (rx.subjects.ReplaySubject$ReplayProducer)
.class final Lrx/subjects/ReplaySubject$ReplayProducer;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4579a11aac8dacd7L


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field index:I

.field node:Ljava/lang/Object;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final state:Lrx/subjects/ReplaySubject$ReplayState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;>;"
        }
    .end annotation
.end field

.field tailIndex:I


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/subjects/ReplaySubject$ReplayState;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1248
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1249
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    .line 1250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1251
    iput-object p2, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->state:Lrx/subjects/ReplaySubject$ReplayState;

    .line 1252
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 1261
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    const-wide/16 v2, 0x0

    .line 1266
    cmp-long v0, p1, v2

    if-lez v0, :cond_13

    .line 1267
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 1268
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->state:Lrx/subjects/ReplaySubject$ReplayState;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v0, p0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    .line 1272
    :cond_12
    return-void

    .line 1269
    :cond_13
    cmp-long v0, p1, v2

    if-gez v0, :cond_12

    .line 1270
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
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 1256
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayProducer;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-virtual {v0, p0}, Lrx/subjects/ReplaySubject$ReplayState;->remove(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    .line 1257
    return-void
.end method

###### Class rx.subjects.ReplaySubject.ReplaySizeAndTimeBoundBuffer (rx.subjects.ReplaySubject$ReplaySizeAndTimeBoundBuffer)
.class final Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySizeAndTimeBoundBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode",
            "<TT;>;"
        }
    .end annotation
.end field

.field final limit:I

.field final maxAgeMillis:J

.field final scheduler:Lrx/Scheduler;

.field size:I

.field tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJLrx/Scheduler;)V
    .registers 9
    .param p1, "limit"    # I
    .param p2, "maxAgeMillis"    # J
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 968
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 969
    iput p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->limit:I

    .line 970
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 971
    .local v0, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 972
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 973
    iput-wide p2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    .line 974
    iput-object p4, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    .line 975
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    .prologue
    .line 1019
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->evictFinal()V

    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    .line 1021
    return-void
.end method

.method public drain(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1057
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$ReplayProducer;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_7

    .line 1138
    :goto_6
    return-void

    .line 1061
    :cond_7
    iget-object v0, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    .line 1063
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v6, 0x1

    .line 1067
    .local v6, "missed":I
    :cond_a
    iget-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 1068
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 1071
    .local v2, "e":J
    iget-object v8, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    check-cast v8, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1072
    .local v8, "node":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-nez v8, :cond_1c

    .line 1073
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v8

    .line 1076
    :cond_1c
    :goto_1c
    cmp-long v9, v2, v10

    if-eqz v9, :cond_4c

    .line 1077
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 1078
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_6

    .line 1082
    :cond_2a
    iget-boolean v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    .line 1083
    .local v1, "d":Z
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1084
    .local v7, "next":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-nez v7, :cond_44

    const/4 v4, 0x1

    .line 1086
    .local v4, "empty":Z
    :goto_35
    if-eqz v1, :cond_4a

    if-eqz v4, :cond_4a

    .line 1087
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1088
    iget-object v5, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 1089
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_46

    .line 1090
    invoke-virtual {v0, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1084
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_44
    const/4 v4, 0x0

    goto :goto_35

    .line 1092
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_46
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_6

    .line 1097
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_4a
    if-eqz v4, :cond_5a

    .line 1107
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :cond_4c
    cmp-long v9, v2, v10

    if-nez v9, :cond_82

    .line 1108
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_64

    .line 1109
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_6

    .line 1101
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :cond_5a
    iget-object v9, v7, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    invoke-virtual {v0, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 1103
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 1104
    move-object v8, v7

    .line 1105
    goto :goto_1c

    .line 1113
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :cond_64
    iget-boolean v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    .line 1114
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7c

    const/4 v4, 0x1

    .line 1116
    .restart local v4    # "empty":Z
    :goto_6d
    if-eqz v1, :cond_82

    if-eqz v4, :cond_82

    .line 1117
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1118
    iget-object v5, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 1119
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_7e

    .line 1120
    invoke-virtual {v0, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1114
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_7c
    const/4 v4, 0x0

    goto :goto_6d

    .line 1122
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_7e
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_6

    .line 1128
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_82
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_96

    .line 1129
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-eqz v9, :cond_96

    .line 1130
    iget-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v9, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 1134
    :cond_96
    iput-object v8, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 1136
    neg-int v9, v6

    invoke-virtual {p1, v9}, Lrx/subjects/ReplaySubject$ReplayProducer;->addAndGet(I)I

    move-result v6

    .line 1137
    if-nez v6, :cond_a

    goto/16 :goto_6
.end method

.method public error()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 1164
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1012
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->evictFinal()V

    .line 1013
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    .line 1015
    return-void
.end method

.method evictFinal()V
    .registers 11

    .prologue
    .line 1024
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    iget-object v3, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v3}, Lrx/Scheduler;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    sub-long v4, v6, v8

    .line 1026
    .local v4, "now":J
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1027
    .local v1, "h0":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    move-object v0, v1

    .line 1030
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_d
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .local v2, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-eqz v2, :cond_1b

    .line 1031
    iget-wide v6, v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    cmp-long v3, v6, v4

    if-lez v3, :cond_20

    .line 1037
    :cond_1b
    if-eq v1, v0, :cond_1f

    .line 1038
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1040
    :cond_1f
    return-void

    .line 1034
    :cond_20
    move-object v0, v2

    goto :goto_d
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 1159
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->done:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1190
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public last()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1169
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v0

    .line 1171
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_4
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .local v1, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-eqz v1, :cond_e

    .line 1172
    move-object v0, v1

    goto :goto_4

    .line 1174
    :cond_e
    iget-object v2, v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    return-object v2
.end method

.method latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1043
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    iget-object v4, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v4}, Lrx/Scheduler;->now()J

    move-result-wide v4

    iget-wide v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    sub-long v2, v4, v6

    .line 1044
    .local v2, "now":J
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1046
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_c
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .local v1, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-eqz v1, :cond_1a

    .line 1047
    iget-wide v4, v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1b

    .line 1052
    :cond_1a
    return-object v0

    .line 1050
    :cond_1b
    move-object v0, v1

    goto :goto_c
.end method

.method public next(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 979
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v6}, Lrx/Scheduler;->now()J

    move-result-wide v4

    .line 981
    .local v4, "now":J
    new-instance v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    invoke-direct {v2, p1, v4, v5}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 982
    .local v2, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    iget-object v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    invoke-virtual {v6, v2}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->set(Ljava/lang/Object;)V

    .line 983
    iput-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 985
    iget-wide v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->maxAgeMillis:J

    sub-long/2addr v4, v6

    .line 987
    iget v3, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->size:I

    .line 988
    .local v3, "s":I
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 989
    .local v1, "h0":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    move-object v0, v1

    .line 991
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    iget v6, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->limit:I

    if-ne v3, v6, :cond_39

    .line 992
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 997
    .restart local v0    # "h":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_24
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    check-cast v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .restart local v2    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    if-eqz v2, :cond_32

    .line 998
    iget-wide v6, v2, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_3c

    .line 1005
    :cond_32
    iput v3, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->size:I

    .line 1006
    if-eq v0, v1, :cond_38

    .line 1007
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1009
    :cond_38
    return-void

    .line 994
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1001
    :cond_3c
    move-object v0, v2

    .line 1002
    add-int/lit8 v3, v3, -0x1

    goto :goto_24
.end method

.method public size()I
    .registers 4

    .prologue
    .line 1179
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    const/4 v1, 0x0

    .line 1180
    .local v1, "s":I
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v2

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1181
    .local v0, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_b
    if-eqz v0, :cond_1b

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1b

    .line 1182
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1183
    .restart local v0    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1185
    :cond_1b
    return v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1195
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;->latestHead()Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    move-result-object v2

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .line 1198
    .local v1, "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    :goto_f
    if-eqz v1, :cond_1d

    .line 1199
    iget-object v2, v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1200
    invoke-virtual {v1}, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;

    .restart local v1    # "n":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    goto :goto_f

    .line 1202
    :cond_1d
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

###### Class rx.subjects.ReplaySubject.ReplaySizeAndTimeBoundBuffer.TimedNode (rx.subjects.ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode)
.class final Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimedNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33895503f3b7c21dL


# instance fields
.field final timestamp:J

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 4
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;, "Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 1152
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->value:Ljava/lang/Object;

    .line 1153
    iput-wide p2, p0, Lrx/subjects/ReplaySubject$ReplaySizeAndTimeBoundBuffer$TimedNode;->timestamp:J

    .line 1154
    return-void
.end method

###### Class rx.subjects.ReplaySubject.ReplaySizeBoundBuffer (rx.subjects.ReplaySubject$ReplaySizeBoundBuffer)
.class final Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySizeBoundBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field volatile head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field final limit:I

.field size:I

.field tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "limit"    # I

    .prologue
    .line 772
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->limit:I

    .line 774
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;-><init>(Ljava/lang/Object;)V

    .line 775
    .local v0, "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 776
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 777
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    .prologue
    .line 800
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    .line 801
    return-void
.end method

.method public drain(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-virtual {p1}, Lrx/subjects/ReplaySubject$ReplayProducer;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_7

    .line 886
    :goto_6
    return-void

    .line 809
    :cond_7
    iget-object v0, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    .line 811
    .local v0, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v6, 0x1

    .line 815
    .local v6, "missed":I
    :cond_a
    iget-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    .line 816
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 819
    .local v2, "e":J
    iget-object v8, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    check-cast v8, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 820
    .local v8, "node":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    if-nez v8, :cond_1a

    .line 821
    iget-object v8, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 824
    :cond_1a
    :goto_1a
    cmp-long v9, v2, v10

    if-eqz v9, :cond_4a

    .line 825
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 826
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_6

    .line 830
    :cond_28
    iget-boolean v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    .line 831
    .local v1, "d":Z
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 832
    .local v7, "next":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    if-nez v7, :cond_42

    const/4 v4, 0x1

    .line 834
    .local v4, "empty":Z
    :goto_33
    if-eqz v1, :cond_48

    if-eqz v4, :cond_48

    .line 835
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 836
    iget-object v5, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 837
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_44

    .line 838
    invoke-virtual {v0, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 832
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_42
    const/4 v4, 0x0

    goto :goto_33

    .line 840
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_44
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_6

    .line 845
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_48
    if-eqz v4, :cond_58

    .line 855
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :cond_4a
    cmp-long v9, v2, v10

    if-nez v9, :cond_80

    .line 856
    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_62

    .line 857
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_6

    .line 849
    .restart local v1    # "d":Z
    .restart local v4    # "empty":Z
    .restart local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :cond_58
    iget-object v9, v7, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, v9}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 851
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 852
    move-object v8, v7

    .line 853
    goto :goto_1a

    .line 861
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "next":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :cond_62
    iget-boolean v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    .line 862
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7a

    const/4 v4, 0x1

    .line 864
    .restart local v4    # "empty":Z
    :goto_6b
    if-eqz v1, :cond_80

    if-eqz v4, :cond_80

    .line 865
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 866
    iget-object v5, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 867
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_7c

    .line 868
    invoke-virtual {v0, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 862
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_7a
    const/4 v4, 0x0

    goto :goto_6b

    .line 870
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_7c
    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_6

    .line 876
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_80
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_94

    .line 877
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v9, v10, v12

    if-eqz v9, :cond_94

    .line 878
    iget-object v9, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v9, v2, v3}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 882
    :cond_94
    iput-object v8, p1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 884
    neg-int v9, v6

    invoke-virtual {p1, v9}, Lrx/subjects/ReplaySubject$ReplayProducer;->addAndGet(I)I

    move-result v6

    .line 885
    if-nez v6, :cond_a

    goto/16 :goto_6
.end method

.method public error()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 909
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 794
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->error:Ljava/lang/Throwable;

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    .line 796
    return-void
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 904
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->done:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 935
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public last()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 914
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 916
    .local v0, "h":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :goto_2
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .local v1, "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    if-eqz v1, :cond_c

    .line 917
    move-object v0, v1

    goto :goto_2

    .line 919
    :cond_c
    iget-object v2, v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->value:Ljava/lang/Object;

    return-object v2
.end method

.method public next(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-direct {v0, p1}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;-><init>(Ljava/lang/Object;)V

    .line 782
    .local v0, "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v2, v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->set(Ljava/lang/Object;)V

    .line 783
    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->tail:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 784
    iget v1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->size:I

    .line 785
    .local v1, "s":I
    iget v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->limit:I

    if-ne v1, v2, :cond_1d

    .line 786
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    iput-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 790
    :goto_1c
    return-void

    .line 788
    :cond_1d
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->size:I

    goto :goto_1c
.end method

.method public size()I
    .registers 4

    .prologue
    .line 924
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    const/4 v1, 0x0

    .line 925
    .local v1, "s":I
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 926
    .local v0, "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :goto_9
    if-eqz v0, :cond_19

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_19

    .line 927
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    check-cast v0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 928
    .restart local v0    # "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 930
    :cond_19
    return v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 940
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 942
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;->head:Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .line 943
    .local v1, "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    :goto_d
    if-eqz v1, :cond_1b

    .line 944
    iget-object v2, v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->value:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-virtual {v1}, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    check-cast v1, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;

    .restart local v1    # "n":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    goto :goto_d

    .line 947
    :cond_1b
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

###### Class rx.subjects.ReplaySubject.ReplaySizeBoundBuffer.Node (rx.subjects.ReplaySubject$ReplaySizeBoundBuffer$Node)
.class final Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33895503f3b7c21dL


# instance fields
.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 897
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;, "Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 898
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplaySizeBoundBuffer$Node;->value:Ljava/lang/Object;

    .line 899
    return-void
.end method

###### Class rx.subjects.ReplaySubject.ReplayState (rx.subjects.ReplaySubject$ReplayState)
.class final Lrx/subjects/ReplaySubject$ReplayState;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<[",
        "Lrx/subjects/ReplaySubject$ReplayProducer",
        "<TT;>;>;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

.field static final TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

.field private static final serialVersionUID:J = 0x529b0a217109d450L


# instance fields
.field final buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplayBuffer",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 370
    new-array v0, v1, [Lrx/subjects/ReplaySubject$ReplayProducer;

    sput-object v0, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 372
    new-array v0, v1, [Lrx/subjects/ReplaySubject$ReplayProducer;

    sput-object v0, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    return-void
.end method

.method public constructor <init>(Lrx/subjects/ReplaySubject$ReplayBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayBuffer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "buffer":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 376
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 377
    sget-object v0, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject$ReplayState;->lazySet(Ljava/lang/Object;)V

    .line 378
    return-void
.end method


# virtual methods
.method add(Lrx/subjects/ReplaySubject$ReplayProducer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    const/4 v3, 0x0

    .line 397
    :cond_1
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 398
    .local v0, "a":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    sget-object v4, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-ne v0, v4, :cond_c

    .line 410
    :goto_b
    return v3

    .line 402
    :cond_c
    array-length v2, v0

    .line 405
    .local v2, "n":I
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 406
    .local v1, "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    aput-object p1, v1, v2

    .line 409
    invoke-virtual {p0, v0, v1}, Lrx/subjects/ReplaySubject$ReplayState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 410
    const/4 v3, 0x1

    goto :goto_b
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 360
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->call(Lrx/Subscriber;)V

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
    .line 382
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-direct {v0, p1, p0}, Lrx/subjects/ReplaySubject$ReplayProducer;-><init>(Lrx/Subscriber;Lrx/subjects/ReplaySubject$ReplayState;)V

    .line 383
    .local v0, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 384
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 386
    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject$ReplayState;->add(Lrx/subjects/ReplaySubject$ReplayProducer;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 387
    invoke-virtual {v0}, Lrx/subjects/ReplaySubject$ReplayProducer;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 388
    invoke-virtual {p0, v0}, Lrx/subjects/ReplaySubject$ReplayState;->remove(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    .line 393
    :goto_1a
    return-void

    .line 392
    :cond_1b
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    invoke-interface {v1, v0}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    goto :goto_1a
.end method

.method isTerminated()Z
    .registers 3

    .prologue
    .line 495
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onCompleted()V
    .registers 7

    .prologue
    .line 485
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 487
    .local v1, "b":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-interface {v1}, Lrx/subjects/ReplaySubject$ReplayBuffer;->complete()V

    .line 488
    sget-object v5, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, v5}, Lrx/subjects/ReplaySubject$ReplayState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .local v0, "arr$":[Lrx/subjects/ReplaySubject$ReplayProducer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_f
    if-ge v2, v3, :cond_19

    aget-object v4, v0, v2

    .line 489
    .local v4, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-interface {v1, v4}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 491
    .end local v4    # "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_19
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 464
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 466
    .local v1, "b":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-interface {v1, p1}, Lrx/subjects/ReplaySubject$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 467
    const/4 v2, 0x0

    .line 468
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v7, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    invoke-virtual {p0, v7}, Lrx/subjects/ReplaySubject$ReplayState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .local v0, "arr$":[Lrx/subjects/ReplaySubject$ReplayProducer;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_10
    if-ge v4, v5, :cond_26

    aget-object v6, v0, v4

    .line 470
    .local v6, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :try_start_14
    invoke-interface {v1, v6}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_1a

    .line 468
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 471
    :catch_1a
    move-exception v3

    .line 472
    .local v3, "ex":Ljava/lang/Throwable;
    if-nez v2, :cond_22

    .line 473
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .restart local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_22
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 479
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v6    # "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_26
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    .line 480
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$ReplayState;->buffer:Lrx/subjects/ReplaySubject$ReplayBuffer;

    .line 455
    .local v1, "b":Lrx/subjects/ReplaySubject$ReplayBuffer;, "Lrx/subjects/ReplaySubject$ReplayBuffer<TT;>;"
    invoke-interface {v1, p1}, Lrx/subjects/ReplaySubject$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 456
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .local v0, "arr$":[Lrx/subjects/ReplaySubject$ReplayProducer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_d
    if-ge v2, v3, :cond_17

    aget-object v4, v0, v2

    .line 457
    .local v4, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-interface {v1, v4}, Lrx/subjects/ReplaySubject$ReplayBuffer;->drain(Lrx/subjects/ReplaySubject$ReplayProducer;)V

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 459
    .end local v4    # "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_17
    return-void
.end method

.method remove(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    const/4 v7, 0x0

    .line 418
    :cond_1
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$ReplayState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 419
    .local v0, "a":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    sget-object v5, Lrx/subjects/ReplaySubject$ReplayState;->TERMINATED:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-eq v0, v5, :cond_f

    sget-object v5, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    if-ne v0, v5, :cond_10

    .line 446
    :cond_f
    :goto_f
    return-void

    .line 423
    :cond_10
    array-length v4, v0

    .line 425
    .local v4, "n":I
    const/4 v3, -0x1

    .line 426
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v4, :cond_1a

    .line 427
    aget-object v5, v0, v2

    if-ne v5, p1, :cond_28

    .line 428
    move v3, v2

    .line 433
    :cond_1a
    if-ltz v3, :cond_f

    .line 438
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    .line 439
    sget-object v1, Lrx/subjects/ReplaySubject$ReplayState;->EMPTY:[Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 445
    .local v1, "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :goto_21
    invoke-virtual {p0, v0, v1}, Lrx/subjects/ReplaySubject$ReplayState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_f

    .line 426
    .end local v1    # "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 441
    :cond_2b
    add-int/lit8 v5, v4, -0x1

    new-array v1, v5, [Lrx/subjects/ReplaySubject$ReplayProducer;

    .line 442
    .restart local v1    # "b":[Lrx/subjects/ReplaySubject$ReplayProducer;, "[Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-static {v0, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    add-int/lit8 v5, v3, 0x1

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21
.end method

###### Class rx.subjects.ReplaySubject.ReplayUnboundedBuffer (rx.subjects.ReplaySubject$ReplayUnboundedBuffer)
.class final Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayUnboundedBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final capacity:I

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final head:[Ljava/lang/Object;

.field volatile size:I

.field tail:[Ljava/lang/Object;

.field tailIndex:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 548
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;, "Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    iput p1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->capacity:I

    .line 550
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->head:[Ljava/lang/Object;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tail:[Ljava/lang/Object;

    .line 551
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    .prologue
    .line 586
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;, "Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    .line 587
    return-void
.end method

.method public drain(Lrx/subjects/ReplaySubject$ReplayProducer;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;, "Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer<TT;>;"
    .local p1, "rp":Lrx/subjects/ReplaySubject$ReplayProducer;, "Lrx/subjects/ReplaySubject$ReplayProducer<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lrx/subjects/ReplaySubject$ReplayProducer;->getAndIncrement()I

    move-result v16

    if-eqz v16, :cond_7

    .line 684
    :goto_6
    return-void

    .line 595
    :cond_7
    const/4 v9, 0x1

    .line 597
    .local v9, "missed":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->actual:Lrx/Subscriber;

    .line 598
    .local v2, "a":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-object/from16 v0, p0

    iget v10, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->capacity:I

    .line 602
    .local v10, "n":I
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 603
    .local v12, "r":J
    const-wide/16 v4, 0x0

    .line 605
    .local v4, "e":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v11, v16

    check-cast v11, [Ljava/lang/Object;

    .line 606
    .local v11, "node":[Ljava/lang/Object;
    if-nez v11, :cond_2e

    .line 607
    move-object/from16 v0, p0

    iget-object v11, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->head:[Ljava/lang/Object;

    .line 609
    :cond_2e
    move-object/from16 v0, p1

    iget v14, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->tailIndex:I

    .line 610
    .local v14, "tailIndex":I
    move-object/from16 v0, p1

    iget v8, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->index:I

    .line 612
    .local v8, "index":I
    :goto_36
    cmp-long v16, v4, v12

    if-eqz v16, :cond_76

    .line 613
    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v16

    if-eqz v16, :cond_49

    .line 614
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto :goto_6

    .line 618
    :cond_49
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    .line 619
    .local v3, "d":Z
    move-object/from16 v0, p0

    iget v0, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v8, v0, :cond_6e

    const/4 v6, 0x1

    .line 621
    .local v6, "empty":Z
    :goto_58
    if-eqz v3, :cond_74

    if-eqz v6, :cond_74

    .line 622
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 623
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->error:Ljava/lang/Throwable;

    .line 624
    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_70

    .line 625
    invoke-virtual {v2, v7}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 619
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_6e
    const/4 v6, 0x0

    goto :goto_58

    .line 627
    .restart local v6    # "empty":Z
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_70
    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_6

    .line 632
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_74
    if-eqz v6, :cond_8a

    .line 651
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    :cond_76
    cmp-long v16, v4, v12

    if-nez v16, :cond_d0

    .line 652
    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v16

    if-eqz v16, :cond_a3

    .line 653
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    goto/16 :goto_6

    .line 636
    .restart local v3    # "d":Z
    .restart local v6    # "empty":Z
    :cond_8a
    if-ne v14, v10, :cond_95

    .line 637
    aget-object v16, v11, v14

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v11, v16

    check-cast v11, [Ljava/lang/Object;

    .line 638
    const/4 v14, 0x0

    .line 642
    :cond_95
    aget-object v15, v11, v14

    .line 644
    .local v15, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {v2, v15}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 646
    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    .line 647
    add-int/lit8 v14, v14, 0x1

    .line 648
    add-int/lit8 v8, v8, 0x1

    .line 649
    goto :goto_36

    .line 657
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v15    # "v":Ljava/lang/Object;, "TT;"
    :cond_a3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    .line 658
    .restart local v3    # "d":Z
    move-object/from16 v0, p0

    iget v0, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v8, v0, :cond_c9

    const/4 v6, 0x1

    .line 660
    .restart local v6    # "empty":Z
    :goto_b2
    if-eqz v3, :cond_d0

    if-eqz v6, :cond_d0

    .line 661
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 662
    move-object/from16 v0, p0

    iget-object v7, v0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->error:Ljava/lang/Throwable;

    .line 663
    .restart local v7    # "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_cb

    .line 664
    invoke-virtual {v2, v7}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 658
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_c9
    const/4 v6, 0x0

    goto :goto_b2

    .line 666
    .restart local v6    # "empty":Z
    .restart local v7    # "ex":Ljava/lang/Throwable;
    :cond_cb
    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto/16 :goto_6

    .line 672
    .end local v3    # "d":Z
    .end local v6    # "empty":Z
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_d0
    const-wide/16 v16, 0x0

    cmp-long v16, v4, v16

    if-eqz v16, :cond_ea

    .line 673
    const-wide v16, 0x7fffffffffffffffL

    cmp-long v16, v12, v16

    if-eqz v16, :cond_ea

    .line 674
    move-object/from16 v0, p1

    iget-object v0, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 678
    :cond_ea
    move-object/from16 v0, p1

    iput v8, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->index:I

    .line 679
    move-object/from16 v0, p1

    iput v14, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->tailIndex:I

    .line 680
    move-object/from16 v0, p1

    iput-object v11, v0, Lrx/subjects/ReplaySubject$ReplayProducer;->node:Ljava/lang/Object;

    .line 682
    neg-int v0, v9

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lrx/subjects/ReplaySubject$ReplayProducer;->addAndGet(I)I

    move-result v9

    .line 683
    if-nez v9, :cond_10

    goto/16 :goto_6
.end method

.method public error()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 696
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;, "Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 576
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;, "Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    if-eqz v0, :cond_8

    .line 577
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 582
    :goto_7
    return-void

    .line 580
    :cond_8
    iput-object p1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->error:Ljava/lang/Throwable;

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    goto :goto_7
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 691
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;, "Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 728
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;, "Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer<TT;>;"
    iget v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public last()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 706
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;, "Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer<TT;>;"
    iget v2, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    .line 707
    .local v2, "s":I
    if-nez v2, :cond_6

    .line 708
    const/4 v3, 0x0

    .line 718
    :goto_5
    return-object v3

    .line 710
    :cond_6
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->head:[Ljava/lang/Object;

    .line 711
    .local v0, "h":[Ljava/lang/Object;
    iget v1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->capacity:I

    .line 713
    .local v1, "n":I
    :goto_a
    if-lt v2, v1, :cond_15

    .line 714
    aget-object v3, v0, v1

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 715
    sub-int/2addr v2, v1

    goto :goto_a

    .line 718
    :cond_15
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    goto :goto_5
.end method

.method public next(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;, "Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->done:Z

    if-eqz v3, :cond_5

    .line 572
    :goto_4
    return-void

    .line 558
    :cond_5
    iget v2, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tailIndex:I

    .line 559
    .local v2, "i":I
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tail:[Ljava/lang/Object;

    .line 560
    .local v0, "a":[Ljava/lang/Object;
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_22

    .line 561
    array-length v3, v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 562
    .local v1, "b":[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 563
    const/4 v3, 0x1

    iput v3, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tailIndex:I

    .line 564
    aput-object v1, v0, v2

    .line 565
    iput-object v1, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tail:[Ljava/lang/Object;

    .line 570
    .end local v1    # "b":[Ljava/lang/Object;
    :goto_1b
    iget v3, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    goto :goto_4

    .line 567
    :cond_22
    aput-object p1, v0, v2

    .line 568
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->tailIndex:I

    goto :goto_1b
.end method

.method public size()I
    .registers 2

    .prologue
    .line 723
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;, "Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer<TT;>;"
    iget v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;, "Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v5, 0x0

    .line 734
    iget v3, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->size:I

    .line 735
    .local v3, "s":I
    array-length v4, p1

    if-ge v4, v3, :cond_17

    .line 736
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object p1, v4

    check-cast p1, [Ljava/lang/Object;

    .line 739
    :cond_17
    iget-object v0, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->head:[Ljava/lang/Object;

    .line 740
    .local v0, "h":[Ljava/lang/Object;
    iget v2, p0, Lrx/subjects/ReplaySubject$ReplayUnboundedBuffer;->capacity:I

    .line 742
    .local v2, "n":I
    const/4 v1, 0x0

    .line 744
    .local v1, "j":I
    :goto_1c
    add-int v4, v1, v2

    if-ge v4, v3, :cond_2c

    .line 745
    invoke-static {v0, v5, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    add-int/2addr v1, v2

    .line 747
    aget-object v4, v0, v2

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    goto :goto_1c

    .line 750
    :cond_2c
    sub-int v4, v3, v1

    invoke-static {v0, v5, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    array-length v4, p1

    if-le v4, v3, :cond_37

    .line 753
    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 756
    :cond_37
    return-object p1
.end method
