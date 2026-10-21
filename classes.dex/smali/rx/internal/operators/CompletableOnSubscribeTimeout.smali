###### Class rx.internal.operators.CompletableOnSubscribeTimeout (rx.internal.operators.CompletableOnSubscribeTimeout)
.class public final Lrx/internal/operators/CompletableOnSubscribeTimeout;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeTimeout.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# instance fields
.field final other:Lrx/Completable;

.field final scheduler:Lrx/Scheduler;

.field final source:Lrx/Completable;

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lrx/Completable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)V
    .registers 7
    .param p1, "source"    # Lrx/Completable;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .param p6, "other"    # Lrx/Completable;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->source:Lrx/Completable;

    .line 39
    iput-wide p2, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->timeout:J

    .line 40
    iput-object p4, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->unit:Ljava/util/concurrent/TimeUnit;

    .line 41
    iput-object p5, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->scheduler:Lrx/Scheduler;

    .line 42
    iput-object p6, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->other:Lrx/Completable;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeTimeout;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 9
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    .line 47
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 48
    .local v1, "set":Lrx/subscriptions/CompositeSubscription;
    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 52
    .local v0, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->scheduler:Lrx/Scheduler;

    invoke-virtual {v3}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v2

    .line 54
    .local v2, "w":Lrx/Scheduler$Worker;
    invoke-virtual {v1, v2}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 55
    new-instance v3, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    invoke-direct {v3, p0, v0, v1, p1}, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/CompletableSubscriber;)V

    iget-wide v4, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->timeout:J

    iget-object v6, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 88
    iget-object v3, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->source:Lrx/Completable;

    new-instance v4, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;

    invoke-direct {v4, p0, v1, v0, p1}, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;-><init>(Lrx/internal/operators/CompletableOnSubscribeTimeout;Lrx/subscriptions/CompositeSubscription;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/CompletableSubscriber;)V

    invoke-virtual {v3, v4}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 114
    return-void
.end method

###### Class rx.internal.operators.CompletableOnSubscribeTimeout.AnonymousClass1 (rx.internal.operators.CompletableOnSubscribeTimeout$1)
.class Lrx/internal/operators/CompletableOnSubscribeTimeout$1;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeTimeout.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CompletableOnSubscribeTimeout;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/CompletableOnSubscribeTimeout;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lrx/CompletableSubscriber;

.field final synthetic val$set:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/subscriptions/CompositeSubscription;Lrx/CompletableSubscriber;)V
    .registers 5

    .prologue
    .line 55
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeTimeout;

    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    iput-object p4, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$s:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 59
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 60
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeTimeout;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->other:Lrx/Completable;

    if-nez v0, :cond_20

    .line 61
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$s:Lrx/CompletableSubscriber;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 85
    :cond_1f
    :goto_1f
    return-void

    .line 63
    :cond_20
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeTimeout;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout;->other:Lrx/Completable;

    new-instance v1, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeTimeout$1;)V

    invoke-virtual {v0, v1}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    goto :goto_1f
.end method

###### Class rx.internal.operators.CompletableOnSubscribeTimeout.AnonymousClass1.C01841 (rx.internal.operators.CompletableOnSubscribeTimeout$1$1)
.class Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeTimeout.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeTimeout$1;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 79
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 80
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 73
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 67
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1$1;->this$1:Lrx/internal/operators/CompletableOnSubscribeTimeout$1;

    iget-object v0, v0, Lrx/internal/operators/CompletableOnSubscribeTimeout$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 68
    return-void
.end method

###### Class rx.internal.operators.CompletableOnSubscribeTimeout.AnonymousClass2 (rx.internal.operators.CompletableOnSubscribeTimeout$2)
.class Lrx/internal/operators/CompletableOnSubscribeTimeout$2;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeTimeout.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CompletableOnSubscribeTimeout;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/CompletableOnSubscribeTimeout;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lrx/CompletableSubscriber;

.field final synthetic val$set:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeTimeout;Lrx/subscriptions/CompositeSubscription;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/CompletableSubscriber;)V
    .registers 5

    .prologue
    .line 88
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;->this$0:Lrx/internal/operators/CompletableOnSubscribeTimeout;

    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;->val$set:Lrx/subscriptions/CompositeSubscription;

    iput-object p3, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;->val$s:Lrx/CompletableSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 108
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 109
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 111
    :cond_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 98
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 99
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 103
    :goto_14
    return-void

    .line 101
    :cond_15
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 92
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeTimeout$2;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 93
    return-void
.end method
