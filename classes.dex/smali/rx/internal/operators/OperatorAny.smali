###### Class rx.internal.operators.OperatorAny (rx.internal.operators.OperatorAny)
.class public final Lrx/internal/operators/OperatorAny;
.super Ljava/lang/Object;
.source "OperatorAny.java"

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
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final predicate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final returnOnEmpty:Z


# direct methods
.method public constructor <init>(Lrx/functions/Func1;Z)V
    .registers 3
    .param p2, "returnOnEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorAny;, "Lrx/internal/operators/OperatorAny<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OperatorAny;->predicate:Lrx/functions/Func1;

    .line 37
    iput-boolean p2, p0, Lrx/internal/operators/OperatorAny;->returnOnEmpty:Z

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lrx/internal/operators/OperatorAny;, "Lrx/internal/operators/OperatorAny<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorAny;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorAny;, "Lrx/internal/operators/OperatorAny<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lrx/Subscriber;)V

    .line 43
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<Ljava/lang/Boolean;>;"
    new-instance v1, Lrx/internal/operators/OperatorAny$1;

    invoke-direct {v1, p0, v0, p1}, Lrx/internal/operators/OperatorAny$1;-><init>(Lrx/internal/operators/OperatorAny;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V

    .line 92
    .local v1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 93
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 94
    return-object v1
.end method

###### Class rx.internal.operators.OperatorAny.AnonymousClass1 (rx.internal.operators.OperatorAny$1)
.class Lrx/internal/operators/OperatorAny$1;
.super Lrx/Subscriber;
.source "OperatorAny.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorAny;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field done:Z

.field hasElements:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorAny;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorAny;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/operators/OperatorAny$1;, "Lrx/internal/operators/OperatorAny.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    iput-object p2, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/OperatorAny$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 81
    .local p0, "this":Lrx/internal/operators/OperatorAny$1;, "Lrx/internal/operators/OperatorAny.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    if-nez v0, :cond_15

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    .line 83
    iget-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->hasElements:Z

    if-eqz v0, :cond_16

    .line 84
    iget-object v0, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 89
    :cond_15
    :goto_15
    return-void

    .line 86
    :cond_16
    iget-object v0, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iget-object v1, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    iget-boolean v1, v1, Lrx/internal/operators/OperatorAny;->returnOnEmpty:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorAny$1;, "Lrx/internal/operators/OperatorAny.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    if-nez v0, :cond_d

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    .line 73
    iget-object v0, p0, Lrx/internal/operators/OperatorAny$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 77
    :goto_c
    return-void

    .line 75
    :cond_d
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorAny$1;, "Lrx/internal/operators/OperatorAny.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    .line 49
    iget-boolean v2, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    if-eqz v2, :cond_6

    .line 67
    :cond_5
    :goto_5
    return-void

    .line 52
    :cond_6
    iput-boolean v3, p0, Lrx/internal/operators/OperatorAny$1;->hasElements:Z

    .line 55
    :try_start_8
    iget-object v2, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    iget-object v2, v2, Lrx/internal/operators/OperatorAny;->predicate:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_15} :catch_2e

    move-result v1

    .line 60
    .local v1, "result":Z
    if-eqz v1, :cond_5

    .line 61
    iput-boolean v3, p0, Lrx/internal/operators/OperatorAny$1;->done:Z

    .line 62
    iget-object v4, p0, Lrx/internal/operators/OperatorAny$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iget-object v2, p0, Lrx/internal/operators/OperatorAny$1;->this$0:Lrx/internal/operators/OperatorAny;

    iget-boolean v2, v2, Lrx/internal/operators/OperatorAny;->returnOnEmpty:Z

    if-nez v2, :cond_33

    move v2, v3

    :goto_23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lrx/internal/operators/OperatorAny$1;->unsubscribe()V

    goto :goto_5

    .line 56
    .end local v1    # "result":Z
    :catch_2e
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_5

    .line 62
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "result":Z
    :cond_33
    const/4 v2, 0x0

    goto :goto_23
.end method
