###### Class rx.internal.operators.OperatorElementAt (rx.internal.operators.OperatorElementAt)
.class public final Lrx/internal/operators/OperatorElementAt;
.super Ljava/lang/Object;
.source "OperatorElementAt.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorElementAt$InnerProducer;
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
.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final hasDefault:Z

.field final index:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lrx/internal/operators/OperatorElementAt;-><init>(ILjava/lang/Object;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lrx/internal/operators/OperatorElementAt;-><init>(ILjava/lang/Object;Z)V

    .line 39
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;Z)V
    .registers 7
    .param p1, "index"    # I
    .param p3, "hasDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-gez p1, :cond_1e

    .line 43
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1e
    iput p1, p0, Lrx/internal/operators/OperatorElementAt;->index:I

    .line 46
    iput-object p2, p0, Lrx/internal/operators/OperatorElementAt;->defaultValue:Ljava/lang/Object;

    .line 47
    iput-boolean p3, p0, Lrx/internal/operators/OperatorElementAt;->hasDefault:Z

    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorElementAt;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 3
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
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorElementAt$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorElementAt$1;-><init>(Lrx/internal/operators/OperatorElementAt;Lrx/Subscriber;)V

    .line 88
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 90
    return-object v0
.end method

###### Class rx.internal.operators.OperatorElementAt.AnonymousClass1 (rx.internal.operators.OperatorElementAt$1)
.class Lrx/internal/operators/OperatorElementAt$1;
.super Lrx/Subscriber;
.source "OperatorElementAt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorElementAt;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private currentIndex:I

.field final synthetic this$0:Lrx/internal/operators/OperatorElementAt;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorElementAt;Lrx/Subscriber;)V
    .registers 3

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorElementAt$1;, "Lrx/internal/operators/OperatorElementAt.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    iput-object p2, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 5

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OperatorElementAt$1;, "Lrx/internal/operators/OperatorElementAt.1;"
    iget v0, p0, Lrx/internal/operators/OperatorElementAt$1;->currentIndex:I

    iget-object v1, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    iget v1, v1, Lrx/internal/operators/OperatorElementAt;->index:I

    if-gt v0, v1, :cond_1c

    .line 74
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    iget-boolean v0, v0, Lrx/internal/operators/OperatorElementAt;->hasDefault:Z

    if-eqz v0, :cond_1d

    .line 75
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    iget-object v1, v1, Lrx/internal/operators/OperatorElementAt;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 81
    :cond_1c
    :goto_1c
    return-void

    .line 78
    :cond_1d
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    iget v3, v3, Lrx/internal/operators/OperatorElementAt;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is out of bounds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorElementAt$1;, "Lrx/internal/operators/OperatorElementAt.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 68
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
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorElementAt$1;, "Lrx/internal/operators/OperatorElementAt.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorElementAt$1;->currentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lrx/internal/operators/OperatorElementAt$1;->currentIndex:I

    iget-object v1, p0, Lrx/internal/operators/OperatorElementAt$1;->this$0:Lrx/internal/operators/OperatorElementAt;

    iget v1, v1, Lrx/internal/operators/OperatorElementAt;->index:I

    if-ne v0, v1, :cond_19

    .line 59
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 61
    invoke-virtual {p0}, Lrx/internal/operators/OperatorElementAt$1;->unsubscribe()V

    .line 63
    :cond_19
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 4
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorElementAt$1;, "Lrx/internal/operators/OperatorElementAt.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$1;->val$child:Lrx/Subscriber;

    new-instance v1, Lrx/internal/operators/OperatorElementAt$InnerProducer;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorElementAt$InnerProducer;-><init>(Lrx/Producer;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 86
    return-void
.end method

###### Class rx.internal.operators.OperatorElementAt.InnerProducer (rx.internal.operators.OperatorElementAt$InnerProducer)
.class Lrx/internal/operators/OperatorElementAt$InnerProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorElementAt.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorElementAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final actual:Lrx/Producer;


# direct methods
.method public constructor <init>(Lrx/Producer;)V
    .registers 2
    .param p1, "actual"    # Lrx/Producer;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 103
    iput-object p1, p0, Lrx/internal/operators/OperatorElementAt$InnerProducer;->actual:Lrx/Producer;

    .line 104
    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 107
    cmp-long v0, p1, v2

    if-gez v0, :cond_e

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_e
    cmp-long v0, p1, v2

    if-lez v0, :cond_24

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorElementAt$InnerProducer;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 113
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt$InnerProducer;->actual:Lrx/Producer;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3}, Lrx/Producer;->request(J)V

    .line 115
    :cond_24
    return-void
.end method
