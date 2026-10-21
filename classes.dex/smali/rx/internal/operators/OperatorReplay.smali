###### Class rx.internal.operators.OperatorReplay (rx.internal.operators.OperatorReplay)
.class public final Lrx/internal/operators/OperatorReplay;
.super Lrx/observables/ConnectableObservable;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$Node;,
        Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$ReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$InnerProducer;,
        Lrx/internal/operators/OperatorReplay$ReplaySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/ConnectableObservable",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_UNBOUNDED_FACTORY:Lrx/functions/Func0;


# instance fields
.field final bufferFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber",
            "<TT;>;>;"
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lrx/internal/operators/OperatorReplay$1;

    invoke-direct {v0}, Lrx/internal/operators/OperatorReplay$1;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorReplay;->DEFAULT_UNBOUNDED_FACTORY:Lrx/functions/Func0;

    return-void
.end method

.method private constructor <init>(Lrx/Observable$OnSubscribe;Lrx/Observable;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber",
            "<TT;>;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lrx/internal/operators/OperatorReplay;, "Lrx/internal/operators/OperatorReplay<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;>;"
    .local p4, "bufferFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;>;"
    invoke-direct {p0, p1}, Lrx/observables/ConnectableObservable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 252
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay;->source:Lrx/Observable;

    .line 253
    iput-object p3, p0, Lrx/internal/operators/OperatorReplay;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    iput-object p4, p0, Lrx/internal/operators/OperatorReplay;->bufferFactory:Lrx/functions/Func0;

    .line 255
    return-void
.end method

.method public static create(Lrx/Observable;)Lrx/observables/ConnectableObservable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorReplay;->DEFAULT_UNBOUNDED_FACTORY:Lrx/functions/Func0;

    invoke-static {p0, v0}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/Observable;I)Lrx/observables/ConnectableObservable;
    .registers 3
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;I)",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_a

    .line 146
    invoke-static {p0}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    .line 148
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lrx/internal/operators/OperatorReplay$5;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorReplay$5;-><init>(I)V

    invoke-static {p0, v0}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    goto :goto_9
.end method

.method public static create(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .registers 12
    .param p1, "maxAge"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;I)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;I)Lrx/observables/ConnectableObservable;
    .registers 9
    .param p1, "maxAge"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .param p5, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            "I)",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 184
    .local v0, "maxAgeInMillis":J
    new-instance v2, Lrx/internal/operators/OperatorReplay$6;

    invoke-direct {v2, p5, v0, v1, p4}, Lrx/internal/operators/OperatorReplay$6;-><init>(IJLrx/Scheduler;)V

    invoke-static {p0, v2}, Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/ConnectableObservable;

    move-result-object v2

    return-object v2
.end method

