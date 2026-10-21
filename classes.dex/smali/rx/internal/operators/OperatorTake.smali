###### Class rx.internal.operators.OperatorTake (rx.internal.operators.OperatorTake)
.class public final Lrx/internal/operators/OperatorTake;
.super Ljava/lang/Object;
.source "OperatorTake.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
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
.field final limit:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "limit"    # I

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorTake;, "Lrx/internal/operators/OperatorTake<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-gez p1, :cond_1e

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1e
    iput p1, p0, Lrx/internal/operators/OperatorTake;->limit:I

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorTake;, "Lrx/internal/operators/OperatorTake<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTake;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorTake;, "Lrx/internal/operators/OperatorTake<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTake$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorTake$1;-><init>(Lrx/internal/operators/OperatorTake;Lrx/Subscriber;)V

    .line 120
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget v1, p0, Lrx/internal/operators/OperatorTake;->limit:I

    if-nez v1, :cond_f

    .line 121
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 122
    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 134
    :cond_f
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 136
    return-object v0
.end method

###### Class rx.internal.operators.OperatorTake.AnonymousClass1 (rx.internal.operators.OperatorTake$1)
.class Lrx/internal/operators/OperatorTake$1;
.super Lrx/Subscriber;
.source "OperatorTake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTake;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field completed:Z

.field count:I

.field final synthetic this$0:Lrx/internal/operators/OperatorTake;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTake;Lrx/Subscriber;)V
    .registers 3

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iput-object p2, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v0, :cond_c

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    .line 56
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 58
    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v0, :cond_f

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    .line 65
    :try_start_7
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 67
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    .line 70
    :cond_f
    return-void

    .line 67
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    .local p1, "i":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_31

    iget v2, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    iget-object v3, p0, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iget v3, v3, Lrx/internal/operators/OperatorTake;->limit:I

    if-ge v2, v3, :cond_31

    .line 75
    iget v2, p0, Lrx/internal/operators/OperatorTake$1;->count:I

    iget-object v3, p0, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iget v3, v3, Lrx/internal/operators/OperatorTake;->limit:I

    if-ne v2, v3, :cond_32

    move v0, v1

    .line 76
    .local v0, "stop":Z
    :goto_1c
    iget-object v2, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 77
    if-eqz v0, :cond_31

    iget-boolean v2, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v2, :cond_31

    .line 78
    iput-boolean v1, p0, Lrx/internal/operators/OperatorTake$1;->completed:Z

    .line 80
    :try_start_29
    iget-object v1, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    .line 82
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    .line 86
    .end local v0    # "stop":Z
    :cond_31
    return-void

    .line 75
    :cond_32
    const/4 v0, 0x0

    goto :goto_1c

    .line 82
    .restart local v0    # "stop":Z
    :catchall_34
    move-exception v1

    invoke-virtual {p0}, Lrx/internal/operators/OperatorTake$1;->unsubscribe()V

    throw v1
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorTake$1;, "Lrx/internal/operators/OperatorTake.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTake$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorTake$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorTake$1$1;-><init>(Lrx/internal/operators/OperatorTake$1;Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 116
    return-void
.end method

###### Class rx.internal.operators.OperatorTake.AnonymousClass1.C01941 (rx.internal.operators.OperatorTake$1$1)
.class Lrx/internal/operators/OperatorTake$1$1;
.super Ljava/lang/Object;
.source "OperatorTake.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTake$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$1:Lrx/internal/operators/OperatorTake$1;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTake$1;Lrx/Producer;)V
    .registers 7

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorTake$1$1;, "Lrx/internal/operators/OperatorTake$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTake$1$1;->this$1:Lrx/internal/operators/OperatorTake$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorTake$1$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lrx/internal/operators/OperatorTake$1$1;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 14
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTake$1$1;, "Lrx/internal/operators/OperatorTake$1.1;"
    const-wide/16 v8, 0x0

    .line 100
    cmp-long v4, p1, v8

    if-lez v4, :cond_22

    iget-object v4, p0, Lrx/internal/operators/OperatorTake$1$1;->this$1:Lrx/internal/operators/OperatorTake$1;

    iget-boolean v4, v4, Lrx/internal/operators/OperatorTake$1;->completed:Z

    if-nez v4, :cond_22

    .line 104
    :cond_c
    iget-object v4, p0, Lrx/internal/operators/OperatorTake$1$1;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 105
    .local v2, "r":J
    iget-object v4, p0, Lrx/internal/operators/OperatorTake$1$1;->this$1:Lrx/internal/operators/OperatorTake$1;

    iget-object v4, v4, Lrx/internal/operators/OperatorTake$1;->this$0:Lrx/internal/operators/OperatorTake;

    iget v4, v4, Lrx/internal/operators/OperatorTake;->limit:I

    int-to-long v4, v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 106
    .local v0, "c":J
    cmp-long v4, v0, v8

    if-nez v4, :cond_23

    .line 114
    .end local v0    # "c":J
    .end local v2    # "r":J
    :cond_22
    :goto_22
    return-void

    .line 108
    .restart local v0    # "c":J
    .restart local v2    # "r":J
    :cond_23
    iget-object v4, p0, Lrx/internal/operators/OperatorTake$1$1;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    add-long v6, v2, v0

    invoke-virtual {v4, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 109
    iget-object v4, p0, Lrx/internal/operators/OperatorTake$1$1;->val$producer:Lrx/Producer;

    invoke-interface {v4, v0, v1}, Lrx/Producer;->request(J)V

    goto :goto_22
.end method
