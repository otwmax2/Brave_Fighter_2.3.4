###### Class rx.internal.operators.OperatorWindowWithTime (rx.internal.operators.OperatorWindowWithTime)
.class public final Lrx/internal/operators/OperatorWindowWithTime;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;,
        Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;,
        Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;,
        Lrx/internal/operators/OperatorWindowWithTime$State;
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
        "Lrx/Observable",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field static final NEXT_SUBJECT:Ljava/lang/Object;

.field static final NL:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final scheduler:Lrx/Scheduler;

.field final size:I

.field final timeshift:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorWindowWithTime;->NEXT_SUBJECT:Ljava/lang/Object;

    .line 52
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorWindowWithTime;->NL:Lrx/internal/operators/NotificationLite;

    return-void
.end method

.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V
    .registers 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "size"    # I
    .param p7, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lrx/internal/operators/OperatorWindowWithTime;->timespan:J

    .line 57
    iput-wide p3, p0, Lrx/internal/operators/OperatorWindowWithTime;->timeshift:J

    .line 58
    iput-object p5, p0, Lrx/internal/operators/OperatorWindowWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    .line 59
    iput p6, p0, Lrx/internal/operators/OperatorWindowWithTime;->size:I

    .line 60
    iput-object p7, p0, Lrx/internal/operators/OperatorWindowWithTime;->scheduler:Lrx/Scheduler;

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithTime;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "Lrx/Observable",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime;->scheduler:Lrx/Scheduler;

    invoke-virtual {v3}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v2

    .line 68
    .local v2, "worker":Lrx/Scheduler$Worker;
    iget-wide v4, p0, Lrx/internal/operators/OperatorWindowWithTime;->timespan:J

    iget-wide v6, p0, Lrx/internal/operators/OperatorWindowWithTime;->timeshift:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1a

    .line 69
    new-instance v0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    invoke-direct {v0, p0, p1, v2}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    .line 70
    .local v0, "s":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    invoke-virtual {v0, v2}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->add(Lrx/Subscription;)V

    .line 71
    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->scheduleExact()V

    .line 79
    .end local v0    # "s":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    :goto_19
    return-object v0

    .line 75
    :cond_1a
    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;

    invoke-direct {v1, p0, p1, v2}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V

    .line 76
    .local v1, "s":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    invoke-virtual {v1, v2}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->add(Lrx/Subscription;)V

    .line 77
    invoke-virtual {v1}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->startNewChunk()V

    .line 78
    invoke-virtual {v1}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->scheduleChunk()V

    move-object v0, v1

    .line 79
    goto :goto_19
.end method

###### Class rx.internal.operators.OperatorWindowWithTime.CountedSerializedSubject (rx.internal.operators.OperatorWindowWithTime$CountedSerializedSubject)
.class final Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountedSerializedSubject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final consumer:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation
.end field

.field count:I

.field final producer:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observer;Lrx/Observable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<TT;>;",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    .local p1, "consumer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    .local p2, "producer":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, p1}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    .line 359
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->producer:Lrx/Observable;

    .line 360
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithTime.ExactSubscriber (rx.internal.operators.OperatorWindowWithTime$ExactSubscriber)
.class final Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithTime;
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
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field final guard:Ljava/lang/Object;

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile state:Lrx/internal/operators/OperatorWindowWithTime$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorWindowWithTime$State",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithTime;

