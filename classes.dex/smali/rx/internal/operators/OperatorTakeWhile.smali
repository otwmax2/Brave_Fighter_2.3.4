###### Class rx.internal.operators.OperatorTakeWhile (rx.internal.operators.OperatorTakeWhile)
.class public final Lrx/internal/operators/OperatorTakeWhile;
.super Ljava/lang/Object;
.source "OperatorTakeWhile.java"

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
.field final predicate:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TT;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    .local p1, "underlying":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeWhile$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTakeWhile$1;-><init>(Lrx/functions/Func1;)V

    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorTakeWhile;-><init>(Lrx/functions/Func2;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<-TT;-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeWhile;->predicate:Lrx/functions/Func2;

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeWhile;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile;, "Lrx/internal/operators/OperatorTakeWhile<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeWhile$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p1}, Lrx/internal/operators/OperatorTakeWhile$2;-><init>(Lrx/internal/operators/OperatorTakeWhile;Lrx/Subscriber;ZLrx/Subscriber;)V

    .line 90
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 91
    return-object v0
.end method

###### Class rx.internal.operators.OperatorTakeWhile.AnonymousClass1 (rx.internal.operators.OperatorTakeWhile$1)
.class Lrx/internal/operators/OperatorTakeWhile$1;
.super Ljava/lang/Object;
.source "OperatorTakeWhile.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeWhile;-><init>(Lrx/functions/Func1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<TT;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$underlying:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/functions/Func1;)V
    .registers 2

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile$1;, "Lrx/internal/operators/OperatorTakeWhile.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeWhile$1;->val$underlying:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 4
    .param p2, "index"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile$1;, "Lrx/internal/operators/OperatorTakeWhile.1;"
    .local p1, "input":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeWhile$1;->val$underlying:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile$1;, "Lrx/internal/operators/OperatorTakeWhile.1;"
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorTakeWhile$1;->call(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OperatorTakeWhile.AnonymousClass2 (rx.internal.operators.OperatorTakeWhile$2)
.class Lrx/internal/operators/OperatorTakeWhile$2;
.super Lrx/Subscriber;
.source "OperatorTakeWhile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorTakeWhile;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private counter:I

.field private done:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorTakeWhile;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorTakeWhile;Lrx/Subscriber;ZLrx/Subscriber;)V
    .registers 5
    .param p3, "x1"    # Z

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile$2;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeWhile$2;->this$0:Lrx/internal/operators/OperatorTakeWhile;

    iput-object p4, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 77
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile$2;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    if-nez v0, :cond_9

    .line 78
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 80
    :cond_9
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile$2;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    if-nez v0, :cond_9

    .line 85
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 87
    :cond_9
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorTakeWhile$2;, "Lrx/internal/operators/OperatorTakeWhile.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    .line 59
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeWhile$2;->this$0:Lrx/internal/operators/OperatorTakeWhile;

    iget-object v2, v2, Lrx/internal/operators/OperatorTakeWhile;->predicate:Lrx/functions/Func2;

    iget v3, p0, Lrx/internal/operators/OperatorTakeWhile$2;->counter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lrx/internal/operators/OperatorTakeWhile$2;->counter:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_21

    move-result v1

    .line 66
    .local v1, "isSelected":Z
    if-eqz v1, :cond_2d

    .line 67
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 73
    .end local v1    # "isSelected":Z
    :goto_20
    return-void

    .line 60
    :catch_21
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v5, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    .line 62
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-static {v0, v2, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeWhile$2;->unsubscribe()V

    goto :goto_20

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "isSelected":Z
    :cond_2d
    iput-boolean v5, p0, Lrx/internal/operators/OperatorTakeWhile$2;->done:Z

    .line 70
    iget-object v2, p0, Lrx/internal/operators/OperatorTakeWhile$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 71
    invoke-virtual {p0}, Lrx/internal/operators/OperatorTakeWhile$2;->unsubscribe()V

    goto :goto_20
.end method
