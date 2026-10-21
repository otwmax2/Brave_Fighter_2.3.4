###### Class rx.internal.operators.OperatorDoAfterTerminate (rx.internal.operators.OperatorDoAfterTerminate)
.class public final Lrx/internal/operators/OperatorDoAfterTerminate;
.super Ljava/lang/Object;
.source "OperatorDoAfterTerminate.java"

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
.field final action:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .registers 4
    .param p1, "action"    # Lrx/functions/Action0;

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorDoAfterTerminate;, "Lrx/internal/operators/OperatorDoAfterTerminate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_d

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Action can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_d
    iput-object p1, p0, Lrx/internal/operators/OperatorDoAfterTerminate;->action:Lrx/functions/Action0;

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorDoAfterTerminate;, "Lrx/internal/operators/OperatorDoAfterTerminate<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDoAfterTerminate;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorDoAfterTerminate;, "Lrx/internal/operators/OperatorDoAfterTerminate<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoAfterTerminate$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorDoAfterTerminate$1;-><init>(Lrx/internal/operators/OperatorDoAfterTerminate;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method

###### Class rx.internal.operators.OperatorDoAfterTerminate.AnonymousClass1 (rx.internal.operators.OperatorDoAfterTerminate$1)
.class Lrx/internal/operators/OperatorDoAfterTerminate$1;
.super Lrx/Subscriber;
.source "OperatorDoAfterTerminate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDoAfterTerminate;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorDoAfterTerminate;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDoAfterTerminate;Lrx/Subscriber;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 46
    .local p0, "this":Lrx/internal/operators/OperatorDoAfterTerminate$1;, "Lrx/internal/operators/OperatorDoAfterTerminate.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDoAfterTerminate$1;->this$0:Lrx/internal/operators/OperatorDoAfterTerminate;

    iput-object p3, p0, Lrx/internal/operators/OperatorDoAfterTerminate$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method callAction()V
    .registers 3

    .prologue
    .line 73
    .local p0, "this":Lrx/internal/operators/OperatorDoAfterTerminate$1;, "Lrx/internal/operators/OperatorDoAfterTerminate.1;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorDoAfterTerminate$1;->this$0:Lrx/internal/operators/OperatorDoAfterTerminate;

    iget-object v1, v1, Lrx/internal/operators/OperatorDoAfterTerminate;->action:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 78
    :goto_7
    return-void

    .line 74
    :catch_8
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 76
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onCompleted()V
    .registers 2

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/OperatorDoAfterTerminate$1;, "Lrx/internal/operators/OperatorDoAfterTerminate.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorDoAfterTerminate$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 67
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDoAfterTerminate$1;->callAction()V

    .line 69
    return-void

    .line 67
    :catchall_9
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorDoAfterTerminate$1;->callAction()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/OperatorDoAfterTerminate$1;, "Lrx/internal/operators/OperatorDoAfterTerminate.1;"
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorDoAfterTerminate$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 58
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDoAfterTerminate$1;->callAction()V

    .line 60
    return-void

    .line 58
    :catchall_9
    move-exception v0

    invoke-virtual {p0}, Lrx/internal/operators/OperatorDoAfterTerminate$1;->callAction()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorDoAfterTerminate$1;, "Lrx/internal/operators/OperatorDoAfterTerminate.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoAfterTerminate$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