.field final worker:Lrx/Scheduler$Worker;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWindowWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .registers 5
    .param p3, "worker"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 119
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p2}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    .line 120
    iput-object p3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->worker:Lrx/Scheduler$Worker;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    .line 122
    invoke-static {}, Lrx/internal/operators/OperatorWindowWithTime$State;->empty()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 123
    new-instance v0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;-><init>(Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;Lrx/internal/operators/OperatorWindowWithTime;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p2, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 132
    return-void
.end method


# virtual methods
.method complete()V
    .registers 3

    .prologue
    .line 265
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    iget-object v0, v1, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    .line 266
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    invoke-virtual {v1}, Lrx/internal/operators/OperatorWindowWithTime$State;->clear()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 267
    if-eqz v0, :cond_11

    .line 268
    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 270
    :cond_11
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 271
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->unsubscribe()V

    .line 272
    return-void
.end method

.method drain(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    if-nez p1, :cond_5

    .line 205
    :cond_4
    :goto_4
    return v3

    .line 184
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 185
    .local v1, "o":Ljava/lang/Object;
    sget-object v5, Lrx/internal/operators/OperatorWindowWithTime;->NEXT_SUBJECT:Ljava/lang/Object;

    if-ne v1, v5, :cond_1f

    .line 186
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->replaceSubject()Z

    move-result v5

    if-nez v5, :cond_9

    move v3, v4

    .line 187
    goto :goto_4

    .line 190
    :cond_1f
    sget-object v5, Lrx/internal/operators/OperatorWindowWithTime;->NL:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v5, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 191
    sget-object v4, Lrx/internal/operators/OperatorWindowWithTime;->NL:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 194
    :cond_31
    sget-object v5, Lrx/internal/operators/OperatorWindowWithTime;->NL:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v5, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 195
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->complete()V

    goto :goto_4

    .line 199
    :cond_3d
    move-object v2, v1

    .line 200
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    move v3, v4

    .line 201
    goto :goto_4
.end method

.method emitValue(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 225
    .local v0, "s":Lrx/internal/operators/OperatorWindowWithTime$State;, "Lrx/internal/operators/OperatorWindowWithTime$State<TT;>;"
    iget-object v1, v0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    if-nez v1, :cond_10

    .line 226
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->replaceSubject()Z

    move-result v1

    if-nez v1, :cond_e

    .line 227
    const/4 v1, 0x0

    .line 239
    :goto_d
    return v1

    .line 229
    :cond_e
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 231
    :cond_10
    iget-object v1, v0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 232
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithTime$State;->count:I

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget v2, v2, Lrx/internal/operators/OperatorWindowWithTime;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2c

    .line 233
    iget-object v1, v0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    .line 234
    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithTime$State;->clear()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v0

    .line 238
    :goto_28
    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 239
    const/4 v1, 0x1

    goto :goto_d

    .line 236
    :cond_2c
    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithTime$State;->next()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v0

    goto :goto_28
.end method

.method error(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 256
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    iget-object v0, v1, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    .line 257
    .local v0, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    invoke-virtual {v1}, Lrx/internal/operators/OperatorWindowWithTime$State;->clear()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 258
    if-eqz v0, :cond_11

    .line 259
    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 261
    :cond_11
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 262
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->unsubscribe()V

    .line 263
    return-void
.end method

.method nextWindow()V
    .registers 6

    .prologue
    .line 308
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 309
    :try_start_3
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    if-eqz v2, :cond_1b

    .line 310
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_12

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 313
    :cond_12
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    sget-object v4, Lrx/internal/operators/OperatorWindowWithTime;->NEXT_SUBJECT:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit v3

    .line 343
    :cond_1a
    :goto_1a
    return-void

    .line 316
    :cond_1b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 317
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_33

    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, "skipFinal":Z
    :try_start_20
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->replaceSubject()Z
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_69

    move-result v2

    if-nez v2, :cond_36

    .line 340
    if-nez v1, :cond_1a

    .line 341
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    const/4 v2, 0x0

    :try_start_2c
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 343
    monitor-exit v3

    goto :goto_1a

    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_30

    throw v2

    .line 317
    .end local v1    # "skipFinal":Z
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2

    .line 325
    .restart local v1    # "skipFinal":Z
    :cond_36
    :try_start_36
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_69

    .line 326
    :try_start_39
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 327
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_4f

    .line 328
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 329
    const/4 v1, 0x1

    .line 330
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_66

    .line 340
    if-nez v1, :cond_1a

    .line 341
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    const/4 v2, 0x0

    :try_start_48
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 343
    monitor-exit v3

    goto :goto_1a

    :catchall_4c
    move-exception v2

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    throw v2

    .line 332
    :cond_4f
    const/4 v2, 0x0

    :try_start_50
    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 333
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_66

    .line 335
    :try_start_53
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->drain(Ljava/util/List;)Z
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_69

    move-result v2

    if-nez v2, :cond_36

    .line 340
    if-nez v1, :cond_1a

    .line 341
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    const/4 v2, 0x0

    :try_start_5f
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 343
    monitor-exit v3

    goto :goto_1a

    :catchall_63
    move-exception v2

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_63

    throw v2

    .line 333
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_66
    move-exception v2

    :try_start_67
    monitor-exit v3
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    throw v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 340
    :catchall_69
    move-exception v2

    if-nez v1, :cond_73

    .line 341
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    const/4 v4, 0x0

    :try_start_70
    iput-boolean v4, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 343
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    :cond_73
    throw v2

    :catchall_74
    move-exception v2

    :try_start_75
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v2
.end method

.method public onCompleted()V
    .registers 6

    .prologue
    .line 276
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 277
    :try_start_3
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    if-eqz v2, :cond_1f

    .line 278
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_12

    .line 279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 281
    :cond_12
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    sget-object v4, Lrx/internal/operators/OperatorWindowWithTime;->NL:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v3

    .line 295
    :goto_1e
    return-void

    .line 284
    :cond_1f
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 285
    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 286
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 287
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2f

    .line 289
    :try_start_28
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->drain(Ljava/util/List;)Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_32

    .line 294
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->complete()V

    goto :goto_1e

    .line 287
    .end local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2

    .line 290
    .restart local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_32
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 244
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_3
    iget-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    if-eqz v0, :cond_15

    .line 247
    sget-object v0, Lrx/internal/operators/OperatorWindowWithTime;->NL:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 248
    monitor-exit v1

    .line 254
    :goto_14
    return-void

    .line 250
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 252
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    .line 253
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->error(Ljava/lang/Throwable;)V

    goto :goto_14

    .line 252
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 142
    :try_start_3
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    if-eqz v2, :cond_19

    .line 143
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    if-nez v2, :cond_12

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 146
    :cond_12
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    monitor-exit v3

    .line 176
    :cond_18
    :goto_18
    return-void

    .line 149
    :cond_19
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 150
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_31

    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, "skipFinal":Z
    :try_start_1e
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitValue(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_67

    move-result v2

    if-nez v2, :cond_34

    .line 173
    if-nez v1, :cond_18

    .line 174
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    const/4 v2, 0x0

    :try_start_2a
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 176
    monitor-exit v3

    goto :goto_18

    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_2e

    throw v2

    .line 150
    .end local v1    # "skipFinal":Z
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2

    .line 159
    .restart local v1    # "skipFinal":Z
    :cond_34
    :try_start_34
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_67

    .line 160
    :try_start_37
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 161
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_4d

    .line 162
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 163
    const/4 v1, 0x1

    .line 164
    monitor-exit v3
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_64

    .line 173
    if-nez v1, :cond_18

    .line 174
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    const/4 v2, 0x0

    :try_start_46
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 176
    monitor-exit v3

    goto :goto_18

    :catchall_4a
    move-exception v2

    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4a

    throw v2

    .line 166
    :cond_4d
    const/4 v2, 0x0

    :try_start_4e
    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->queue:Ljava/util/List;

    .line 167
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_64

    .line 168
    :try_start_51
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->drain(Ljava/util/List;)Z
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_67

    move-result v2

    if-nez v2, :cond_34

    .line 173
    if-nez v1, :cond_18

    .line 174
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    const/4 v2, 0x0

    :try_start_5d
    iput-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 176
    monitor-exit v3

    goto :goto_18

    :catchall_61
    move-exception v2

    monitor-exit v3
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_61

    throw v2

    .line 167
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v3
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    .line 173
    :catchall_67
    move-exception v2

    if-nez v1, :cond_71

    .line 174
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    const/4 v4, 0x0

    :try_start_6e
    iput-boolean v4, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->emitting:Z

    .line 176
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    :cond_71
    throw v2

    :catchall_72
    move-exception v2

    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v2
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 136
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->request(J)V

    .line 137
    return-void
.end method

.method replaceSubject()Z
    .registers 4

    .prologue
    .line 208
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    iget-object v1, v2, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    .line 209
    .local v1, "s":Lrx/Observer;, "Lrx/Observer<TT;>;"
    if-eqz v1, :cond_9

    .line 210
    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    .line 213
    :cond_9
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 214
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    invoke-virtual {v2}, Lrx/internal/operators/OperatorWindowWithTime$State;->clear()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 215
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->unsubscribe()V

    .line 216
    const/4 v2, 0x0

    .line 221
    :goto_1d
    return v2

    .line 218
    :cond_1e
    invoke-static {}, Lrx/subjects/UnicastSubject;->create()Lrx/subjects/UnicastSubject;

    move-result-object v0

    .line 219
    .local v0, "bus":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    invoke-virtual {v2, v0, v0}, Lrx/internal/operators/OperatorWindowWithTime$State;->create(Lrx/Observer;Lrx/Observable;)Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    .line 220
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 221
    const/4 v2, 0x1

    goto :goto_1d
.end method

.method scheduleExact()V
    .registers 8

    .prologue
    .line 298
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$2;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$2;-><init>(Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;)V

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorWindowWithTime;->timespan:J

    iget-object v6, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorWindowWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 306
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithTime.ExactSubscriber.AnonymousClass1 (rx.internal.operators.OperatorWindowWithTime$ExactSubscriber$1)
.class Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;-><init>(Lrx/internal/operators/OperatorWindowWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

.field final synthetic val$this$0:Lrx/internal/operators/OperatorWindowWithTime;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;Lrx/internal/operators/OperatorWindowWithTime;)V
    .registers 3

    .prologue
    .line 123
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;->val$this$0:Lrx/internal/operators/OperatorWindowWithTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 127
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->state:Lrx/internal/operators/OperatorWindowWithTime$State;

    iget-object v0, v0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    if-nez v0, :cond_d

    .line 128
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->unsubscribe()V

    .line 130
    :cond_d
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithTime.ExactSubscriber.AnonymousClass2 (rx.internal.operators.OperatorWindowWithTime$ExactSubscriber$2)
.class Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$2;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->scheduleExact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;)V
    .registers 2

    .prologue
    .line 298
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$2;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 302
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$2;, "Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithTime$ExactSubscriber;->nextWindow()V

    .line 303
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithTime.InexactSubscriber (rx.internal.operators.OperatorWindowWithTime$InexactSubscriber)
.class final Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;
.super Lrx/Subscriber;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithTime;
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
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field final guard:Ljava/lang/Object;

.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithTime;

.field final worker:Lrx/Scheduler$Worker;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorWindowWithTime;Lrx/Subscriber;Lrx/Scheduler$Worker;)V
    .registers 5
    .param p3, "worker"    # Lrx/Scheduler$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;",
            "Lrx/Scheduler$Worker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    .line 372
    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 373
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    .line 374
    iput-object p3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->worker:Lrx/Scheduler$Worker;

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    .line 376
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    .line 377
    return-void
.end method


# virtual methods
.method createCountedSerializedSubject()Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    invoke-static {}, Lrx/subjects/UnicastSubject;->create()Lrx/subjects/UnicastSubject;

    move-result-object v0

    .line 497
    .local v0, "bus":Lrx/subjects/UnicastSubject;, "Lrx/subjects/UnicastSubject<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    invoke-direct {v1, v0, v0}, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;-><init>(Lrx/Observer;Lrx/Observable;)V

    return-object v1
.end method

.method public onCompleted()V
    .registers 6

    .prologue
    .line 428
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 429
    :try_start_3
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v3, :cond_9

    .line 430
    monitor-exit v4

    .line 440
    :goto_8
    return-void

    .line 432
    :cond_9
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    .line 433
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 434
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 435
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2f

    .line 436
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 437
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3}, Lrx/Observer;->onCompleted()V

    goto :goto_1d

    .line 435
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v3

    .line 439
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_32
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V

    goto :goto_8
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 411
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 412
    :try_start_3
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v3, :cond_9

    .line 413
    monitor-exit v4

    .line 423
    :goto_8
    return-void

    .line 415
    :cond_9
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 417
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 418
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2f

    .line 419
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 420
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 418
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v3

    .line 422
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_32
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v5

    .line 388
    :try_start_3
    iget-boolean v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v4, :cond_9

    .line 389
    monitor-exit v5

    .line 406
    :cond_8
    return-void

    .line 391
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 392
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 393
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 395
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget v4, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->count:I

    iget-object v6, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget v6, v6, Lrx/internal/operators/OperatorWindowWithTime;->size:I

    if-ne v4, v6, :cond_16

    .line 396
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    .line 399
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v4

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_35
    :try_start_35
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 400
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 401
    .restart local v0    # "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v4, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v4, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 402
    iget v4, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->count:I

    iget-object v5, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget v5, v5, Lrx/internal/operators/OperatorWindowWithTime;->size:I

    if-ne v4, v5, :cond_3a

    .line 403
    iget-object v4, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v4}, Lrx/Observer;->onCompleted()V

    goto :goto_3a
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 381
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->request(J)V

    .line 382
    return-void
.end method

.method scheduleChunk()V
    .registers 8

    .prologue
    .line 442
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->worker:Lrx/Scheduler$Worker;

    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$1;-><init>(Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;)V

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-wide v2, v2, Lrx/internal/operators/OperatorWindowWithTime;->timeshift:J

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorWindowWithTime;->timeshift:J

    iget-object v6, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorWindowWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/Scheduler$Worker;->schedulePeriodically(Lrx/functions/Action0;JJLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 450
    return-void
.end method

.method startNewChunk()V
    .registers 8

    .prologue
    .line 452
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->createCountedSerializedSubject()Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    move-result-object v0

    .line 453
    .local v0, "chunk":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 454
    :try_start_7
    iget-boolean v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v2, :cond_d

    .line 455
    monitor-exit v3

    .line 474
    :goto_c
    return-void

    .line 457
    :cond_d
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_2d

    .line 460
    :try_start_13
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->child:Lrx/Subscriber;

    iget-object v3, v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->producer:Lrx/Observable;

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1a} :catch_30

    .line 466
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->worker:Lrx/Scheduler$Worker;

    new-instance v3, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;

    invoke-direct {v3, p0, v0}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;-><init>(Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;)V

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-wide v4, v4, Lrx/internal/operators/OperatorWindowWithTime;->timespan:J

    iget-object v6, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithTime;

    iget-object v6, v6, Lrx/internal/operators/OperatorWindowWithTime;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    goto :goto_c

    .line 458
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2

    .line 461
    :catch_30
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method terminateChunk(Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    .local p1, "chunk":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    const/4 v2, 0x0

    .line 477
    .local v2, "terminate":Z
    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 478
    :try_start_4
    iget-boolean v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->done:Z

    if-eqz v3, :cond_a

    .line 479
    monitor-exit v4

    .line 494
    :cond_9
    :goto_9
    return-void

    .line 481
    :cond_a
    iget-object v3, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 482
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 483
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    .line 484
    .local v0, "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    if-ne v0, p1, :cond_10

    .line 485
    const/4 v2, 0x1

    .line 486
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 490
    .end local v0    # "cs":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    :cond_22
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_2b

    .line 491
    if-eqz v2, :cond_9

    .line 492
    iget-object v3, p1, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    invoke-interface {v3}, Lrx/Observer;->onCompleted()V

    goto :goto_9

    .line 490
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v3
.end method

###### Class rx.internal.operators.OperatorWindowWithTime.InexactSubscriber.AnonymousClass1 (rx.internal.operators.OperatorWindowWithTime$InexactSubscriber$1)
.class Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->scheduleChunk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;)V
    .registers 2

    .prologue
    .line 442
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 446
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$1;, "Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$1;->this$1:Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->startNewChunk()V

    .line 447
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithTime.InexactSubscriber.AnonymousClass2 (rx.internal.operators.OperatorWindowWithTime$InexactSubscriber$2)
.class Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->startNewChunk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;

.field final synthetic val$chunk:Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;)V
    .registers 3

    .prologue
    .line 466
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;, "Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;

    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;->val$chunk:Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 470
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;, "Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber$2;->val$chunk:Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorWindowWithTime$InexactSubscriber;->terminateChunk(Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;)V

    .line 471
    return-void
