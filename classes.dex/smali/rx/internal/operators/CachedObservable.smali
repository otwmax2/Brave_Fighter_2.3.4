###### Class rx.internal.operators.CachedObservable (rx.internal.operators.CachedObservable)
.class public final Lrx/internal/operators/CachedObservable;
.super Lrx/Observable;
.source "CachedObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CachedObservable$ReplayProducer;,
        Lrx/internal/operators/CachedObservable$CachedSubscribe;,
        Lrx/internal/operators/CachedObservable$CacheState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final state:Lrx/internal/operators/CachedObservable$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Observable$OnSubscribe;Lrx/internal/operators/CachedObservable$CacheState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/CachedObservable;, "Lrx/internal/operators/CachedObservable<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 71
    iput-object p2, p0, Lrx/internal/operators/CachedObservable;->state:Lrx/internal/operators/CachedObservable$CacheState;

    .line 72
    return-void
.end method

.method public static from(Lrx/Observable;)Lrx/internal/operators/CachedObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/internal/operators/CachedObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lrx/internal/operators/CachedObservable;->from(Lrx/Observable;I)Lrx/internal/operators/CachedObservable;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lrx/Observable;I)Lrx/internal/operators/CachedObservable;
    .registers 6
    .param p1, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;I)",
            "Lrx/internal/operators/CachedObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v2, 0x1

    if-ge p1, v2, :cond_b

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "capacityHint > 0 required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_b
    new-instance v1, Lrx/internal/operators/CachedObservable$CacheState;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/CachedObservable$CacheState;-><init>(Lrx/Observable;I)V

    .line 59
    .local v1, "state":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    new-instance v0, Lrx/internal/operators/CachedObservable$CachedSubscribe;

    invoke-direct {v0, v1}, Lrx/internal/operators/CachedObservable$CachedSubscribe;-><init>(Lrx/internal/operators/CachedObservable$CacheState;)V

    .line 60
    .local v0, "onSubscribe":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    new-instance v2, Lrx/internal/operators/CachedObservable;

    invoke-direct {v2, v0, v1}, Lrx/internal/operators/CachedObservable;-><init>(Lrx/Observable$OnSubscribe;Lrx/internal/operators/CachedObservable$CacheState;)V

    return-object v2
.end method


# virtual methods
.method hasObservers()Z
    .registers 2

    .prologue
    .line 87
    .local p0, "this":Lrx/internal/operators/CachedObservable;, "Lrx/internal/operators/CachedObservable<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable;->state:Lrx/internal/operators/CachedObservable$CacheState;

    iget-object v0, v0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    array-length v0, v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method isConnected()Z
    .registers 2

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/CachedObservable;, "Lrx/internal/operators/CachedObservable<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable;->state:Lrx/internal/operators/CachedObservable$CacheState;

    iget-boolean v0, v0, Lrx/internal/operators/CachedObservable$CacheState;->isConnected:Z

    return v0
.end method

###### Class rx.internal.operators.CachedObservable.CacheState (rx.internal.operators.CachedObservable$CacheState)
.class final Lrx/internal/operators/CachedObservable$CacheState;
.super Lrx/internal/util/LinkedArrayList;
.source "CachedObservable.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CachedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/LinkedArrayList;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/CachedObservable$ReplayProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final connection:Lrx/subscriptions/SerialSubscription;

.field volatile isConnected:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<*>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field sourceDone:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    sput-object v0, Lrx/internal/operators/CachedObservable$CacheState;->EMPTY:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;I)V
    .registers 4
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0, p2}, Lrx/internal/util/LinkedArrayList;-><init>(I)V

    .line 117
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$CacheState;->source:Lrx/Observable;

    .line 118
    sget-object v0, Lrx/internal/operators/CachedObservable$CacheState;->EMPTY:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    iput-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 119
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->nl:Lrx/internal/operators/NotificationLite;

    .line 120
    new-instance v0, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v0}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    .line 121
    return-void
.end method


