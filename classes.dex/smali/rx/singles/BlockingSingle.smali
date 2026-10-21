###### Class rx.singles.BlockingSingle (rx.singles.BlockingSingle)
.class public final Lrx/singles/BlockingSingle;
.super Ljava/lang/Object;
.source "BlockingSingle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lrx/annotations/Beta;
.end annotation


# instance fields
.field private final single:Lrx/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Single",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Single;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/singles/BlockingSingle;, "Lrx/singles/BlockingSingle<TT;>;"
    .local p1, "single":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lrx/singles/BlockingSingle;->single:Lrx/Single;

    .line 44
    return-void
.end method

.method public static from(Lrx/Single;)Lrx/singles/BlockingSingle;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/singles/BlockingSingle",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "single":Lrx/Single;, "Lrx/Single<+TT;>;"
    new-instance v0, Lrx/singles/BlockingSingle;

    invoke-direct {v0, p0}, Lrx/singles/BlockingSingle;-><init>(Lrx/Single;)V

    return-object v0
.end method


# virtual methods
.method public toFuture()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/singles/BlockingSingle;, "Lrx/singles/BlockingSingle<TT;>;"
    iget-object v0, p0, Lrx/singles/BlockingSingle;->single:Lrx/Single;

    invoke-virtual {v0}, Lrx/Single;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/internal/operators/BlockingOperatorToFuture;->toFuture(Lrx/Observable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/singles/BlockingSingle;, "Lrx/singles/BlockingSingle<TT;>;"
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 69
    .local v2, "returnItem":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 70
    .local v1, "returnException":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 71
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v5, p0, Lrx/singles/BlockingSingle;->single:Lrx/Single;

    new-instance v6, Lrx/singles/BlockingSingle$1;

    invoke-direct {v6, p0, v2, v0, v1}, Lrx/singles/BlockingSingle$1;-><init>(Lrx/singles/BlockingSingle;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v5, v6}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    move-result-object v3

    .line 85
    .local v3, "subscription":Lrx/Subscription;
    invoke-static {v0, v3}, Lrx/internal/util/BlockingUtils;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lrx/Subscription;)V

    .line 86
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 87
    .local v4, "throwable":Ljava/lang/Throwable;
    if-eqz v4, :cond_2b

    .line 88
    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 90
    :cond_2b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

###### Class rx.singles.BlockingSingle.AnonymousClass1 (rx.singles.BlockingSingle$1)
.class Lrx/singles/BlockingSingle$1;
.super Lrx/SingleSubscriber;
.source "BlockingSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/singles/BlockingSingle;->value()Ljava/lang/Object;
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
.field final synthetic this$0:Lrx/singles/BlockingSingle;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/singles/BlockingSingle;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5

    .prologue
    .line 71
    .local p0, "this":Lrx/singles/BlockingSingle$1;, "Lrx/singles/BlockingSingle.1;"
    iput-object p1, p0, Lrx/singles/BlockingSingle$1;->this$0:Lrx/singles/BlockingSingle;

    iput-object p2, p0, Lrx/singles/BlockingSingle$1;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/singles/BlockingSingle$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lrx/singles/BlockingSingle$1;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    .local p0, "this":Lrx/singles/BlockingSingle$1;, "Lrx/singles/BlockingSingle.1;"
    iget-object v0, p0, Lrx/singles/BlockingSingle$1;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lrx/singles/BlockingSingle$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 82
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lrx/singles/BlockingSingle$1;, "Lrx/singles/BlockingSingle.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/singles/BlockingSingle$1;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lrx/singles/BlockingSingle$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    return-void
.end method
