###### Class rx.subjects.PublishSubject (rx.subjects.PublishSubject)
.class public final Lrx/subjects/PublishSubject;
.super Lrx/subjects/Subject;
.source "PublishSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/PublishSubject$PublishSubjectProducer;,
        Lrx/subjects/PublishSubject$PublishSubjectState;
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


# instance fields
.field final state:Lrx/subjects/PublishSubject$PublishSubjectState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject$PublishSubjectState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/subjects/PublishSubject$PublishSubjectState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/PublishSubject$PublishSubjectState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    .local p1, "state":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 67
    iput-object p1, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/PublishSubject$PublishSubjectState;

    .line 68
    return-void
.end method

.method public static create()Lrx/subjects/PublishSubject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/PublishSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lrx/subjects/PublishSubject;

    new-instance v1, Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-direct {v1}, Lrx/subjects/PublishSubject$PublishSubjectState;-><init>()V

    invoke-direct {v0, v1}, Lrx/subjects/PublishSubject;-><init>(Lrx/subjects/PublishSubject$PublishSubjectState;)V

    return-object v0
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .registers 3

    .prologue
    .line 114
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0}, Lrx/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    if-ne v0, v1, :cond_f

    .line 115
    iget-object v0, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/PublishSubject$PublishSubjectState;

    iget-object v0, v0, Lrx/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    .line 117
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hasCompleted()Z
    .registers 3

    .prologue
    .line 105
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0}, Lrx/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/PublishSubject$PublishSubjectState;

    iget-object v0, v0, Lrx/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasObservers()Z
    .registers 2

    .prologue
    .line 88
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0}, Lrx/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

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
    .registers 3

    .prologue
    .line 97
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0}, Lrx/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/PublishSubject$PublishSubjectState;

    iget-object v0, v0, Lrx/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 82
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0}, Lrx/subjects/PublishSubject$PublishSubjectState;->onCompleted()V

    .line 83
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0, p1}, Lrx/subjects/PublishSubject$PublishSubjectState;->onError(Ljava/lang/Throwable;)V

    .line 78
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
    .line 72
    .local p0, "this":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/PublishSubject;->state:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0, p1}, Lrx/subjects/PublishSubject$PublishSubjectState;->onNext(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

###### Class rx.subjects.PublishSubject.PublishSubjectProducer (rx.subjects.PublishSubject$PublishSubjectProducer)
.class final Lrx/subjects/PublishSubject$PublishSubjectProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "PublishSubject.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/PublishSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubjectProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x59896c1df8e78b00L


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/subjects/PublishSubject$PublishSubjectState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject$PublishSubjectState",
            "<TT;>;"
        }
    .end annotation
.end field

.field produced:J


