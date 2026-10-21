###### Class rx.internal.operators.OperatorAll (rx.internal.operators.OperatorAll)
.class public final Lrx/internal/operators/OperatorAll;
.super Ljava/lang/Object;
.source "OperatorAll.java"

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


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .registers 2
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
    .local p0, "this":Lrx/internal/operators/OperatorAll;, "Lrx/internal/operators/OperatorAll<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/internal/operators/OperatorAll;->predicate:Lrx/functions/Func1;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorAll;, "Lrx/internal/operators/OperatorAll<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorAll;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorAll;, "Lrx/internal/operators/OperatorAll<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lrx/Subscriber;)V

    .line 42
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<Ljava/lang/Boolean;>;"
    new-instance v1, Lrx/internal/operators/OperatorAll$1;

    invoke-direct {v1, p0, v0, p1}, Lrx/internal/operators/OperatorAll$1;-><init>(Lrx/internal/operators/OperatorAll;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V

    .line 84
    .local v1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 85
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 86
    return-object v1
.end method

###### Class rx.internal.operators.OperatorAll.AnonymousClass1 (rx.internal.operators.OperatorAll$1)
.class Lrx/internal/operators/OperatorAll$1;
.super Lrx/Subscriber;
.source "OperatorAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorAll;->call(Lrx/Subscriber;)Lrx/Subscriber;
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

.field final synthetic this$0:Lrx/internal/operators/OperatorAll;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorAll;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V
    .registers 4

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OperatorAll$1;, "Lrx/internal/operators/OperatorAll.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorAll$1;->this$0:Lrx/internal/operators/OperatorAll;

    iput-object p2, p0, Lrx/internal/operators/OperatorAll$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lrx/internal/operators/OperatorAll$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorAll$1;, "Lrx/internal/operators/OperatorAll.1;"
    const/4 v1, 0x1

    .line 78
    iget-boolean v0, p0, Lrx/internal/operators/OperatorAll$1;->done:Z

    if-nez v0, :cond_10

    .line 79
    iput-boolean v1, p0, Lrx/internal/operators/OperatorAll$1;->done:Z

    .line 80
    iget-object v0, p0, Lrx/internal/operators/OperatorAll$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 82
    :cond_10
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorAll$1;, "Lrx/internal/operators/OperatorAll.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorAll$1;->done:Z

    if-nez v0, :cond_d

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorAll$1;->done:Z

    .line 70
    iget-object v0, p0, Lrx/internal/operators/OperatorAll$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    :goto_c
    return-void

    .line 72
    :cond_d
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorAll$1;, "Lrx/internal/operators/OperatorAll.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lrx/internal/operators/OperatorAll$1;->done:Z

    if-eqz v2, :cond_5

    .line 64
    :cond_4
    :goto_4
    return-void

    .line 52
    :cond_5
    :try_start_5
    iget-object v2, p0, Lrx/internal/operators/OperatorAll$1;->this$0:Lrx/internal/operators/OperatorAll;

    iget-object v2, v2, Lrx/internal/operators/OperatorAll;->predicate:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_f} :catch_26

    .line 57
    .local v1, "result":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 58
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/operators/OperatorAll$1;->done:Z

    .line 59
    iget-object v2, p0, Lrx/internal/operators/OperatorAll$1;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lrx/internal/operators/OperatorAll$1;->unsubscribe()V

    goto :goto_4

    .line 53
    .end local v1    # "result":Ljava/lang/Boolean;
    :catch_26
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_4
.end method
