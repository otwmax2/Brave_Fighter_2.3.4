###### Class rx.internal.operators.OperatorBufferWithTime (rx.internal.operators.OperatorBufferWithTime)
.class public final Lrx/internal/operators/OperatorBufferWithTime;
.super Ljava/lang/Object;
.source "OperatorBufferWithTime.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;,
        Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final count:I

.field final scheduler:Lrx/Scheduler;

.field final timeshift:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V
    .registers 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "count"    # I
    .param p7, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    .line 64
    iput-wide p3, p0, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    .line 65
    iput-object p5, p0, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 66
    iput p6, p0, Lrx/internal/operators/OperatorBufferWithTime;->count:I

    .line 67
    iput-object p7, p0, Lrx/internal/operators/OperatorBufferWithTime;->scheduler:Lrx/Scheduler;

    .line 68
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorBufferWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v4}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 73
    .local v0, "inner":Lrx/Scheduler$Worker;
    new-instance v3, Lrx/observers/SerializedSubscriber;

    invoke-direct {v3, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 75
    .local v3, "serialized":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<Ljava/util/List<TT;>;>;"
    iget-wide v4, p0, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-wide v6, p0, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_22

    .line 76
    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;

    invoke-direct {v1, p0, v3, v0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;-><init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    .line 77
    .local v1, "parent":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    invoke-virtual {v1, v0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->add(Lrx/Subscription;)V

    .line 78
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 79
    invoke-virtual {v1}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->scheduleExact()V

    .line 88
    .end local v1    # "parent":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    :goto_21
    return-object v1

    .line 83
    :cond_22
    new-instance v2, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;

    invoke-direct {v2, p0, v3, v0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;-><init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    .line 84
    .local v2, "parent":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    invoke-virtual {v2, v0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->add(Lrx/Subscription;)V

    .line 85
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 86
    invoke-virtual {v2}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->startNewChunk()V

    .line 87
    invoke-virtual {v2}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->scheduleChunk()V

    move-object v1, v2

    .line 88
    goto :goto_21
.end method

###### Class rx.internal.operators.OperatorBufferWithTime.ExactSubscriber (rx.internal.operators.OperatorBufferWithTime$ExactSubscriber)
.class final Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;
.super Lrx/Subscriber;
.source "OperatorBufferWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field chunk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final inner:Lrx/Scheduler$Worker;

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithTime;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .registers 5
    .param p3, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 223
    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    .line 224
    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 226
    return-void
.end method


# virtual methods
.method emit()V
    .registers 4

    .prologue
    .line 290
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    monitor-enter p0

    .line 291
    :try_start_1
    iget-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v2, :cond_7

    .line 292
    monitor-exit p0

    .line 302
    :goto_6
    return-void

    .line 294
    :cond_7
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 295
    .local v1, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 296
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1c

    .line 298
    :try_start_11
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_6

    .line 299
    :catch_17
    move-exception v0

    .line 300
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_6

    .line 296
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 262
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->inner:Lrx/Scheduler$Worker;

    invoke-virtual {v2}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 264
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_26

    .line 265
    :try_start_6
    iget-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v2, :cond_c

    .line 266
    monitor-exit p0

    .line 279
    :goto_b
    return-void

    .line 268
    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    .line 269
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 270
    .local v1, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 271
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_23

    .line 272
    :try_start_15
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_26

    .line 277
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 278
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->unsubscribe()V

    goto :goto_b

    .line 271
    .end local v1    # "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v2
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_26} :catch_26

    .line 273
    :catch_26
    move-exception v0

    .line 274
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-static {v0, v2}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_b
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 248
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    monitor-enter p0

    .line 249
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v0, :cond_7

    .line 250
    monitor-exit p0

    .line 257
    :goto_6
    return-void

    .line 252
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 254
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_17

    .line 255
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 256
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->unsubscribe()V

    goto :goto_6

    .line 254
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 231
    .local v0, "toEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 232
    :try_start_2
    iget-boolean v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->done:Z

    if-eqz v1, :cond_8

    .line 233
    monitor-exit p0

    .line 244
    :cond_7
    :goto_7
    return-void

    .line 235
    :cond_8
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget v2, v2, Lrx/internal/operators/OperatorBufferWithTime;->count:I

    if-ne v1, v2, :cond_22

    .line 237
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->chunk:Ljava/util/List;

    .line 240
    :cond_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_2b

    .line 241
    if-eqz v0, :cond_7

    .line 242
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_7

    .line 240
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method scheduleExact()V
    .registers 8

    .prologue
    .line 281
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber$1;-><init>(Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v2, v2, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-object v6, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 287
    return-void
.end method

###### Class rx.internal.operators.OperatorBufferWithTime.ExactSubscriber.AnonymousClass1 (rx.internal.operators.OperatorBufferWithTime$ExactSubscriber$1)
.class Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->scheduleExact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;)V
    .registers 2

    .prologue
    .line 281
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber$1;, "Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 284
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber$1;, "Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorBufferWithTime$ExactSubscriber;->emit()V

    .line 285
    return-void
.end method

###### Class rx.internal.operators.OperatorBufferWithTime.InexactSubscriber (rx.internal.operators.OperatorBufferWithTime$InexactSubscriber)
.class final Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;
.super Lrx/Subscriber;
.source "OperatorBufferWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InexactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field final inner:Lrx/Scheduler$Worker;

.field final synthetic this$0:Lrx/internal/operators/OperatorBufferWithTime;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorBufferWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .registers 5
    .param p3, "inner"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 99
    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    .line 100
    iput-object p3, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->inner:Lrx/Scheduler$Worker;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    .line 102
    return-void
.end method


# virtual methods
.method emitChunk(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    .local p1, "chunkToEmit":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 191
    .local v1, "emit":Z
    monitor-enter p0

    .line 192
    :try_start_2
    iget-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v4, :cond_8

    .line 193
    monitor-exit p0

    .line 212
    :cond_7
    :goto_7
    return-void

    .line 195
    :cond_8
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 196
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 197
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 198
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ne v0, p1, :cond_e

    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 200
    const/4 v1, 0x1

    .line 204
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_2e

    .line 205
    if-eqz v1, :cond_7

    .line 207
    :try_start_23
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_7

    .line 208
    :catch_29
    move-exception v3

    .line 209
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_7

    .line 204
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_2e
    move-exception v4

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v4
.end method

.method public onCompleted()V
    .registers 6

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1} :catch_2d

    .line 149
    :try_start_1
    iget-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v4, :cond_7

    .line 150
    monitor-exit p0

    .line 165
    :goto_6
    return-void

    .line 152
    :cond_7
    const/4 v4, 0x1

    iput-boolean v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    .line 153
    new-instance v2, Ljava/util/LinkedList;

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 154
    .local v2, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 155
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_34

    .line 156
    :try_start_17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 157
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2c} :catch_2d

    goto :goto_1b

    .line 159
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catch_2d
    move-exception v3

    .line 160
    .local v3, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-static {v3, v4}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_6

    .line 155
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_34
    move-exception v4

    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v4
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_37} :catch_2d

    .line 163
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_37
    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    .line 164
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->unsubscribe()V

    goto :goto_6
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 133
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    monitor-enter p0

    .line 134
    :try_start_1
    iget-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v0, :cond_7

    .line 135
    monitor-exit p0

    .line 142
    :goto_6
    return-void

    .line 137
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    .line 138
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_19

    .line 140
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 141
    invoke-virtual {p0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->unsubscribe()V

    goto :goto_6

    .line 139
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 107
    .local v3, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    monitor-enter p0

    .line 108
    :try_start_2
    iget-boolean v5, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v5, :cond_8

    .line 109
    monitor-exit p0

    .line 129
    :goto_7
    return-void

    .line 111
    :cond_8
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_50

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    move-object v4, v3

    .line 112
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .local v4, "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :goto_f
    :try_start_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget v6, v6, Lrx/internal/operators/OperatorBufferWithTime;->count:I

    if-ne v5, v6, :cond_5a

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 117
    if-nez v4, :cond_58

    .line 118
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_55

    .line 120
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :goto_32
    :try_start_32
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_50

    :goto_35
    move-object v4, v3

    .line 122
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_f

    .line 123
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_55

    .line 124
    if-eqz v4, :cond_53

    .line 125
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 126
    .restart local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_3e

    .line 123
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catchall_50
    move-exception v5

    :goto_51
    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v5

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_53
    move-object v3, v4

    .line 129
    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_7

    .line 123
    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catchall_55
    move-exception v5

    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_51

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_58
    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_32

    .end local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_5a
    move-object v3, v4

    .end local v4    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .restart local v3    # "sizeReached":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    goto :goto_35
.end method

.method scheduleChunk()V
    .registers 8

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;-><init>(Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v2, v2, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    iget-object v4, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorBufferWithTime;->timeshift:J

    iget-object v6, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 173
    return-void
.end method

.method startNewChunk()V
    .registers 7

    .prologue
    .line 175
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 177
    :try_start_6
    iget-boolean v1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->done:Z

    if-eqz v1, :cond_c

    .line 178
    monitor-exit p0

    .line 188
    :goto_b
    return-void

    .line 180
    :cond_c
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_25

    .line 182
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->inner:Lrx/Scheduler$Worker;

    new-instance v2, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;

    invoke-direct {v2, p0, v0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;-><init>(Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;Ljava/util/List;)V

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-wide v4, v3, Lrx/internal/operators/OperatorBufferWithTime;->timespan:J

    iget-object v3, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorBufferWithTime;

    iget-object v3, v3, Lrx/internal/operators/OperatorBufferWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    goto :goto_b

    .line 181
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

###### Class rx.internal.operators.OperatorBufferWithTime.InexactSubscriber.AnonymousClass1 (rx.internal.operators.OperatorBufferWithTime$InexactSubscriber$1)
.class Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorBufferWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->scheduleChunk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;)V
    .registers 2

    .prologue
    .line 167
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;, "Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 170
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;, "Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->startNewChunk()V

    .line 171
    return-void
.end method

###### Class rx.internal.operators.OperatorBufferWithTime.InexactSubscriber.AnonymousClass2 (rx.internal.operators.OperatorBufferWithTime$InexactSubscriber$2)
.class Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;
.super Ljava/lang/Object;
.source "OperatorBufferWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->startNewChunk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;

.field final synthetic val$chunk:Ljava/util/List;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 182
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;, "Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;->this$1:Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;->val$chunk:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 185
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;, "Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;->this$1:Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber$2;->val$chunk:Ljava/util/List;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorBufferWithTime$InexactSubscriber;->emitChunk(Ljava/util/List;)V

    .line 186
    return-void
.end method