.method static create(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/ConnectableObservable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;>;)",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "bufferFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 202
    .local v0, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;>;"
    new-instance v1, Lrx/internal/operators/OperatorReplay$7;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OperatorReplay$7;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V

    .line 246
    .local v1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorReplay;

    invoke-direct {v2, v1, p0, v0, p1}, Lrx/internal/operators/OperatorReplay;-><init>(Lrx/Observable$OnSubscribe;Lrx/Observable;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V

    return-object v2
.end method

.method public static multicastSelector(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/observables/ConnectableObservable",
            "<TU;>;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TU;>;+",
            "Lrx/Observable",
            "<TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "connectableFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/observables/ConnectableObservable<TU;>;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TU;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorReplay$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorReplay$2;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static observeOn(Lrx/observables/ConnectableObservable;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .registers 5
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "co":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/observables/ConnectableObservable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 96
    .local v0, "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorReplay$3;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorReplay$3;-><init>(Lrx/Observable;)V

    .line 116
    .local v1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v2, Lrx/internal/operators/OperatorReplay$4;

    invoke-direct {v2, v1, p0}, Lrx/internal/operators/OperatorReplay$4;-><init>(Lrx/Observable$OnSubscribe;Lrx/observables/ConnectableObservable;)V

    return-object v2
.end method


# virtual methods
.method public connect(Lrx/functions/Action1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay;, "Lrx/internal/operators/OperatorReplay<TT;>;"
    .local p1, "connection":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 264
    :cond_2
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    .line 266
    .local v1, "ps":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 268
    :cond_12
    new-instance v2, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->bufferFactory:Lrx/functions/Func0;

    invoke-interface {v3}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-direct {v2, v3}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;-><init>(Lrx/internal/operators/OperatorReplay$ReplayBuffer;)V

    .line 270
    .local v2, "u":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->init()V

    .line 272
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    move-object v1, v2

    .line 281
    .end local v2    # "u":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    :cond_2b
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_46

    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 297
    .local v0, "doConnect":Z
    :goto_3b
    invoke-interface {p1, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 298
    if-eqz v0, :cond_45

    .line 299
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay;->source:Lrx/Observable;

    invoke-virtual {v3, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 301
    :cond_45
    return-void

    .end local v0    # "doConnect":Z
    :cond_46
    move v0, v4

    .line 281
    goto :goto_3b
.end method

###### Class rx.internal.operators.OperatorReplay.AnonymousClass1 (rx.internal.operators.OperatorReplay$1)
.class final Lrx/internal/operators/OperatorReplay$1;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 43
    new-instance v0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;-><init>(I)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorReplay.AnonymousClass2 (rx.internal.operators.OperatorReplay$2)
.class final Lrx/internal/operators/OperatorReplay$2;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->multicastSelector(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$connectableFactory:Lrx/functions/Func0;

.field final synthetic val$selector:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;)V
    .registers 3

    .prologue
    .line 61
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$2;->val$connectableFactory:Lrx/functions/Func0;

    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$2;->val$selector:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$2;->val$connectableFactory:Lrx/functions/Func0;

    invoke-interface {v3}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/observables/ConnectableObservable;

    .line 68
    .local v0, "co":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TU;>;"
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$2;->val$selector:Lrx/functions/Func1;

    invoke-interface {v3, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observable;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_1c

    .line 74
    .local v2, "observable":Lrx/Observable;, "Lrx/Observable<TR;>;"
    invoke-virtual {v2, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 76
    new-instance v3, Lrx/internal/operators/OperatorReplay$2$1;

    invoke-direct {v3, p0, p1}, Lrx/internal/operators/OperatorReplay$2$1;-><init>(Lrx/internal/operators/OperatorReplay$2;Lrx/Subscriber;)V

    invoke-virtual {v0, v3}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V

    .line 82
    .end local v0    # "co":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<TU;>;"
    .end local v2    # "observable":Lrx/Observable;, "Lrx/Observable<TR;>;"
    :goto_1b
    return-void

    .line 69
    :catch_1c
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_1b
.end method

###### Class rx.internal.operators.OperatorReplay.AnonymousClass2.AnonymousClass1 (rx.internal.operators.OperatorReplay$2$1)
.class Lrx/internal/operators/OperatorReplay$2$1;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay$2;->call(Lrx/Subscriber;)V
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
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorReplay$2;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorReplay$2;Lrx/Subscriber;)V
    .registers 3

    .prologue
    .line 76
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$2$1;->this$0:Lrx/internal/operators/OperatorReplay$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$2$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Lrx/Subscription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$2$1;->call(Lrx/Subscription;)V

    return-void
.end method

.method public call(Lrx/Subscription;)V
    .registers 3
    .param p1, "t"    # Lrx/Subscription;

    .prologue
    .line 79
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$2$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 80
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.AnonymousClass3 (rx.internal.operators.OperatorReplay$3)
.class final Lrx/internal/operators/OperatorReplay$3;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->observeOn(Lrx/observables/ConnectableObservable;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$observable:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$3;->val$observable:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$3;->call(Lrx/Subscriber;)V

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
    .line 100
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$3;->val$observable:Lrx/Observable;

    new-instance v1, Lrx/internal/operators/OperatorReplay$3$1;

    invoke-direct {v1, p0, p1, p1}, Lrx/internal/operators/OperatorReplay$3$1;-><init>(Lrx/internal/operators/OperatorReplay$3;Lrx/Subscriber;Lrx/Subscriber;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 114
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.AnonymousClass3.AnonymousClass1 (rx.internal.operators.OperatorReplay$3$1)
.class Lrx/internal/operators/OperatorReplay$3$1;
.super Lrx/Subscriber;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay$3;->call(Lrx/Subscriber;)V
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
.field final synthetic this$0:Lrx/internal/operators/OperatorReplay$3;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorReplay$3;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 100
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$3$1;->this$0:Lrx/internal/operators/OperatorReplay$3;

    iput-object p3, p0, Lrx/internal/operators/OperatorReplay$3$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$3$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 112
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 107
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$3$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 108
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
    .line 103
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$3$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.AnonymousClass4 (rx.internal.operators.OperatorReplay$4)
.class final Lrx/internal/operators/OperatorReplay$4;
.super Lrx/observables/ConnectableObservable;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->observeOn(Lrx/observables/ConnectableObservable;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/observables/ConnectableObservable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$co:Lrx/observables/ConnectableObservable;


# direct methods
.method constructor <init>(Lrx/Observable$OnSubscribe;Lrx/observables/ConnectableObservable;)V
    .registers 3

    .prologue
    .line 116
    .local p1, "x0":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$4;->val$co:Lrx/observables/ConnectableObservable;

    invoke-direct {p0, p1}, Lrx/observables/ConnectableObservable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-void
.end method


# virtual methods
.method public connect(Lrx/functions/Action1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "connection":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$4;->val$co:Lrx/observables/ConnectableObservable;

    invoke-virtual {v0, p1}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V

    .line 120
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.AnonymousClass5 (rx.internal.operators.OperatorReplay$5)
.class final Lrx/internal/operators/OperatorReplay$5;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;I)Lrx/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$bufferSize:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 148
    iput p1, p0, Lrx/internal/operators/OperatorReplay$5;->val$bufferSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$5;->call()Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/internal/operators/OperatorReplay$ReplayBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;

    iget v1, p0, Lrx/internal/operators/OperatorReplay$5;->val$bufferSize:I

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;-><init>(I)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorReplay.AnonymousClass6 (rx.internal.operators.OperatorReplay$6)
.class final Lrx/internal/operators/OperatorReplay$6;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;I)Lrx/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$bufferSize:I

.field final synthetic val$maxAgeInMillis:J

.field final synthetic val$scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(IJLrx/Scheduler;)V
    .registers 5

    .prologue
    .line 184
    iput p1, p0, Lrx/internal/operators/OperatorReplay$6;->val$bufferSize:I

    iput-wide p2, p0, Lrx/internal/operators/OperatorReplay$6;->val$maxAgeInMillis:J

    iput-object p4, p0, Lrx/internal/operators/OperatorReplay$6;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$6;->call()Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/internal/operators/OperatorReplay$ReplayBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;

    iget v1, p0, Lrx/internal/operators/OperatorReplay$6;->val$bufferSize:I

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$6;->val$maxAgeInMillis:J

    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$6;->val$scheduler:Lrx/Scheduler;

    invoke-direct {v0, v1, v2, v3, v4}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;-><init>(IJLrx/Scheduler;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorReplay.AnonymousClass7 (rx.internal.operators.OperatorReplay$7)
.class final Lrx/internal/operators/OperatorReplay$7;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->create(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$bufferFactory:Lrx/functions/Func0;

.field final synthetic val$curr:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V
    .registers 3

    .prologue
    .line 202
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$7;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$7;->val$bufferFactory:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 202
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$7;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$7;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    .line 211
    .local v1, "r":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    if-nez v1, :cond_23

    .line 213
    new-instance v2, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$7;->val$bufferFactory:Lrx/functions/Func0;

    invoke-interface {v3}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-direct {v2, v3}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;-><init>(Lrx/internal/operators/OperatorReplay$ReplayBuffer;)V

    .line 215
    .local v2, "u":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->init()V

    .line 217
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$7;->val$curr:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    move-object v1, v2

    .line 227
    .end local v2    # "u":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    :cond_23
    new-instance v0, Lrx/internal/operators/OperatorReplay$InnerProducer;

    invoke-direct {v0, v1, p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;-><init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;Lrx/Subscriber;)V

    .line 231
    .local v0, "inner":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    invoke-virtual {v1, v0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->add(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z

    .line 234
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 237
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v3, v0}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 241
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 244
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.BoundedReplayBuffer (rx.internal.operators.OperatorReplay$BoundedReplayBuffer)
.class Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/OperatorReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/operators/OperatorReplay$Node;",
        ">;",
        "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field index:J

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field size:I

.field tail:Lrx/internal/operators/OperatorReplay$Node;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 968
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 969
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    .line 970
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 971
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 972
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 973
    return-void
.end method


# virtual methods
.method final addLast(Lrx/internal/operators/OperatorReplay$Node;)V
    .registers 3
    .param p1, "n"    # Lrx/internal/operators/OperatorReplay$Node;

    .prologue
    .line 980
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorReplay$Node;->set(Ljava/lang/Object;)V

    .line 981
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 982
    iget v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    .line 983
    return-void
.end method

.method final collect(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1168
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->getInitialHead()Lrx/internal/operators/OperatorReplay$Node;

    move-result-object v0

    .line 1170
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    :goto_4
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1171
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    if-eqz v1, :cond_22

    .line 1172
    iget-object v2, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    .line 1173
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1174
    .local v3, "v":Ljava/lang/Object;
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1183
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_22
    return-void

    .line 1177
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_23
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1178
    move-object v0, v1

    .line 1182
    goto :goto_4
.end method

.method public final complete()V
    .registers 7

    .prologue
    .line 1044
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1045
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 1046
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1047
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 1048
    return-void
.end method

.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1141
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final error(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1036
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1037
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 1038
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1039
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 1040
    return-void
.end method

.method getInitialHead()Lrx/internal/operators/OperatorReplay$Node;
    .registers 2

    .prologue
    .line 1023
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    return-object v0
.end method

.method hasCompleted()Z
    .registers 3

    .prologue
    .line 1188
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v1, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method hasError()Z
    .registers 3

    .prologue
    .line 1185
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v1, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1151
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final next(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1028
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1029
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->index:J

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;J)V

    .line 1030
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1031
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncate()V

    .line 1032
    return-void
.end method

.method final removeFirst()V
    .registers 5

    .prologue
    .line 988
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 989
    .local v0, "head":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 990
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    if-nez v1, :cond_16

    .line 991
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Empty list!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 993
    :cond_16
    iget v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    .line 996
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 997
    return-void
.end method

.method final removeSome(I)V
    .registers 4
    .param p1, "n"    # I

    .prologue
    .line 999
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1000
    .local v0, "head":Lrx/internal/operators/OperatorReplay$Node;
    :goto_6
    if-lez p1, :cond_17

    .line 1001
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "head":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1002
    .restart local v0    # "head":Lrx/internal/operators/OperatorReplay$Node;
    add-int/lit8 p1, p1, -0x1

    .line 1003
    iget v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    goto :goto_6

    .line 1006
    :cond_17
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1007
    return-void
.end method

.method public final replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v12, 0x0

    .line 1052
    monitor-enter p1

    .line 1053
    :try_start_2
    iget-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    if-eqz v9, :cond_b

    .line 1054
    const/4 v9, 0x1

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 1055
    monitor-exit p1

    .line 1126
    :cond_a
    :goto_a
    return-void

    .line 1057
    :cond_b
    const/4 v9, 0x1

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 1058
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_7d

    .line 1060
    :goto_f
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1064
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->index()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/internal/operators/OperatorReplay$Node;

    .line 1065
    .local v4, "node":Lrx/internal/operators/OperatorReplay$Node;
    if-nez v4, :cond_28

    .line 1066
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->getInitialHead()Lrx/internal/operators/OperatorReplay$Node;

    move-result-object v4

    .line 1067
    iput-object v4, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1073
    iget-wide v10, v4, Lrx/internal/operators/OperatorReplay$Node;->index:J

    invoke-virtual {p1, v10, v11}, Lrx/internal/operators/OperatorReplay$InnerProducer;->addTotalRequested(J)V

    .line 1076
    :cond_28
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1080
    iget-object v0, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    .line 1081
    .local v0, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    if-eqz v0, :cond_a

    .line 1085
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v6

    .line 1086
    .local v6, "r":J
    const-wide/16 v2, 0x0

    .line 1088
    .local v2, "e":J
    :cond_38
    cmp-long v9, v2, v6

    if-eqz v9, :cond_8b

    .line 1089
    invoke-virtual {v4}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/internal/operators/OperatorReplay$Node;

    .line 1090
    .local v8, "v":Lrx/internal/operators/OperatorReplay$Node;
    if-eqz v8, :cond_8b

    .line 1091
    iget-object v9, v8, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1093
    .local v5, "o":Ljava/lang/Object;
    :try_start_4a
    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v0, v5}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_80

    .line 1094
    const/4 v9, 0x0

    iput-object v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_a

    .line 1097
    :catch_56
    move-exception v1

    .line 1098
    .local v1, "err":Ljava/lang/Throwable;
    iput-object v12, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1099
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1100
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->unsubscribe()V

    .line 1101
    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v5}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v5}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1102
    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v9, v5}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v1, v9}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v0, v9}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 1058
    .end local v0    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v1    # "err":Ljava/lang/Throwable;
    .end local v2    # "e":J
    .end local v4    # "node":Lrx/internal/operators/OperatorReplay$Node;
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "r":J
    .end local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :catchall_7d
    move-exception v9

    :try_start_7e
    monitor-exit p1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v9

    .line 1106
    .restart local v0    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v2    # "e":J
    .restart local v4    # "node":Lrx/internal/operators/OperatorReplay$Node;
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v6    # "r":J
    .restart local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :cond_80
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 1107
    move-object v4, v8

    .line 1111
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_38

    goto :goto_a

    .line 1116
    .end local v5    # "o":Ljava/lang/Object;
    .end local v8    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :cond_8b
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-eqz v9, :cond_9f

    .line 1117
    iput-object v4, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1118
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v9, v6, v10

    if-eqz v9, :cond_9f

    .line 1119
    invoke-virtual {p1, v2, v3}, Lrx/internal/operators/OperatorReplay$InnerProducer;->produced(J)J

    .line 1123
    :cond_9f
    monitor-enter p1

    .line 1124
    :try_start_a0
    iget-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    if-nez v9, :cond_ad

    .line 1125
    const/4 v9, 0x0

    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 1126
    monitor-exit p1

    goto/16 :goto_a

    .line 1129
    :catchall_aa
    move-exception v9

    monitor-exit p1
    :try_end_ac
    .catchall {:try_start_a0 .. :try_end_ac} :catchall_aa

    throw v9

    .line 1128
    :cond_ad
    const/4 v9, 0x0

    :try_start_ae
    iput-boolean v9, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 1129
    monitor-exit p1
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_aa

    goto/16 :goto_f
.end method

.method final setFirst(Lrx/internal/operators/OperatorReplay$Node;)V
    .registers 2
    .param p1, "n"    # Lrx/internal/operators/OperatorReplay$Node;

    .prologue
    .line 1013
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 1014
    return-void
.end method

.method truncate()V
    .registers 1

    .prologue
    .line 1159
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method

.method truncateFinal()V
    .registers 1

    .prologue
    .line 1166
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.InnerProducer (rx.internal.operators.OperatorReplay$InnerProducer)
.class final Lrx/internal/operators/OperatorReplay$InnerProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerProducer"
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
.field static final UNSUBSCRIBED:J = -0x8000000000000000L

.field private static final serialVersionUID:J = -0x3dcf6c3b2e70d8baL


# instance fields
.field child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field index:Ljava/lang/Object;

.field missed:Z

.field final parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber",
            "<TT;>;"
        }
    .end annotation
.end field

.field final totalRequested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$ReplaySubscriber",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 671
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    .line 672
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    .line 673
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 674
    return-void
.end method


# virtual methods
.method addTotalRequested(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .line 725
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 726
    .local v0, "r":J
    add-long v2, v0, p1

    .line 727
    .local v2, "u":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_13

    .line 728
    const-wide v2, 0x7fffffffffffffffL

    .line 730
    :cond_13
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 731
    return-void
.end method

.method index()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    return-object v0
.end method

.method public isUnsubscribed()Z
    .registers 5

    .prologue
    .line 770
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

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

.method public produced(J)J
    .registers 14
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    .line 743
    cmp-long v6, p1, v8

    if-gtz v6, :cond_10

    .line 744
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cant produce zero or less"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 748
    :cond_10
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 750
    .local v0, "r":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_1a

    move-wide v2, v4

    .line 762
    :goto_19
    return-wide v2

    .line 754
    :cond_1a
    sub-long v2, v0, p1

    .line 756
    .local v2, "u":J
    cmp-long v6, v2, v8

    if-gez v6, :cond_49

    .line 757
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More produced ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") than requested ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 760
    :cond_49
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$InnerProducer;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_19
.end method

.method public request(J)V
    .registers 12
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/16 v6, 0x0

    .line 679
    cmp-long v4, p1, v6

    if-gez v4, :cond_7

    .line 712
    :cond_6
    :goto_6
    return-void

    .line 687
    :cond_7
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 689
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-eqz v4, :cond_6

    .line 693
    cmp-long v4, v0, v6

    if-ltz v4, :cond_19

    cmp-long v4, p1, v6

    if-eqz v4, :cond_6

    .line 697
    :cond_19
    add-long v2, v0, p1

    .line 699
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_24

    .line 701
    const-wide v2, 0x7fffffffffffffffL

    .line 704
    :cond_24
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$InnerProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 706
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorReplay$InnerProducer;->addTotalRequested(J)V

    .line 709
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    invoke-virtual {v4, p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->manageRequests(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 711
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-object v4, v4, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v4, p0}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    goto :goto_6
.end method

.method public unsubscribe()V
    .registers 7

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 774
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 776
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1f

    .line 781
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorReplay$InnerProducer;->getAndSet(J)J

    move-result-wide v0

    .line 783
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1f

    .line 785
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    invoke-virtual {v2, p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->remove(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 790
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    invoke-virtual {v2, p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->manageRequests(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 792
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    .line 795
    :cond_1f
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.Node (rx.internal.operators.OperatorReplay$Node)
.class final Lrx/internal/operators/OperatorReplay$Node;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/operators/OperatorReplay$Node;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x367ac732fab94eaL


# instance fields
.field final index:J

.field final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "index"    # J

    .prologue
    .line 945
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 946
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    .line 947
    iput-wide p2, p0, Lrx/internal/operators/OperatorReplay$Node;->index:J

    .line 948
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.ReplayBuffer (rx.internal.operators.OperatorReplay$ReplayBuffer)
.class interface abstract Lrx/internal/operators/OperatorReplay$ReplayBuffer;
.super Ljava/lang/Object;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
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

.method public abstract error(Ljava/lang/Throwable;)V
.end method

.method public abstract next(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation
.end method

###### Class rx.internal.operators.OperatorReplay.ReplaySubscriber (rx.internal.operators.OperatorReplay$ReplaySubscriber)
.class final Lrx/internal/operators/OperatorReplay$ReplaySubscriber;
.super Lrx/Subscriber;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

.field static final TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;


# instance fields
.field final buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;"
        }
    .end annotation
.end field

.field coordinateAll:Z

.field coordinationQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field emitting:Z

.field maxChildRequested:J

.field maxUpstreamRequested:J

.field missed:Z

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile producer:Lrx/Producer;

.field final producers:Lrx/internal/util/OpenHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/OpenHashSet",
            "<",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;"
        }
    .end annotation
.end field

.field producersCacheVersion:J

.field volatile producersVersion:J

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile terminated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 313
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 315
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    return-void
.end method

.method public constructor <init>(Lrx/internal/operators/OperatorReplay$ReplayBuffer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "buffer":Lrx/internal/operators/OperatorReplay$ReplayBuffer;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 353
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    .line 355
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 356
    new-instance v0, Lrx/internal/util/OpenHashSet;

    invoke-direct {v0}, Lrx/internal/util/OpenHashSet;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    .line 357
    sget-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 358
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 361
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->request(J)V

    .line 362
    return-void
.end method


# virtual methods
.method add(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v0, 0x0

    .line 392
    if-nez p1, :cond_9

    .line 393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 395
    :cond_9
    iget-boolean v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-eqz v1, :cond_e

    .line 406
    :goto_d
    return v0

    .line 398
    :cond_e
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    monitor-enter v1

    .line 399
    :try_start_11
    iget-boolean v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-eqz v2, :cond_1a

    .line 400
    monitor-exit v1

    goto :goto_d

    .line 405
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_17

    throw v0

    .line 403
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    invoke-virtual {v0, p1}, Lrx/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    .line 404
    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    .line 405
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_17

    .line 406
    const/4 v0, 0x1

    goto :goto_d
.end method

.method copyProducers()[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    monitor-enter v4

    .line 565
    :try_start_3
    iget-object v3, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    invoke-virtual {v3}, Lrx/internal/util/OpenHashSet;->values()[Ljava/lang/Object;

    move-result-object v0

    .line 566
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 568
    .local v1, "n":I
    new-array v2, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 569
    .local v2, "result":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    monitor-exit v4

    return-object v2

    .line 571
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "n":I
    .end local v2    # "result":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :catchall_13
    move-exception v3

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v3
.end method

.method init()V
    .registers 2

    .prologue
    .line 365
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;-><init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->add(Lrx/Subscription;)V

    .line 384
    return-void
.end method

.method makeRequest(JJ)V
    .registers 16
    .param p1, "maxTotalRequests"    # J
    .param p3, "previousTotalRequests"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    const-wide/16 v8, 0x0

    .line 575
    iget-wide v6, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 576
    .local v6, "ur":J
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 578
    .local v2, "p":Lrx/Producer;
    sub-long v0, p1, p3

    .line 579
    .local v0, "diff":J
    cmp-long v3, v0, v8

    if-eqz v3, :cond_2e

    .line 580
    iput-wide p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    .line 581
    if-eqz v2, :cond_20

    .line 582
    cmp-long v3, v6, v8

    if-eqz v3, :cond_1c

    .line 583
    iput-wide v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 584
    add-long v8, v6, v0

    invoke-interface {v2, v8, v9}, Lrx/Producer;->request(J)V

    .line 603
    :cond_1b
    :goto_1b
    return-void

    .line 586
    :cond_1c
    invoke-interface {v2, v0, v1}, Lrx/Producer;->request(J)V

    goto :goto_1b

    .line 590
    :cond_20
    add-long v4, v6, v0

    .line 591
    .local v4, "u":J
    cmp-long v3, v4, v8

    if-gez v3, :cond_2b

    .line 592
    const-wide v4, 0x7fffffffffffffffL

    .line 594
    :cond_2b
    iput-wide v4, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    goto :goto_1b

    .line 598
    .end local v4    # "u":J
    :cond_2e
    cmp-long v3, v6, v8

    if-eqz v3, :cond_1b

    if-eqz v2, :cond_1b

    .line 599
    iput-wide v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxUpstreamRequested:J

    .line 601
    invoke-interface {v2, v6, v7}, Lrx/Producer;->request(J)V

    goto :goto_1b
.end method

.method manageRequests(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 532
    :cond_6
    :goto_6
    return-void

    .line 485
    :cond_7
    monitor-enter p0

    .line 486
    :try_start_8
    iget-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    if-eqz v11, :cond_28

    .line 487
    if-eqz p1, :cond_24

    .line 488
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinationQueue:Ljava/util/List;

    .line 489
    .local v5, "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    if-nez v5, :cond_19

    .line 490
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .restart local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    iput-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinationQueue:Ljava/util/List;

    .line 493
    :cond_19
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    :goto_1c
    const/4 v11, 0x1

    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    .line 498
    monitor-exit p0

    goto :goto_6

    .line 501
    :catchall_21
    move-exception v11

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v11

    .line 495
    :cond_24
    const/4 v11, 0x1

    :try_start_25
    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinateAll:Z

    goto :goto_1c

    .line 500
    :cond_28
    const/4 v11, 0x1

    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    .line 501
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_21

    .line 503
    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    .line 506
    .local v8, "ri":J
    if-eqz p1, :cond_50

    .line 507
    iget-object v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 519
    .local v6, "maxTotalRequested":J
    :cond_3a
    invoke-virtual {p0, v6, v7, v8, v9}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->makeRequest(JJ)V

    .line 523
    :goto_3d
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_6

    .line 529
    monitor-enter p0

    .line 530
    :try_start_44
    iget-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    if-nez v11, :cond_6b

    .line 531
    const/4 v11, 0x0

    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->emitting:Z

    .line 532
    monitor-exit p0

    goto :goto_6

    .line 539
    :catchall_4d
    move-exception v11

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_4d

    throw v11

    .line 509
    .end local v6    # "maxTotalRequested":J
    :cond_50
    move-wide v6, v8

    .line 511
    .restart local v6    # "maxTotalRequested":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->copyProducers()[Lrx/internal/operators/OperatorReplay$InnerProducer;

    move-result-object v0

    .line 512
    .local v0, "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    move-object v2, v0

    .local v2, "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_58
    if-ge v3, v4, :cond_3a

    aget-object v10, v2, v3

    .line 513
    .local v10, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v10, :cond_68

    .line 514
    iget-object v11, v10, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 512
    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 534
    .end local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .end local v2    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_6b
    const/4 v11, 0x0

    :try_start_6c
    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->missed:Z

    .line 535
    iget-object v5, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinationQueue:Ljava/util/List;

    .line 536
    .restart local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    const/4 v11, 0x0

    iput-object v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinationQueue:Ljava/util/List;

    .line 537
    iget-boolean v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinateAll:Z

    .line 538
    .local v1, "all":Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->coordinateAll:Z

    .line 539
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_6c .. :try_end_79} :catchall_4d

    .line 541
    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->maxChildRequested:J

    .line 542
    move-wide v6, v8

    .line 544
    if-eqz v5, :cond_99

    .line 545
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 546
    .restart local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v11, v10, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 547
    goto :goto_82

    .line 550
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_99
    if-eqz v1, :cond_b5

    .line 551
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->copyProducers()[Lrx/internal/operators/OperatorReplay$InnerProducer;

    move-result-object v0

    .line 552
    .restart local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    move-object v2, v0

    .restart local v2    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v4, v2

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_a2
    if-ge v3, v4, :cond_b5

    aget-object v10, v2, v3

    .line 553
    .restart local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v10, :cond_b2

    .line 554
    iget-object v11, v10, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 552
    :cond_b2
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 559
    .end local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .end local v2    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_b5
    invoke-virtual {p0, v6, v7, v8, v9}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->makeRequest(JJ)V

    goto :goto_3d
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 466
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_12

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    .line 469
    :try_start_7
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->complete()V

    .line 470
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 472
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    .line 475
    :cond_12
    return-void

    .line 472
    :catchall_13
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 452
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_12

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    .line 455
    :try_start_7
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 456
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 458
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    .line 461
    :cond_12
    return-void

    .line 458
    :catchall_13
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->done:Z

    if-nez v0, :cond_c

    .line 444
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0, p1}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 445
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V

    .line 447
    :cond_c
    return-void
.end method

.method remove(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-eqz v0, :cond_5

    .line 428
    :goto_4
    return-void

    .line 418
    :cond_5
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    monitor-enter v1

    .line 419
    :try_start_8
    iget-boolean v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-eqz v0, :cond_11

    .line 420
    monitor-exit v1

    goto :goto_4

    .line 427
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v0

    .line 422
    :cond_11
    :try_start_11
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    invoke-virtual {v0, p1}, Lrx/internal/util/OpenHashSet;->remove(Ljava/lang/Object;)Z

    .line 423
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    invoke-virtual {v0}, Lrx/internal/util/OpenHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 424
    sget-object v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 426
    :cond_22
    iget-wide v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    .line 427
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_e

    goto :goto_4
.end method

.method replay()V
    .registers 13

    .prologue
    .line 610
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 611
    .local v6, "pc":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCacheVersion:J

    iget-wide v10, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_27

    .line 612
    iget-object v9, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    monitor-enter v9

    .line 613
    :try_start_d
    iget-object v6, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 616
    iget-object v8, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    invoke-virtual {v8}, Lrx/internal/util/OpenHashSet;->values()[Ljava/lang/Object;

    move-result-object v0

    .line 617
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    .line 618
    .local v5, "n":I
    array-length v8, v6

    if-eq v8, v5, :cond_1d

    .line 619
    new-array v6, v5, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 620
    iput-object v6, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 622
    :cond_1d
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v8, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    iget-wide v10, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    iput-wide v10, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersCacheVersion:J

    .line 624
    monitor-exit v9
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_38

    .line 626
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v5    # "n":I
    :cond_27
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->buffer:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    .line 627
    .local v2, "b":Lrx/internal/operators/OperatorReplay$ReplayBuffer;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    move-object v1, v6

    .local v1, "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2c
    if-ge v3, v4, :cond_3b

    aget-object v7, v1, v3

    .line 628
    .local v7, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v7, :cond_35

    .line 629
    invoke-interface {v2, v7}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 627
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 624
    .end local v1    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .end local v2    # "b":Lrx/internal/operators/OperatorReplay$ReplayBuffer;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :catchall_38
    move-exception v8

    :try_start_39
    monitor-exit v9
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v8

    .line 632
    .restart local v1    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .restart local v2    # "b":Lrx/internal/operators/OperatorReplay$ReplayBuffer;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_3b
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 5
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 432
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 433
    .local v0, "p0":Lrx/Producer;
    if-eqz v0, :cond_c

    .line 434
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only a single producer can be set on a Subscriber."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_c
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producer:Lrx/Producer;

    .line 437
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->manageRequests(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 438
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->replay()V

    .line 439
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.ReplaySubscriber.AnonymousClass1 (rx.internal.operators.OperatorReplay$ReplaySubscriber$1)
.class Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorReplay$ReplaySubscriber;)V
    .registers 2

    .prologue
    .line 365
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 7

    .prologue
    .line 368
    .local p0, "this":Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-nez v0, :cond_27

    .line 369
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-object v1, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    monitor-enter v1

    .line 370
    :try_start_b
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    if-nez v0, :cond_26

    .line 371
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producers:Lrx/internal/util/OpenHashSet;

    invoke-virtual {v0}, Lrx/internal/util/OpenHashSet;->terminate()V

    .line 372
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    iget-wide v2, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->producersVersion:J

    .line 373
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber$1;->this$0:Lrx/internal/operators/OperatorReplay$ReplaySubscriber;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lrx/internal/operators/OperatorReplay$ReplaySubscriber;->terminated:Z

    .line 375
    :cond_26
    monitor-exit v1

    .line 382
    :cond_27
    return-void

    .line 375
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_b .. :try_end_2a} :catchall_28

    throw v0
.end method

###### Class rx.internal.operators.OperatorReplay.SizeAndTimeBoundReplayBuffer (rx.internal.operators.OperatorReplay$SizeAndTimeBoundReplayBuffer)
.class final Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;
.super Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field final limit:I

.field final maxAgeInMillis:J

.field final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(IJLrx/Scheduler;)V
    .registers 5
    .param p1, "limit"    # I
    .param p2, "maxAgeInMillis"    # J
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 1228
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;-><init>()V

    .line 1229
    iput-object p4, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    .line 1230
    iput p1, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    .line 1231
    iput-wide p2, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    .line 1232
    return-void
.end method


# virtual methods
.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1236
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    new-instance v0, Lrx/schedulers/Timestamped;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->now()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lrx/schedulers/Timestamped;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method

.method getInitialHead()Lrx/internal/operators/OperatorReplay$Node;
    .registers 9

    .prologue
    .line 1246
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v4}, Lrx/Scheduler;->now()J

    move-result-wide v4

    iget-wide v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    sub-long v2, v4, v6

    .line 1247
    .local v2, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1249
    .local v1, "prev":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1250
    .local v0, "next":Lrx/internal/operators/OperatorReplay$Node;
    :goto_16
    if-eqz v0, :cond_2c

    iget-object v4, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    check-cast v4, Lrx/schedulers/Timestamped;

    invoke-virtual {v4}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_2c

    .line 1251
    move-object v1, v0

    .line 1252
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .restart local v0    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_16

    .line 1255
    :cond_2c
    return-object v1
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1241
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    check-cast p1, Lrx/schedulers/Timestamped;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lrx/schedulers/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method truncate()V
    .registers 11

    .prologue
    .line 1260
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v6}, Lrx/Scheduler;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    sub-long v4, v6, v8

    .line 1262
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$Node;

    .line 1263
    .local v2, "prev":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1265
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    const/4 v0, 0x0

    .line 1267
    .local v0, "e":I
    :goto_17
    if-eqz v1, :cond_4b

    .line 1268
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    iget v7, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    if-le v6, v7, :cond_2f

    .line 1269
    add-int/lit8 v0, v0, 0x1

    .line 1270
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1271
    move-object v2, v1

    .line 1272
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_17

    .line 1274
    :cond_2f
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    check-cast v3, Lrx/schedulers/Timestamped;

    .line 1275
    .local v3, "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    invoke-virtual {v3}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_4b

    .line 1276
    add-int/lit8 v0, v0, 0x1

    .line 1277
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1278
    move-object v2, v1

    .line 1279
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1283
    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_17

    .line 1288
    .end local v3    # "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    :cond_4b
    if-eqz v0, :cond_50

    .line 1289
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1291
    :cond_50
    return-void
.end method

.method truncateFinal()V
    .registers 11

    .prologue
    .line 1294
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v6}, Lrx/Scheduler;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    sub-long v4, v6, v8

    .line 1296
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$Node;

    .line 1297
    .local v2, "prev":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1299
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    const/4 v0, 0x0

    .line 1301
    .local v0, "e":I
    :goto_17
    if-eqz v1, :cond_3a

    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_3a

    .line 1302
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    check-cast v3, Lrx/schedulers/Timestamped;

    .line 1303
    .local v3, "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    invoke-virtual {v3}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_3a

    .line 1304
    add-int/lit8 v0, v0, 0x1

    .line 1305
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1306
    move-object v2, v1

    .line 1307
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1311
    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_17

    .line 1315
    .end local v3    # "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    :cond_3a
    if-eqz v0, :cond_3f

    .line 1316
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1318
    :cond_3f
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.SizeBoundReplayBuffer (rx.internal.operators.OperatorReplay$SizeBoundReplayBuffer)
.class final Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;
.super Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x51dae9f17ccbb88eL


# instance fields
.field final limit:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "limit"    # I

    .prologue
    .line 1202
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;-><init>()V

    .line 1203
    iput p1, p0, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;->limit:I

    .line 1204
    return-void
.end method


# virtual methods
.method truncate()V
    .registers 3

    .prologue
    .line 1209
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer<TT;>;"
    iget v0, p0, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;->size:I

    iget v1, p0, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;->limit:I

    if-le v0, v1, :cond_9

    .line 1210
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;->removeFirst()V

    .line 1212
    :cond_9
    return-void
.end method

###### Class rx.internal.operators.OperatorReplay.UnboundedReplayBuffer (rx.internal.operators.OperatorReplay$UnboundedReplayBuffer)
.class final Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;
.super Ljava/util/ArrayList;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/OperatorReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62057d556fa2a2d8L


# instance fields
.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile size:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacityHint"    # I

    .prologue
    .line 848
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 849
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    .line 850
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 2

    .prologue
    .line 865
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 866
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 867
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 859
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 860
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 861
    return-void
.end method

.method public next(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 853
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 854
    iget v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 855
    return-void
.end method

.method public replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer<TT;>;"
    .local p1, "output":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v10, 0x0

    .line 871
    monitor-enter p1

    .line 872
    :try_start_2
    iget-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    if-eqz v11, :cond_b

    .line 873
    const/4 v10, 0x1

    iput-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 874
    monitor-exit p1

    .line 925
    :cond_a
    :goto_a
    return-void

    .line 876
    :cond_b
    const/4 v11, 0x1

    iput-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 877
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_4b

    .line 879
    :goto_f
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_a

    .line 882
    iget v7, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->size:I

    .line 884
    .local v7, "sourceIndex":I
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->index()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 885
    .local v2, "destinationIndexObject":Ljava/lang/Integer;
    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 887
    .local v1, "destinationIndex":I
    :goto_23
    iget-object v0, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    .line 888
    .local v0, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    if-eqz v0, :cond_a

    .line 892
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v8

    .line 893
    .local v8, "r":J
    const-wide/16 v4, 0x0

    .line 895
    .local v4, "e":J
    :goto_2d
    cmp-long v11, v4, v8

    if-eqz v11, :cond_75

    if-ge v1, v7, :cond_75

    .line 896
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 898
    .local v6, "o":Ljava/lang/Object;
    :try_start_37
    iget-object v11, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v11, v0, v6}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3c} :catch_50

    move-result v11

    if-nez v11, :cond_a

    .line 909
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_a

    .line 912
    add-int/lit8 v1, v1, 0x1

    .line 913
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 914
    goto :goto_2d

    .line 877
    .end local v0    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .end local v1    # "destinationIndex":I
    .end local v2    # "destinationIndexObject":Ljava/lang/Integer;
    .end local v4    # "e":J
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "sourceIndex":I
    .end local v8    # "r":J
    :catchall_4b
    move-exception v10

    :try_start_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v10

    .restart local v2    # "destinationIndexObject":Ljava/lang/Integer;
    .restart local v7    # "sourceIndex":I
    :cond_4e
    move v1, v10

    .line 885
    goto :goto_23

    .line 901
    .restart local v0    # "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local v1    # "destinationIndex":I
    .restart local v4    # "e":J
    .restart local v6    # "o":Ljava/lang/Object;
    .restart local v8    # "r":J
    :catch_50
    move-exception v3

    .line 902
    .local v3, "err":Ljava/lang/Throwable;
    invoke-static {v3}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 903
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->unsubscribe()V

    .line 904
    iget-object v10, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v6}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v6}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 905
    iget-object v10, p0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v6}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v0, v10}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_a

    .line 915
    .end local v3    # "err":Ljava/lang/Throwable;
    .end local v6    # "o":Ljava/lang/Object;
    :cond_75
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_8d

    .line 916
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 917
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_8d

    .line 918
    invoke-virtual {p1, v4, v5}, Lrx/internal/operators/OperatorReplay$InnerProducer;->produced(J)J

    .line 922
    :cond_8d
    monitor-enter p1

    .line 923
    :try_start_8e
    iget-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    if-nez v11, :cond_9b

    .line 924
    const/4 v10, 0x0

    iput-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 925
    monitor-exit p1

    goto/16 :goto_a

    .line 928
    :catchall_98
    move-exception v10

    monitor-exit p1
    :try_end_9a
    .catchall {:try_start_8e .. :try_end_9a} :catchall_98

    throw v10

    .line 927
    :cond_9b
    const/4 v11, 0x0

    :try_start_9c
    iput-boolean v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 928
    monitor-exit p1
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_98

    goto/16 :goto_f
.end method
