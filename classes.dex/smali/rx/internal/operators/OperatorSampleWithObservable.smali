###### Class rx.internal.operators.OperatorSampleWithObservable (rx.internal.operators.OperatorSampleWithObservable)
.class public final Lrx/internal/operators/OperatorSampleWithObservable;
.super Ljava/lang/Object;
.source "OperatorSampleWithObservable.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY_TOKEN:Ljava/lang/Object;


# instance fields
.field final sampler:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorSampleWithObservable;->EMPTY_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable;, "Lrx/internal/operators/OperatorSampleWithObservable<TT;TU;>;"
    .local p1, "sampler":Lrx/Observable;, "Lrx/Observable<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithObservable;->sampler:Lrx/Observable;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable;, "Lrx/internal/operators/OperatorSampleWithObservable<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSampleWithObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable;, "Lrx/internal/operators/OperatorSampleWithObservable<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v2, Lrx/observers/SerializedSubscriber;

    invoke-direct {v2, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 45
    .local v2, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lrx/internal/operators/OperatorSampleWithObservable;->EMPTY_TOKEN:Ljava/lang/Object;

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .local v4, "value":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 49
    .local v0, "main":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/Subscription;>;"
    new-instance v3, Lrx/internal/operators/OperatorSampleWithObservable$1;

    invoke-direct {v3, p0, v4, v2, v0}, Lrx/internal/operators/OperatorSampleWithObservable$1;-><init>(Lrx/internal/operators/OperatorSampleWithObservable;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 76
    .local v3, "samplerSub":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    new-instance v1, Lrx/internal/operators/OperatorSampleWithObservable$2;

    invoke-direct {v1, p0, v4, v2, v3}, Lrx/internal/operators/OperatorSampleWithObservable$2;-><init>(Lrx/internal/operators/OperatorSampleWithObservable;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;Lrx/Subscriber;)V

    .line 98
    .local v1, "result":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 101
    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 103
    iget-object v5, p0, Lrx/internal/operators/OperatorSampleWithObservable;->sampler:Lrx/Observable;

    invoke-virtual {v5, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 105
    return-object v1
.end method

###### Class rx.internal.operators.OperatorSampleWithObservable.AnonymousClass1 (rx.internal.operators.OperatorSampleWithObservable$1)
.class Lrx/internal/operators/OperatorSampleWithObservable$1;
.super Lrx/Subscriber;
.source "OperatorSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSampleWithObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSampleWithObservable;

.field final synthetic val$main:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;

.field final synthetic val$value:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSampleWithObservable;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$1;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->this$0:Lrx/internal/operators/OperatorSampleWithObservable;

    iput-object p2, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$s:Lrx/observers/SerializedSubscriber;

    iput-object p4, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$main:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$1;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorSampleWithObservable$1;->onNext(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$main:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 73
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$1;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 64
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$main:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 65
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$1;, "Lrx/internal/operators/OperatorSampleWithObservable.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lrx/internal/operators/OperatorSampleWithObservable;->EMPTY_TOKEN:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "localValue":Ljava/lang/Object;
    sget-object v2, Lrx/internal/operators/OperatorSampleWithObservable;->EMPTY_TOKEN:Ljava/lang/Object;

    if-eq v0, v2, :cond_12

    .line 55
    move-object v1, v0

    .line 56
    .local v1, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorSampleWithObservable$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v2, v1}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V

    .line 58
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_12
    return-void
.end method

###### Class rx.internal.operators.OperatorSampleWithObservable.AnonymousClass2 (rx.internal.operators.OperatorSampleWithObservable$2)
.class Lrx/internal/operators/OperatorSampleWithObservable$2;
.super Lrx/Subscriber;
.source "OperatorSampleWithObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSampleWithObservable;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorSampleWithObservable;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;

.field final synthetic val$samplerSub:Lrx/Subscriber;

.field final synthetic val$value:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSampleWithObservable;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;Lrx/Subscriber;)V
    .registers 5

    .prologue
    .line 76
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$2;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->this$0:Lrx/internal/operators/OperatorSampleWithObservable;

    iput-object p2, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$s:Lrx/observers/SerializedSubscriber;

    iput-object p4, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$samplerSub:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$2;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$samplerSub:Lrx/Subscriber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 94
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$samplerSub:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 95
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$2;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$samplerSub:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 87
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
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorSampleWithObservable$2;, "Lrx/internal/operators/OperatorSampleWithObservable.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSampleWithObservable$2;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    return-void
.end method
