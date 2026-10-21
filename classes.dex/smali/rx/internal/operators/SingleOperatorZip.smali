###### Class rx.internal.operators.SingleOperatorZip (rx.internal.operators.SingleOperatorZip)
.class public final Lrx/internal/operators/SingleOperatorZip;
.super Ljava/lang/Object;
.source "SingleOperatorZip.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "singles":[Lrx/Single;, "[Lrx/Single<+TT;>;"
    .local p1, "zipper":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v0, Lrx/internal/operators/SingleOperatorZip$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/SingleOperatorZip$1;-><init>([Lrx/Single;Lrx/functions/FuncN;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.SingleOperatorZip.AnonymousClass1 (rx.internal.operators.SingleOperatorZip$1)
.class final Lrx/internal/operators/SingleOperatorZip$1;
.super Ljava/lang/Object;
.source "SingleOperatorZip.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOperatorZip;->zip([Lrx/Single;Lrx/functions/FuncN;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$singles:[Lrx/Single;

.field final synthetic val$zipper:Lrx/functions/FuncN;


# direct methods
.method constructor <init>([Lrx/Single;Lrx/functions/FuncN;)V
    .registers 3

    .prologue
    .line 36
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    iput-object p2, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$zipper:Lrx/functions/FuncN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/SingleOperatorZip$1;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "subscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TR;>;"
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    array-length v1, v1

    if-nez v1, :cond_10

    .line 40
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v5, "Can\'t zip 0 Singles."

    invoke-direct {v1, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 94
    :cond_f
    return-void

    .line 44
    :cond_10
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    array-length v1, v1

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 45
    .local v4, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 46
    .local v6, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/Object;

    .line 48
    .local v2, "values":[Ljava/lang/Object;
    new-instance v7, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v7}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 49
    .local v7, "compositeSubscription":Lrx/subscriptions/CompositeSubscription;
    invoke-virtual {p1, v7}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 51
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2b
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    array-length v1, v1

    if-ge v8, v1, :cond_f

    .line 52
    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_f

    .line 56
    move v3, v8

    .line 57
    .local v3, "j":I
    new-instance v0, Lrx/internal/operators/SingleOperatorZip$1$1;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/SingleOperatorZip$1$1;-><init>(Lrx/internal/operators/SingleOperatorZip$1;[Ljava/lang/Object;ILjava/util/concurrent/atomic/AtomicInteger;Lrx/SingleSubscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 86
    .local v0, "singleSubscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<TT;>;"
    invoke-virtual {v7, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 88
    invoke-virtual {v7}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_f

    .line 92
    iget-object v1, p0, Lrx/internal/operators/SingleOperatorZip$1;->val$singles:[Lrx/Single;

    aget-object v1, v1, v8

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 51
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b
.end method

###### Class rx.internal.operators.SingleOperatorZip.AnonymousClass1.C01971 (rx.internal.operators.SingleOperatorZip$1$1)
.class Lrx/internal/operators/SingleOperatorZip$1$1;
.super Lrx/SingleSubscriber;
.source "SingleOperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/SingleOperatorZip$1;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/SingleOperatorZip$1;

.field final synthetic val$j:I

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$subscriber:Lrx/SingleSubscriber;

.field final synthetic val$values:[Ljava/lang/Object;

.field final synthetic val$wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lrx/internal/operators/SingleOperatorZip$1;[Ljava/lang/Object;ILjava/util/concurrent/atomic/AtomicInteger;Lrx/SingleSubscriber;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 7

    .prologue
    .line 57
    iput-object p1, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->this$0:Lrx/internal/operators/SingleOperatorZip$1;

    iput-object p2, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$values:[Ljava/lang/Object;

    iput p3, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$j:I

    iput-object p4, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$subscriber:Lrx/SingleSubscriber;

    iput-object p6, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 79
    iget-object v0, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$subscriber:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 83
    :goto_f
    return-void

    .line 81
    :cond_10
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$values:[Ljava/lang/Object;

    iget v3, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$j:I

    aput-object p1, v2, v3

    .line 61
    iget-object v2, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_1d

    .line 65
    :try_start_e
    iget-object v2, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->this$0:Lrx/internal/operators/SingleOperatorZip$1;

    iget-object v2, v2, Lrx/internal/operators/SingleOperatorZip$1;->val$zipper:Lrx/functions/FuncN;

    iget-object v3, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$values:[Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_17} :catch_1e

    move-result-object v1

    .line 72
    .local v1, "r":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lrx/internal/operators/SingleOperatorZip$1$1;->val$subscriber:Lrx/SingleSubscriber;

    invoke-virtual {v2, v1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 74
    .end local v1    # "r":Ljava/lang/Object;, "TR;"
    :cond_1d
    :goto_1d
    return-void

    .line 66
    :catch_1e
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {p0, v0}, Lrx/internal/operators/SingleOperatorZip$1$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method