.end method

###### Class rx.internal.operators.OperatorWindowWithTime.State (rx.internal.operators.OperatorWindowWithTime$State)
.class final Lrx/internal/operators/OperatorWindowWithTime$State;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithTime;
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
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final EMPTY:Lrx/internal/operators/OperatorWindowWithTime$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorWindowWithTime$State",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final consumer:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation
.end field

.field final count:I

.field final producer:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Lrx/internal/operators/OperatorWindowWithTime$State;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lrx/internal/operators/OperatorWindowWithTime$State;-><init>(Lrx/Observer;Lrx/Observable;I)V

    sput-object v0, Lrx/internal/operators/OperatorWindowWithTime$State;->EMPTY:Lrx/internal/operators/OperatorWindowWithTime$State;

    return-void
.end method

.method public constructor <init>(Lrx/Observer;Lrx/Observable;I)V
    .registers 4
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<TT;>;",
            "Lrx/Observable",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$State;, "Lrx/internal/operators/OperatorWindowWithTime$State<TT;>;"
    .local p1, "consumer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    .local p2, "producer":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    .line 90
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->producer:Lrx/Observable;

    .line 91
    iput p3, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->count:I

    .line 92
    return-void
.end method

.method public static empty()Lrx/internal/operators/OperatorWindowWithTime$State;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorWindowWithTime$State",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lrx/internal/operators/OperatorWindowWithTime$State;->EMPTY:Lrx/internal/operators/OperatorWindowWithTime$State;

    return-object v0
.end method


# virtual methods
.method public clear()Lrx/internal/operators/OperatorWindowWithTime$State;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorWindowWithTime$State",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$State;, "Lrx/internal/operators/OperatorWindowWithTime$State<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorWindowWithTime$State;->empty()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v0

    return-object v0
.end method

.method public create(Lrx/Observer;Lrx/Observable;)Lrx/internal/operators/OperatorWindowWithTime$State;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<TT;>;",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/internal/operators/OperatorWindowWithTime$State",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$State;, "Lrx/internal/operators/OperatorWindowWithTime$State<TT;>;"
    .local p1, "consumer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    .local p2, "producer":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithTime$State;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lrx/internal/operators/OperatorWindowWithTime$State;-><init>(Lrx/Observer;Lrx/Observable;I)V

    return-object v0
.end method

.method public next()Lrx/internal/operators/OperatorWindowWithTime$State;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorWindowWithTime$State",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$State;, "Lrx/internal/operators/OperatorWindowWithTime$State<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithTime$State;

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->producer:Lrx/Observable;

    iget v3, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->count:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorWindowWithTime$State;-><init>(Lrx/Observer;Lrx/Observable;I)V

    return-object v0
.end method
