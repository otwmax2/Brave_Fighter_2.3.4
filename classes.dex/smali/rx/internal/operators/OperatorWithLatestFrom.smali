###### Class rx.internal.operators.OperatorWithLatestFrom (rx.internal.operators.OperatorWithLatestFrom)
.class public final Lrx/internal/operators/OperatorWithLatestFrom;
.super Ljava/lang/Object;
.source "OperatorWithLatestFrom.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# instance fields
.field final other:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TU;>;"
        }
    .end annotation
.end field

.field final resultSelector:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TU;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFrom;->other:Lrx/Observable;

    .line 40
    iput-object p2, p0, Lrx/internal/operators/OperatorWithLatestFrom;->resultSelector:Lrx/functions/Func2;

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWithLatestFrom;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom;, "Lrx/internal/operators/OperatorWithLatestFrom<TT;TU;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v2, Lrx/observers/SerializedSubscriber;

    const/4 v1, 0x0

    invoke-direct {v2, p1, v1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;Z)V

    .line 46
    .local v2, "s":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TR;>;"
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 48
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 50
    .local v4, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    new-instance v0, Lrx/internal/operators/OperatorWithLatestFrom$1;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorWithLatestFrom$1;-><init>(Lrx/internal/operators/OperatorWithLatestFrom;Lrx/Subscriber;ZLjava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V

    .line 78
    .local v0, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v6, Lrx/internal/operators/OperatorWithLatestFrom$2;

    invoke-direct {v6, p0, v4, v2}, Lrx/internal/operators/OperatorWithLatestFrom$2;-><init>(Lrx/internal/operators/OperatorWithLatestFrom;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V

    .line 96
    .local v6, "otherSubscriber":Lrx/Subscriber;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {v2, v0}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 97
    invoke-virtual {v2, v6}, Lrx/observers/SerializedSubscriber;->add(Lrx/Subscription;)V

    .line 99
    iget-object v1, p0, Lrx/internal/operators/OperatorWithLatestFrom;->other:Lrx/Observable;

    invoke-virtual {v1, v6}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 101
    return-object v0
.end method

###### Class rx.internal.operators.OperatorWithLatestFrom.AnonymousClass1 (rx.internal.operators.OperatorWithLatestFrom$1)
.class Lrx/internal/operators/OperatorWithLatestFrom$1;
.super Lrx/Subscriber;
.source "OperatorWithLatestFrom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWithLatestFrom;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorWithLatestFrom;

.field final synthetic val$current:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWithLatestFrom;Lrx/Subscriber;ZLjava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V
    .registers 6
    .param p3, "x1"    # Z

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->this$0:Lrx/internal/operators/OperatorWithLatestFrom;

    iput-object p4, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0, p2, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 69
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 70
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$1;, "Lrx/internal/operators/OperatorWithLatestFrom.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, "o":Ljava/lang/Object;
    sget-object v4, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    if-eq v1, v4, :cond_18

    .line 57
    move-object v3, v1

    .line 58
    .local v3, "u":Ljava/lang/Object;, "TU;"
    :try_start_b
    iget-object v4, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->this$0:Lrx/internal/operators/OperatorWithLatestFrom;

    iget-object v4, v4, Lrx/internal/operators/OperatorWithLatestFrom;->resultSelector:Lrx/functions/Func2;

    invoke-interface {v4, p1, v3}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 60
    .local v2, "result":Ljava/lang/Object;, "TR;"
    iget-object v4, p0, Lrx/internal/operators/OperatorWithLatestFrom$1;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v4, v2}, Lrx/observers/SerializedSubscriber;->onNext(Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_18} :catch_19

    .line 65
    .end local v2    # "result":Ljava/lang/Object;, "TR;"
    .end local v3    # "u":Ljava/lang/Object;, "TU;"
    :cond_18
    :goto_18
    return-void

    .line 61
    .restart local v3    # "u":Ljava/lang/Object;, "TU;"
    :catch_19
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_18
.end method

###### Class rx.internal.operators.OperatorWithLatestFrom.AnonymousClass2 (rx.internal.operators.OperatorWithLatestFrom$2)
.class Lrx/internal/operators/OperatorWithLatestFrom$2;
.super Lrx/Subscriber;
.source "OperatorWithLatestFrom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWithLatestFrom;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorWithLatestFrom;

.field final synthetic val$current:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$s:Lrx/observers/SerializedSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWithLatestFrom;Ljava/util/concurrent/atomic/AtomicReference;Lrx/observers/SerializedSubscriber;)V
    .registers 4

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->this$0:Lrx/internal/operators/OperatorWithLatestFrom;

    iput-object p2, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/internal/operators/OperatorWithLatestFrom;->EMPTY:Ljava/lang/Object;

    if-ne v0, v1, :cond_14

    .line 91
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->onCompleted()V

    .line 92
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 94
    :cond_14
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$s:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0}, Lrx/observers/SerializedSubscriber;->unsubscribe()V

    .line 87
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorWithLatestFrom$2;, "Lrx/internal/operators/OperatorWithLatestFrom.2;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWithLatestFrom$2;->val$current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
