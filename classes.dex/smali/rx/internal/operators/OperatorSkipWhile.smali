###### Class rx.internal.operators.OperatorSkipWhile (rx.internal.operators.OperatorSkipWhile)
.class public final Lrx/internal/operators/OperatorSkipWhile;
.super Ljava/lang/Object;
.source "OperatorSkipWhile.java"

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
            "<-TT;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<-TT;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile;, "Lrx/internal/operators/OperatorSkipWhile<TT;>;"
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipWhile;->predicate:Lrx/functions/Func2;

    .line 33
    return-void
.end method

.method public static toPredicate2(Lrx/functions/Func1;)Lrx/functions/Func2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/functions/Func2",
            "<TT;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipWhile$2;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorSkipWhile$2;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile;, "Lrx/internal/operators/OperatorSkipWhile<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSkipWhile;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile;, "Lrx/internal/operators/OperatorSkipWhile<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipWhile$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorSkipWhile$1;-><init>(Lrx/internal/operators/OperatorSkipWhile;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorSkipWhile.AnonymousClass1 (rx.internal.operators.OperatorSkipWhile$1)
.class Lrx/internal/operators/OperatorSkipWhile$1;
.super Lrx/Subscriber;
.source "OperatorSkipWhile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipWhile;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field index:I

.field skipping:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorSkipWhile;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSkipWhile;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 5

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile$1;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipWhile$1;->this$0:Lrx/internal/operators/OperatorSkipWhile;

    iput-object p3, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorSkipWhile$1;->skipping:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 67
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile$1;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 68
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile$1;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 63
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
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorSkipWhile$1;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->skipping:Z

    if-nez v2, :cond_a

    .line 42
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 58
    :goto_9
    return-void

    .line 46
    :cond_a
    :try_start_a
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->this$0:Lrx/internal/operators/OperatorSkipWhile;

    iget-object v2, v2, Lrx/internal/operators/OperatorSkipWhile;->predicate:Lrx/functions/Func2;

    iget v3, p0, Lrx/internal/operators/OperatorSkipWhile$1;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lrx/internal/operators/OperatorSkipWhile$1;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_21} :catch_2d

    move-result v1

    .line 51
    .local v1, "skip":Z
    if-nez v1, :cond_34

    .line 52
    const/4 v2, 0x0

    iput-boolean v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->skipping:Z

    .line 53
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_9

    .line 47
    .end local v1    # "skip":Z
    :catch_2d
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/internal/operators/OperatorSkipWhile$1;->val$child:Lrx/Subscriber;

    invoke-static {v0, v2, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_9

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "skip":Z
    :cond_34
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OperatorSkipWhile$1;->request(J)V

    goto :goto_9
.end method

###### Class rx.internal.operators.OperatorSkipWhile.AnonymousClass2 (rx.internal.operators.OperatorSkipWhile$2)
.class final Lrx/internal/operators/OperatorSkipWhile$2;
.super Ljava/lang/Object;
.source "OperatorSkipWhile.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSkipWhile;->toPredicate2(Lrx/functions/Func1;)Lrx/functions/Func2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$predicate:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/functions/Func1;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lrx/internal/operators/OperatorSkipWhile$2;->val$predicate:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 4
    .param p2, "t2"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSkipWhile$2;->val$predicate:Lrx/functions/Func1;

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
    .line 78
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorSkipWhile$2;->call(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
