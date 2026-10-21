###### Class rx.internal.operators.CompletableOnSubscribeMergeArray (rx.internal.operators.CompletableOnSubscribeMergeArray)
.class public final Lrx/internal/operators/CompletableOnSubscribeMergeArray;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeArray.java"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# instance fields
.field final sources:[Lrx/Completable;


# direct methods
.method public constructor <init>([Lrx/Completable;)V
    .registers 2
    .param p1, "sources"    # [Lrx/Completable;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray;->sources:[Lrx/Completable;

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lrx/CompletableSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/CompletableOnSubscribeMergeArray;->call(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public call(Lrx/CompletableSubscriber;)V
    .registers 15
    .param p1, "s"    # Lrx/CompletableSubscriber;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 35
    new-instance v2, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v2}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 36
    .local v2, "set":Lrx/subscriptions/CompositeSubscription;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray;->sources:[Lrx/Completable;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 37
    .local v5, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 39
    .local v3, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p1, v2}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 41
    iget-object v6, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray;->sources:[Lrx/Completable;

    .local v6, "arr$":[Lrx/Completable;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1d
    if-ge v8, v9, :cond_4e

    aget-object v7, v6, v8

    .line 42
    .local v7, "c":Lrx/Completable;
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 90
    .end local v7    # "c":Lrx/Completable;
    :cond_27
    :goto_27
    return-void

    .line 46
    .restart local v7    # "c":Lrx/Completable;
    :cond_28
    if-nez v7, :cond_41

    .line 47
    invoke-virtual {v2}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 48
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v0, "A completable source is null"

    invoke-direct {v10, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 49
    .local v10, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 50
    invoke-interface {p1, v10}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_27

    .line 53
    :cond_3e
    invoke-static {v10}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 57
    .end local v10    # "npe":Ljava/lang/NullPointerException;
    :cond_41
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;-><init>(Lrx/internal/operators/CompletableOnSubscribeMergeArray;Lrx/subscriptions/CompositeSubscription;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/CompletableSubscriber;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v7, v0}, Lrx/Completable;->unsafeSubscribe(Lrx/CompletableSubscriber;)V

    .line 41
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 85
    .end local v7    # "c":Lrx/Completable;
    :cond_4e
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_27

    .line 86
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 87
    invoke-interface {p1}, Lrx/CompletableSubscriber;->onCompleted()V

    goto :goto_27
.end method

###### Class rx.internal.operators.CompletableOnSubscribeMergeArray.AnonymousClass1 (rx.internal.operators.CompletableOnSubscribeMergeArray$1)
.class Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeArray.java"

# interfaces
.implements Lrx/CompletableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CompletableOnSubscribeMergeArray;->call(Lrx/CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/CompletableOnSubscribeMergeArray;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lrx/CompletableSubscriber;

.field final synthetic val$set:Lrx/subscriptions/CompositeSubscription;

.field final synthetic val$wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lrx/internal/operators/CompletableOnSubscribeMergeArray;Lrx/subscriptions/CompositeSubscription;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/CompletableSubscriber;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 6

    .prologue
    .line 57
    iput-object p1, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->this$0:Lrx/internal/operators/CompletableOnSubscribeMergeArray;

    iput-object p2, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    iput-object p3, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$s:Lrx/CompletableSubscriber;

    iput-object p5, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 4

    .prologue
    .line 75
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_17

    .line 76
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 77
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V

    .line 80
    :cond_17
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    .line 66
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 67
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$s:Lrx/CompletableSubscriber;

    invoke-interface {v0, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 71
    :goto_14
    return-void

    .line 69
    :cond_15
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .registers 3
    .param p1, "d"    # Lrx/Subscription;

    .prologue
    .line 60
    iget-object v0, p0, Lrx/internal/operators/CompletableOnSubscribeMergeArray$1;->val$set:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 61
    return-void
.end method