# direct methods
.method public constructor <init>(Lrx/subjects/PublishSubject$PublishSubjectState;Lrx/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/PublishSubject$PublishSubjectState",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    .local p1, "parent":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p2, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 265
    iput-object p1, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->parent:Lrx/subjects/PublishSubject$PublishSubjectState;

    .line 266
    iput-object p2, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->actual:Lrx/Subscriber;

    .line 267
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 5

    .prologue
    .line 287
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onCompleted()V
    .registers 5

    .prologue
    .line 321
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 322
    iget-object v0, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 324
    :cond_f
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 314
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 315
    iget-object v0, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 317
    :cond_f
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v2

    .line 300
    .local v2, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1a

    .line 301
    iget-wide v0, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->produced:J

    .line 302
    .local v0, "p":J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_1b

    .line 303
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->produced:J

    .line 304
    iget-object v4, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->actual:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 310
    .end local v0    # "p":J
    :cond_1a
    :goto_1a
    return-void

    .line 306
    .restart local v0    # "p":J
    :cond_1b
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->unsubscribe()V

    .line 307
    iget-object v4, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->actual:Lrx/Subscriber;

    new-instance v5, Lrx/exceptions/MissingBackpressureException;

    const-string v6, "PublishSubject: could not emit value due to lack of requests"

    invoke-direct {v5, v6}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .line 271
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-static {p1, p2}, Lrx/internal/operators/BackpressureUtils;->validate(J)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 273
    :cond_6
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->get()J

    move-result-wide v0

    .line 274
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-nez v4, :cond_11

    .line 283
    .end local v0    # "r":J
    :cond_10
    :goto_10
    return-void

    .line 277
    .restart local v0    # "r":J
    :cond_11
    invoke-static {v0, v1, p1, p2}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v2

    .line 278
    .local v2, "u":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_10
.end method

.method public unsubscribe()V
    .registers 5

    .prologue
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    const-wide/high16 v2, -0x8000000000000000L

    .line 292
    invoke-virtual {p0, v2, v3}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->getAndSet(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 293
    iget-object v0, p0, Lrx/subjects/PublishSubject$PublishSubjectProducer;->parent:Lrx/subjects/PublishSubject$PublishSubjectState;

    invoke-virtual {v0, p0}, Lrx/subjects/PublishSubject$PublishSubjectState;->remove(Lrx/subjects/PublishSubject$PublishSubjectProducer;)V

    .line 295
    :cond_f
    return-void
.end method

###### Class rx.subjects.PublishSubject.PublishSubjectState (rx.subjects.PublishSubject$PublishSubjectState)
.class final Lrx/subjects/PublishSubject$PublishSubjectState;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "PublishSubject.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/PublishSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishSubjectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<[",
        "Lrx/subjects/PublishSubject$PublishSubjectProducer",
        "<TT;>;>;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

.field static final TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

.field private static final serialVersionUID:J = -0x690a478d773d9c84L


# instance fields
.field error:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 128
    new-array v0, v1, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    sput-object v0, Lrx/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 130
    new-array v0, v1, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    sput-object v0, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 135
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 136
    sget-object v0, Lrx/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    invoke-virtual {p0, v0}, Lrx/subjects/PublishSubject$PublishSubjectState;->lazySet(Ljava/lang/Object;)V

    .line 137
    return-void
.end method


# virtual methods
.method add(Lrx/subjects/PublishSubject$PublishSubjectProducer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/PublishSubject$PublishSubjectProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "inner":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    const/4 v3, 0x0

    .line 162
    :cond_1
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 163
    .local v0, "curr":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    sget-object v4, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    if-ne v0, v4, :cond_c

    .line 175
    :goto_b
    return v3

    .line 167
    :cond_c
    array-length v1, v0

    .line 170
    .local v1, "n":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 171
    .local v2, "next":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    aput-object p1, v2, v1

    .line 174
    invoke-virtual {p0, v0, v2}, Lrx/subjects/PublishSubject$PublishSubjectState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    const/4 v3, 0x1

    goto :goto_b
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 120
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/PublishSubject$PublishSubjectState;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lrx/subjects/PublishSubject$PublishSubjectProducer;

    invoke-direct {v1, p0, p1}, Lrx/subjects/PublishSubject$PublishSubjectProducer;-><init>(Lrx/subjects/PublishSubject$PublishSubjectState;Lrx/Subscriber;)V

    .line 142
    .local v1, "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 143
    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 145
    invoke-virtual {p0, v1}, Lrx/subjects/PublishSubject$PublishSubjectState;->add(Lrx/subjects/PublishSubject$PublishSubjectProducer;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 146
    invoke-virtual {v1}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 147
    invoke-virtual {p0, v1}, Lrx/subjects/PublishSubject$PublishSubjectState;->remove(Lrx/subjects/PublishSubject$PublishSubjectProducer;)V

    .line 157
    :cond_1a
    :goto_1a
    return-void

    .line 150
    :cond_1b
    iget-object v0, p0, Lrx/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    .line 151
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_23

    .line 152
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 154
    :cond_23
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_1a
.end method

.method public onCompleted()V
    .registers 6

    .prologue
    .line 245
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    sget-object v4, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    invoke-virtual {p0, v4}, Lrx/subjects/PublishSubject$PublishSubjectState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .local v0, "arr$":[Lrx/subjects/PublishSubject$PublishSubjectProducer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v2, :cond_14

    aget-object v3, v0, v1

    .line 246
    .local v3, "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {v3}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->onCompleted()V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 248
    .end local v3    # "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 226
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    iput-object p1, p0, Lrx/subjects/PublishSubject$PublishSubjectState;->error:Ljava/lang/Throwable;

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    sget-object v6, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    invoke-virtual {p0, v6}, Lrx/subjects/PublishSubject$PublishSubjectState;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .local v0, "arr$":[Lrx/subjects/PublishSubject$PublishSubjectProducer;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_d
    if-ge v3, v4, :cond_24

    aget-object v5, v0, v3

    .line 230
    .local v5, "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :try_start_11
    invoke-virtual {v5, p1}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->onError(Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_17

    .line 228
    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 231
    :catch_17
    move-exception v2

    .line 232
    .local v2, "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_20

    .line 233
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .restart local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_20
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 239
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v5    # "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_24
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    .line 240
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .local v0, "arr$":[Lrx/subjects/PublishSubject$PublishSubjectProducer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 219
    .local v3, "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-virtual {v3, p1}, Lrx/subjects/PublishSubject$PublishSubjectProducer;->onNext(Ljava/lang/Object;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 221
    .end local v3    # "pp":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_12
    return-void
.end method

.method remove(Lrx/subjects/PublishSubject$PublishSubjectProducer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/PublishSubject$PublishSubjectProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/PublishSubject$PublishSubjectState;, "Lrx/subjects/PublishSubject$PublishSubjectState<TT;>;"
    .local p1, "inner":Lrx/subjects/PublishSubject$PublishSubjectProducer;, "Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    const/4 v7, 0x0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lrx/subjects/PublishSubject$PublishSubjectState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 184
    .local v0, "curr":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    sget-object v5, Lrx/subjects/PublishSubject$PublishSubjectState;->TERMINATED:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    if-eq v0, v5, :cond_f

    sget-object v5, Lrx/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    if-ne v0, v5, :cond_10

    .line 211
    :cond_f
    :goto_f
    return-void

    .line 188
    :cond_10
    array-length v3, v0

    .line 189
    .local v3, "n":I
    const/4 v2, -0x1

    .line 190
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v3, :cond_1a

    .line 191
    aget-object v5, v0, v1

    if-ne v5, p1, :cond_28

    .line 192
    move v2, v1

    .line 197
    :cond_1a
    if-ltz v2, :cond_f

    .line 202
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2b

    .line 203
    sget-object v4, Lrx/subjects/PublishSubject$PublishSubjectState;->EMPTY:[Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 210
    .local v4, "next":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :goto_21
    invoke-virtual {p0, v0, v4}, Lrx/subjects/PublishSubject$PublishSubjectState;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_f

    .line 190
    .end local v4    # "next":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 205
    :cond_2b
    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [Lrx/subjects/PublishSubject$PublishSubjectProducer;

    .line 206
    .restart local v4    # "next":[Lrx/subjects/PublishSubject$PublishSubjectProducer;, "[Lrx/subjects/PublishSubject$PublishSubjectProducer<TT;>;"
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21
.end method