# virtual methods
.method public addProducer(Lrx/internal/operators/CachedObservable$ReplayProducer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    .local p1, "p":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    monitor-enter v4

    .line 130
    :try_start_3
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 131
    .local v0, "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    array-length v2, v0

    .line 132
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 133
    .local v1, "b":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    aput-object p1, v1, v2

    .line 135
    iput-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 136
    monitor-exit v4

    .line 137
    return-void

    .line 136
    .end local v0    # "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    .end local v1    # "b":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    .end local v2    # "n":I
    :catchall_15
    move-exception v3

    monitor-exit v4
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3
.end method

.method public connect()V
    .registers 3

    .prologue
    .line 171
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    new-instance v0, Lrx/internal/operators/CachedObservable$CacheState$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/CachedObservable$CacheState$1;-><init>(Lrx/internal/operators/CachedObservable$CacheState;)V

    .line 185
    .local v0, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 186
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->source:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 187
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->isConnected:Z

    .line 188
    return-void
.end method

.method dispatch()V
    .registers 6

    .prologue
    .line 221
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 222
    .local v0, "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    move-object v1, v0

    .local v1, "arr$":[Lrx/internal/operators/CachedObservable$ReplayProducer;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v3, :cond_f

    aget-object v4, v1, v2

    .line 223
    .local v4, "rp":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    invoke-virtual {v4}, Lrx/internal/operators/CachedObservable$ReplayProducer;->replay()V

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 225
    .end local v4    # "rp":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    :cond_f
    return-void
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 209
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    iget-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->sourceDone:Z

    if-nez v1, :cond_18

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->sourceDone:Z

    .line 211
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lrx/internal/operators/CachedObservable$CacheState;->add(Ljava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 214
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$CacheState;->dispatch()V

    .line 216
    .end local v0    # "o":Ljava/lang/Object;
    :cond_18
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 199
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    iget-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->sourceDone:Z

    if-nez v1, :cond_18

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->sourceDone:Z

    .line 201
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lrx/internal/operators/CachedObservable$CacheState;->add(Ljava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 204
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$CacheState;->dispatch()V

    .line 206
    .end local v0    # "o":Ljava/lang/Object;
    :cond_18
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
    .line 191
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->sourceDone:Z

    if-nez v1, :cond_10

    .line 192
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lrx/internal/operators/CachedObservable$CacheState;->add(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$CacheState;->dispatch()V

    .line 196
    .end local v0    # "o":Ljava/lang/Object;
    :cond_10
    return-void
.end method

.method public removeProducer(Lrx/internal/operators/CachedObservable$ReplayProducer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/CachedObservable$ReplayProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    .local p1, "p":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/CachedObservable$CacheState;->connection:Lrx/subscriptions/SerialSubscription;

    monitor-enter v6

    .line 144
    :try_start_3
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 145
    .local v0, "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    array-length v4, v0

    .line 146
    .local v4, "n":I
    const/4 v3, -0x1

    .line 147
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v4, :cond_13

    .line 148
    aget-object v5, v0, v2

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 149
    move v3, v2

    .line 153
    :cond_13
    if-gez v3, :cond_1a

    .line 154
    monitor-exit v6

    .line 165
    :goto_16
    return-void

    .line 147
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 156
    :cond_1a
    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    .line 157
    sget-object v5, Lrx/internal/operators/CachedObservable$CacheState;->EMPTY:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    iput-object v5, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 158
    monitor-exit v6

    goto :goto_16

    .line 164
    .end local v0    # "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "n":I
    :catchall_23
    move-exception v5

    monitor-exit v6
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v5

    .line 160
    .restart local v0    # "a":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "n":I
    :cond_26
    add-int/lit8 v5, v4, -0x1

    :try_start_28
    new-array v1, v5, [Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 161
    .local v1, "b":[Lrx/internal/operators/CachedObservable$ReplayProducer;, "[Lrx/internal/operators/CachedObservable$ReplayProducer<*>;"
    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v5, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    add-int/lit8 v5, v3, 0x1

    sub-int v7, v4, v3

    add-int/lit8 v7, v7, -0x1

    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iput-object v1, p0, Lrx/internal/operators/CachedObservable$CacheState;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    .line 164
    monitor-exit v6
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_23

    goto :goto_16
.end method

###### Class rx.internal.operators.CachedObservable.CacheState.AnonymousClass1 (rx.internal.operators.CachedObservable$CacheState$1)
.class Lrx/internal/operators/CachedObservable$CacheState$1;
.super Lrx/Subscriber;
.source "CachedObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CachedObservable$CacheState;->connect()V
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
.field final synthetic this$0:Lrx/internal/operators/CachedObservable$CacheState;


# direct methods
.method constructor <init>(Lrx/internal/operators/CachedObservable$CacheState;)V
    .registers 2

    .prologue
    .line 171
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState$1;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$CacheState$1;->this$0:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 182
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState$1;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState$1;->this$0:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v0}, Lrx/internal/operators/CachedObservable$CacheState;->onCompleted()V

    .line 183
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 178
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState$1;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState$1;->this$0:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v0, p1}, Lrx/internal/operators/CachedObservable$CacheState;->onError(Ljava/lang/Throwable;)V

    .line 179
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
    .line 174
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState$1;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState$1;->this$0:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v0, p1}, Lrx/internal/operators/CachedObservable$CacheState;->onNext(Ljava/lang/Object;)V

    .line 175
    return-void
.end method

###### Class rx.internal.operators.CachedObservable.CachedSubscribe (rx.internal.operators.CachedObservable$CachedSubscribe)
.class final Lrx/internal/operators/CachedObservable$CachedSubscribe;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "CachedObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CachedObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CachedSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x271aaa367272024eL


# instance fields
.field final state:Lrx/internal/operators/CachedObservable$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/CachedObservable$CacheState;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    .local p1, "state":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 238
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$CacheState;

    .line 239
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 233
    .local p0, "this":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CachedObservable$CachedSubscribe;->call(Lrx/Subscriber;)V

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
    .line 243
    .local p0, "this":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/CachedObservable$ReplayProducer;

    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;-><init>(Lrx/Subscriber;Lrx/internal/operators/CachedObservable$CacheState;)V

    .line 244
    .local v0, "rp":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v1, v0}, Lrx/internal/operators/CachedObservable$CacheState;->addProducer(Lrx/internal/operators/CachedObservable$ReplayProducer;)V

    .line 246
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 247
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 250
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$CachedSubscribe;->get()Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lrx/internal/operators/CachedObservable$CachedSubscribe;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 251
    iget-object v1, p0, Lrx/internal/operators/CachedObservable$CachedSubscribe;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v1}, Lrx/internal/operators/CachedObservable$CacheState;->connect()V

    .line 255
    :cond_25
    return-void
.end method

###### Class rx.internal.operators.CachedObservable.ReplayProducer (rx.internal.operators.CachedObservable$ReplayProducer)
.class final Lrx/internal/operators/CachedObservable$ReplayProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "CachedObservable.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/CachedObservable;
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
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x237e491daced6e1dL


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field emitting:Z

.field index:I

.field missed:Z

.field final state:Lrx/internal/operators/CachedObservable$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Lrx/internal/operators/CachedObservable$CacheState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/internal/operators/CachedObservable$CacheState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "state":Lrx/internal/operators/CachedObservable$CacheState;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 292
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Lrx/Subscriber;

    .line 293
    iput-object p2, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    .line 294
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .registers 5

    .prologue
    .line 323
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public produced(J)J
    .registers 6
    .param p1, "n"    # J

    .prologue
    .line 318
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public replay()V
    .registers 21

    .prologue
    .line 341
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    monitor-enter p0

    .line 342
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 343
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 344
    monitor-exit p0

    .line 453
    :cond_12
    :goto_12
    return-void

    .line 346
    :cond_13
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 347
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_46

    .line 348
    const/4 v15, 0x0

    .line 350
    .local v15, "skipFinal":Z
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v10, v0, Lrx/internal/operators/CachedObservable$CacheState;->nl:Lrx/internal/operators/NotificationLite;

    .line 351
    .local v10, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Lrx/Subscriber;

    .line 355
    .local v5, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_1b3

    move-result-wide v12

    .line 357
    .local v12, "r":J
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-gez v17, :cond_49

    .line 358
    const/4 v15, 0x1

    .line 450
    if-nez v15, :cond_12

    .line 451
    monitor-enter p0

    .line 452
    const/16 v17, 0x0

    :try_start_3b
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 453
    monitor-exit p0

    goto :goto_12

    :catchall_43
    move-exception v17

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_43

    throw v17

    .line 347
    .end local v5    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v10    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v12    # "r":J
    .end local v15    # "skipFinal":Z
    :catchall_46
    move-exception v17

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v17

    .line 364
    .restart local v5    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v10    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .restart local v12    # "r":J
    .restart local v15    # "skipFinal":Z
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lrx/internal/operators/CachedObservable$CacheState;->size()I

    move-result v14

    .line 365
    .local v14, "s":I
    if-eqz v14, :cond_181

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 369
    .local v4, "b":[Ljava/lang/Object;
    if-nez v4, :cond_69

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lrx/internal/operators/CachedObservable$CacheState;->head()[Ljava/lang/Object;

    move-result-object v4

    .line 371
    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 373
    :cond_69
    array-length v0, v4

    move/from16 v17, v0

    add-int/lit8 v9, v17, -0x1

    .line 374
    .local v9, "n":I
    move-object/from16 v0, p0

    iget v7, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 375
    .local v7, "j":I
    move-object/from16 v0, p0

    iget v8, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    .line 377
    .local v8, "k":I
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-nez v17, :cond_c0

    .line 378
    aget-object v11, v4, v8

    .line 379
    .local v11, "o":Ljava/lang/Object;
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9c

    .line 380
    invoke-virtual {v5}, Lrx/Subscriber;->onCompleted()V

    .line 381
    const/4 v15, 0x1

    .line 382
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_8b
    .catchall {:try_start_49 .. :try_end_8b} :catchall_1b3

    .line 450
    if-nez v15, :cond_12

    .line 451
    monitor-enter p0

    .line 452
    const/16 v17, 0x0

    :try_start_90
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 453
    monitor-exit p0

    goto/16 :goto_12

    :catchall_99
    move-exception v17

    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_90 .. :try_end_9b} :catchall_99

    throw v17

    .line 385
    :cond_9c
    :try_start_9c
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_181

    .line 386
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 387
    const/4 v15, 0x1

    .line 388
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_af
    .catchall {:try_start_9c .. :try_end_af} :catchall_1b3

    .line 450
    if-nez v15, :cond_12

    .line 451
    monitor-enter p0

    .line 452
    const/16 v17, 0x0

    :try_start_b4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 453
    monitor-exit p0

    goto/16 :goto_12

    :catchall_bd
    move-exception v17

    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_b4 .. :try_end_bf} :catchall_bd

    throw v17

    .line 392
    .end local v11    # "o":Ljava/lang/Object;
    :cond_c0
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-lez v17, :cond_181

    .line 393
    const/16 v16, 0x0

    .line 395
    .local v16, "valuesProduced":I
    :goto_c8
    if-ge v7, v14, :cond_151

    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-lez v17, :cond_151

    .line 396
    :try_start_d0
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_1b3

    move-result v17

    if-eqz v17, :cond_e8

    .line 397
    const/4 v15, 0x1

    .line 450
    if-nez v15, :cond_12

    .line 451
    monitor-enter p0

    .line 452
    const/16 v17, 0x0

    :try_start_dc
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 453
    monitor-exit p0

    goto/16 :goto_12

    :catchall_e5
    move-exception v17

    monitor-exit p0
    :try_end_e7
    .catchall {:try_start_dc .. :try_end_e7} :catchall_e5

    throw v17

    .line 400
    :cond_e8
    if-ne v8, v9, :cond_f4

    .line 401
    :try_start_ea
    aget-object v17, v4, v9

    check-cast v17, [Ljava/lang/Object;

    move-object/from16 v0, v17

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 402
    const/4 v8, 0x0

    .line 404
    :cond_f4
    aget-object v11, v4, v8
    :try_end_f6
    .catchall {:try_start_ea .. :try_end_f6} :catchall_1b3

    .line 407
    .restart local v11    # "o":Ljava/lang/Object;
    :try_start_f6
    invoke-virtual {v10, v5, v11}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_145

    .line 408
    const/4 v15, 0x1

    .line 409
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_f6 .. :try_end_100} :catch_111
    .catchall {:try_start_f6 .. :try_end_100} :catchall_1b3

    .line 450
    if-nez v15, :cond_12

    .line 451
    monitor-enter p0

    .line 452
    const/16 v17, 0x0

    :try_start_105
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 453
    monitor-exit p0

    goto/16 :goto_12

    :catchall_10e
    move-exception v17

    monitor-exit p0
    :try_end_110
    .catchall {:try_start_105 .. :try_end_110} :catchall_10e

    throw v17

    .line 412
    :catch_111
    move-exception v6

    .line 413
    .local v6, "err":Ljava/lang/Throwable;
    :try_start_112
    invoke-static {v6}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 414
    const/4 v15, 0x1

    .line 415
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->unsubscribe()V

    .line 416
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_134

    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_134

    .line 417
    invoke-virtual {v10, v11}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_134
    .catchall {:try_start_112 .. :try_end_134} :catchall_1b3

    .line 450
    :cond_134
    if-nez v15, :cond_12

    .line 451
    monitor-enter p0

    .line 452
    const/16 v17, 0x0

    :try_start_139
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 453
    monitor-exit p0

    goto/16 :goto_12

    :catchall_142
    move-exception v17

    monitor-exit p0
    :try_end_144
    .catchall {:try_start_139 .. :try_end_144} :catchall_142

    throw v17

    .line 422
    .end local v6    # "err":Ljava/lang/Throwable;
    :cond_145
    add-int/lit8 v8, v8, 0x1

    .line 423
    add-int/lit8 v7, v7, 0x1

    .line 424
    const-wide/16 v18, 0x1

    sub-long v12, v12, v18

    .line 425
    add-int/lit8 v16, v16, 0x1

    .line 426
    goto/16 :goto_c8

    .line 428
    .end local v11    # "o":Ljava/lang/Object;
    :cond_151
    :try_start_151
    invoke-virtual {v5}, Lrx/Subscriber;->isUnsubscribed()Z
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_1b3

    move-result v17

    if-eqz v17, :cond_169

    .line 429
    const/4 v15, 0x1

    .line 450
    if-nez v15, :cond_12

    .line 451
    monitor-enter p0

    .line 452
    const/16 v17, 0x0

    :try_start_15d
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 453
    monitor-exit p0

    goto/16 :goto_12

    :catchall_166
    move-exception v17

    monitor-exit p0
    :try_end_168
    .catchall {:try_start_15d .. :try_end_168} :catchall_166

    throw v17

    .line 433
    :cond_169
    :try_start_169
    move-object/from16 v0, p0

    iput v7, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 434
    move-object/from16 v0, p0

    iput v8, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    .line 435
    move-object/from16 v0, p0

    iput-object v4, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 436
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/CachedObservable$ReplayProducer;->produced(J)J

    .line 440
    .end local v4    # "b":[Ljava/lang/Object;
    .end local v7    # "j":I
    .end local v8    # "k":I
    .end local v9    # "n":I
    .end local v16    # "valuesProduced":I
    :cond_181
    monitor-enter p0
    :try_end_182
    .catchall {:try_start_169 .. :try_end_182} :catchall_1b3

    .line 441
    :try_start_182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1a5

    .line 442
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 443
    const/4 v15, 0x1

    .line 444
    monitor-exit p0
    :try_end_194
    .catchall {:try_start_182 .. :try_end_194} :catchall_1b0

    .line 450
    if-nez v15, :cond_12

    .line 451
    monitor-enter p0

    .line 452
    const/16 v17, 0x0

    :try_start_199
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 453
    monitor-exit p0

    goto/16 :goto_12

    :catchall_1a2
    move-exception v17

    monitor-exit p0
    :try_end_1a4
    .catchall {:try_start_199 .. :try_end_1a4} :catchall_1a2

    throw v17

    .line 446
    :cond_1a5
    const/16 v17, 0x0

    :try_start_1a7
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 447
    monitor-exit p0

    goto/16 :goto_2b

    :catchall_1b0
    move-exception v17

    monitor-exit p0
    :try_end_1b2
    .catchall {:try_start_1a7 .. :try_end_1b2} :catchall_1b0

    :try_start_1b2
    throw v17
    :try_end_1b3
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b3

    .line 450
    .end local v5    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v10    # "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    .end local v12    # "r":J
    .end local v14    # "s":I
    :catchall_1b3
    move-exception v17

    if-nez v15, :cond_1c0

    .line 451
    monitor-enter p0

    .line 452
    const/16 v18, 0x0

    :try_start_1b9
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 453
    monitor-exit p0
    :try_end_1c0
    .catchall {:try_start_1b9 .. :try_end_1c0} :catchall_1c1

    :cond_1c0
    throw v17

    :catchall_1c1
    move-exception v17

    :try_start_1c2
    monitor-exit p0
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_1c1

    throw v17
.end method

.method public request(J)V
    .registers 12
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    const-wide/16 v6, 0x0

    .line 298
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    .line 299
    .local v0, "r":J
    cmp-long v4, v0, v6

    if-gez v4, :cond_b

    .line 308
    :goto_a
    return-void

    .line 302
    :cond_b
    add-long v2, v0, p1

    .line 303
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_16

    .line 304
    const-wide v2, 0x7fffffffffffffffL

    .line 306
    :cond_16
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/CachedObservable$ReplayProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->replay()V

    goto :goto_a
.end method

.method public unsubscribe()V
    .registers 7

    .prologue
    .local p0, "this":Lrx/internal/operators/CachedObservable$ReplayProducer;, "Lrx/internal/operators/CachedObservable$ReplayProducer<TT;>;"
    const-wide/16 v4, 0x0

    .line 327
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    .line 328
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_19

    .line 329
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/CachedObservable$ReplayProducer;->getAndSet(J)J

    move-result-wide v0

    .line 330
    cmp-long v2, v0, v4

    if-ltz v2, :cond_19

    .line 331
    iget-object v2, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v2, p0}, Lrx/internal/operators/CachedObservable$CacheState;->removeProducer(Lrx/internal/operators/CachedObservable$ReplayProducer;)V

    .line 334
    :cond_19
    return-void
.end method
