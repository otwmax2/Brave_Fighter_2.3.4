###### Class rx.internal.operators.OnSubscribeRefCount (rx.internal.operators.OnSubscribeRefCount)
.class public final Lrx/internal/operators/OnSubscribeRefCount;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile baseSubscription:Lrx/subscriptions/CompositeSubscription;

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final source:Lrx/observables/ConnectableObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/ConnectableObservable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/observables/ConnectableObservable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/ConnectableObservable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "source":Lrx/observables/ConnectableObservable;, "Lrx/observables/ConnectableObservable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRefCount;->source:Lrx/observables/ConnectableObservable;

    .line 53
    return-void
.end method

.method private disconnect(Lrx/subscriptions/CompositeSubscription;)Lrx/Subscription;
    .registers 3
    .param p1, "current"    # Lrx/subscriptions/CompositeSubscription;

    .prologue
    .line 145
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRefCount$3;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeRefCount$3;-><init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/subscriptions/CompositeSubscription;)V

    invoke-static {v0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method private onSubscribe(Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/functions/Action1;
    .registers 4
    .param p2, "writeLocked"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lrx/functions/Action1",
            "<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRefCount$1;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/OnSubscribeRefCount$1;-><init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRefCount;->call(Lrx/Subscriber;)V

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
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v2, 0x1

    .line 58
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 59
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    if-ne v1, v2, :cond_35

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 67
    .local v0, "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_start_13
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->source:Lrx/observables/ConnectableObservable;

    invoke-direct {p0, p1, v0}, Lrx/internal/operators/OnSubscribeRefCount;->onSubscribe(Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/functions/Action1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/observables/ConnectableObservable;->connect(Lrx/functions/Action1;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_28

    .line 72
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 74
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 87
    .end local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_27
    :goto_27
    return-void

    .line 72
    .restart local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 74
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_34
    throw v1

    .line 80
    .end local v0    # "writeLocked":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_35
    :try_start_35
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {p0, p1, v1}, Lrx/internal/operators/OnSubscribeRefCount;->doSubscribe(Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_40

    .line 83
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_27

    :catchall_40
    move-exception v1

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method doSubscribe(Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    .registers 5
    .param p2, "currentBase"    # Lrx/subscriptions/CompositeSubscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/subscriptions/CompositeSubscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount;, "Lrx/internal/operators/OnSubscribeRefCount<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p2}, Lrx/internal/operators/OnSubscribeRefCount;->disconnect(Lrx/subscriptions/CompositeSubscription;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 112
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount;->source:Lrx/observables/ConnectableObservable;

    new-instance v1, Lrx/internal/operators/OnSubscribeRefCount$2;

    invoke-direct {v1, p0, p1, p1, p2}, Lrx/internal/operators/OnSubscribeRefCount$2;-><init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/Subscriber;Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V

    invoke-virtual {v0, v1}, Lrx/observables/ConnectableObservable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 142
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeRefCount.AnonymousClass1 (rx.internal.operators.OnSubscribeRefCount$1)
.class Lrx/internal/operators/OnSubscribeRefCount$1;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRefCount;->onSubscribe(Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/functions/Action1;
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
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRefCount;

.field final synthetic val$subscriber:Lrx/Subscriber;

.field final synthetic val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 4

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$1;, "Lrx/internal/operators/OnSubscribeRefCount.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->val$subscriber:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$1;, "Lrx/internal/operators/OnSubscribeRefCount.1;"
    check-cast p1, Lrx/Subscription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRefCount$1;->call(Lrx/Subscription;)V

    return-void
.end method

.method public call(Lrx/Subscription;)V
    .registers 6
    .param p1, "subscription"    # Lrx/Subscription;

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$1;, "Lrx/internal/operators/OnSubscribeRefCount.1;"
    const/4 v3, 0x0

    .line 96
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 98
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->val$subscriber:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v2, v2, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeRefCount;->doSubscribe(Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_20

    .line 101
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    return-void

    .line 101
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 102
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$1;->val$writeLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

###### Class rx.internal.operators.OnSubscribeRefCount.AnonymousClass2 (rx.internal.operators.OnSubscribeRefCount$2)
.class Lrx/internal/operators/OnSubscribeRefCount$2;
.super Lrx/Subscriber;
.source "OnSubscribeRefCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRefCount;->doSubscribe(Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
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
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRefCount;

.field final synthetic val$currentBase:Lrx/subscriptions/CompositeSubscription;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/Subscriber;Lrx/Subscriber;Lrx/subscriptions/CompositeSubscription;)V
    .registers 5

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iput-object p3, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    iput-object p4, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$currentBase:Lrx/subscriptions/CompositeSubscription;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 3

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    :try_start_7
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$currentBase:Lrx/subscriptions/CompositeSubscription;

    if-ne v0, v1, :cond_27

    .line 133
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 134
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v1, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 135
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_2f

    .line 138
    :cond_27
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 140
    return-void

    .line 138
    :catchall_2f
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 124
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRefCount$2;->cleanup()V

    .line 125
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 126
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeRefCount$2;->cleanup()V

    .line 116
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 117
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
    .line 120
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$2;, "Lrx/internal/operators/OnSubscribeRefCount.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeRefCount.AnonymousClass3 (rx.internal.operators.OnSubscribeRefCount$3)
.class Lrx/internal/operators/OnSubscribeRefCount$3;
.super Ljava/lang/Object;
.source "OnSubscribeRefCount.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRefCount;->disconnect(Lrx/subscriptions/CompositeSubscription;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRefCount;

.field final synthetic val$current:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRefCount;Lrx/subscriptions/CompositeSubscription;)V
    .registers 3

    .prologue
    .line 145
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$3;, "Lrx/internal/operators/OnSubscribeRefCount.3;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->val$current:Lrx/subscriptions/CompositeSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 148
    .local p0, "this":Lrx/internal/operators/OnSubscribeRefCount$3;, "Lrx/internal/operators/OnSubscribeRefCount.3;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 150
    :try_start_7
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->val$current:Lrx/subscriptions/CompositeSubscription;

    if-ne v0, v1, :cond_29

    .line 151
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->subscriptionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_29

    .line 152
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 155
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v1, v0, Lrx/internal/operators/OnSubscribeRefCount;->baseSubscription:Lrx/subscriptions/CompositeSubscription;
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_31

    .line 159
    :cond_29
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    return-void

    .line 159
    :catchall_31
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeRefCount$3;->this$0:Lrx/internal/operators/OnSubscribeRefCount;

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeRefCount;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
