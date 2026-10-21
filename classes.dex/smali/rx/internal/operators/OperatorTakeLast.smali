###### Class rx.internal.operators.OperatorTakeLast (rx.internal.operators.OperatorTakeLast)
.class public final Lrx/internal/operators/OperatorTakeLast;
.super Ljava/lang/Object;
.source "OperatorTakeLast.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final count:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-gez p1, :cond_d

    .line 38
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_d
    iput p1, p0, Lrx/internal/operators/OperatorTakeLast;->count:I

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeLast;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
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
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast;, "Lrx/internal/operators/OperatorTakeLast<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;

    iget v1, p0, Lrx/internal/operators/OperatorTakeLast;->count:I

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;-><init>(Lrx/Subscriber;I)V

    .line 47
    .local v0, "parent":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 48
    new-instance v1, Lrx/internal/operators/OperatorTakeLast$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorTakeLast$1;-><init>(Lrx/internal/operators/OperatorTakeLast;Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 55
    return-object v0
.end method

###### Class rx.internal.operators.OperatorTakeLast.AnonymousClass1 (rx.internal.operators.OperatorTakeLast$1)
.class Lrx/internal/operators/OperatorTakeLast$1;
.super Ljava/lang/Object;
.source "OperatorTakeLast.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeLast;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorTakeLast;

.field final synthetic val$parent:Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeLast;Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;)V
    .registers 3

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$1;, "Lrx/internal/operators/OperatorTakeLast.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLast$1;->this$0:Lrx/internal/operators/OperatorTakeLast;

    iput-object p2, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$parent:Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$1;, "Lrx/internal/operators/OperatorTakeLast.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$1;->val$parent:Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->requestMore(J)V

    .line 52
    return-void
.end method

###### Class rx.internal.operators.OperatorTakeLast.TakeLastSubscriber (rx.internal.operators.OperatorTakeLast$TakeLastSubscriber)
.class final Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;
.super Lrx/Subscriber;
.source "OperatorTakeLast.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTakeLast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeLastSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final count:I

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lrx/Subscriber;I)V
    .registers 4
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 66
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->actual:Lrx/Subscriber;

    .line 67
    iput p2, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->count:I

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    .line 70
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    .line 71
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->actual:Lrx/Subscriber;

    invoke-static {v0, v1, v2, p0}, Lrx/internal/operators/BackpressureUtils;->postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)V

    .line 90
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 84
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 85
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
    .line 75
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->count:I

    if-ne v0, v1, :cond_f

    .line 76
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 78
    :cond_f
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method requestMore(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .line 98
    .local p0, "this":Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;, "Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    .line 99
    iget-object v1, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->queue:Ljava/util/ArrayDeque;

    iget-object v5, p0, Lrx/internal/operators/OperatorTakeLast$TakeLastSubscriber;->actual:Lrx/Subscriber;

    move-wide v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lrx/internal/operators/BackpressureUtils;->postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lrx/Subscriber;Lrx/functions/Func1;)Z

    .line 101
    :cond_11
    return-void
.end method
