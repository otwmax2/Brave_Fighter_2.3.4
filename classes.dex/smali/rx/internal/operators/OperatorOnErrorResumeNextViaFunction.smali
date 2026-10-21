###### Class rx.internal.operators.OperatorOnErrorResumeNextViaFunction (rx.internal.operators.OperatorOnErrorResumeNextViaFunction)
.class public final Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

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
.field final resumeFunction:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable",
            "<+TT;>;>;"
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
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    .local p1, "f":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+Lrx/Observable<+TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->resumeFunction:Lrx/functions/Func1;

    .line 81
    return-void
.end method

.method public static withException(Lrx/Observable;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    new-instance v1, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$3;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$3;-><init>(Lrx/Observable;)V

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static withOther(Lrx/Observable;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    new-instance v1, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$2;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$2;-><init>(Lrx/Observable;)V

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method

.method public static withSingle(Lrx/functions/Func1;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "resumeFunction":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    new-instance v1, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;-><init>(Lrx/functions/Func1;)V

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;-><init>(Lrx/functions/Func1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 5
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
    .line 85
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    .line 87
    .local v0, "pa":Lrx/internal/producers/ProducerArbiter;
    new-instance v2, Lrx/subscriptions/SerialSubscription;

    invoke-direct {v2}, Lrx/subscriptions/SerialSubscription;-><init>()V

    .line 89
    .local v2, "serial":Lrx/subscriptions/SerialSubscription;
    new-instance v1, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    invoke-direct {v1, p0, p1, v0, v2}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;-><init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;Lrx/subscriptions/SerialSubscription;)V

    .line 163
    .local v1, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {v2, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 165
    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 166
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 168
    return-object v1
.end method

###### Class rx.internal.operators.OperatorOnErrorResumeNextViaFunction.AnonymousClass1 (rx.internal.operators.OperatorOnErrorResumeNextViaFunction$1)
.class final Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->withSingle(Lrx/functions/Func1;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$resumeFunction:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/functions/Func1;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$resumeFunction:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->call(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Throwable;)Lrx/Observable;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$1;->val$resumeFunction:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class rx.internal.operators.OperatorOnErrorResumeNextViaFunction.AnonymousClass2 (rx.internal.operators.OperatorOnErrorResumeNextViaFunction$2)
.class final Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$2;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->withOther(Lrx/Observable;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$other:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$2;->val$other:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$2;->call(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Throwable;)Lrx/Observable;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$2;->val$other:Lrx/Observable;

    return-object v0
.end method

###### Class rx.internal.operators.OperatorOnErrorResumeNextViaFunction.AnonymousClass3 (rx.internal.operators.OperatorOnErrorResumeNextViaFunction$3)
.class final Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$3;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->withException(Lrx/Observable;)Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Throwable;",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$other:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$3;->val$other:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 68
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$3;->call(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Throwable;)Lrx/Observable;
    .registers 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_7

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$3;->val$other:Lrx/Observable;

    .line 74
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    goto :goto_6
.end method

###### Class rx.internal.operators.OperatorOnErrorResumeNextViaFunction.AnonymousClass4 (rx.internal.operators.OperatorOnErrorResumeNextViaFunction$4)
.class Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;
.super Lrx/Subscriber;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field private done:Z

.field produced:J

.field final synthetic this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

.field final synthetic val$child:Lrx/Subscriber;

.field final synthetic val$pa:Lrx/internal/producers/ProducerArbiter;

.field final synthetic val$serial:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;Lrx/subscriptions/SerialSubscription;)V
    .registers 5

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    iput-object p3, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lrx/internal/producers/ProducerArbiter;

    iput-object p4, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$serial:Lrx/subscriptions/SerialSubscription;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v0, :cond_5

    .line 102
    :goto_4
    return-void

    .line 100
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    .line 101
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-boolean v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v5, :cond_b

    .line 107
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 108
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 146
    :goto_a
    return-void

    .line 111
    :cond_b
    const/4 v5, 0x1

    iput-boolean v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    .line 113
    :try_start_e
    invoke-virtual {p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->unsubscribe()V

    .line 115
    new-instance v1, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;-><init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;)V

    .line 133
    .local v1, "next":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v5, v1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 135
    iget-wide v2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    .line 136
    .local v2, "p":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_28

    .line 137
    iget-object v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v5, v2, v3}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    .line 140
    :cond_28
    iget-object v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->this$0:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    iget-object v5, v5, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;->resumeFunction:Lrx/functions/Func1;

    invoke-interface {v5, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/Observable;

    .line 142
    .local v4, "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-virtual {v4, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_35} :catch_36

    goto :goto_a

    .line 143
    .end local v1    # "next":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .end local v2    # "p":J
    .end local v4    # "resume":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    :catch_36
    move-exception v0

    .line 144
    .local v0, "e2":Ljava/lang/Throwable;
    iget-object v5, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-static {v0, v5}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_a
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->done:Z

    if-eqz v0, :cond_5

    .line 155
    :goto_4
    return-void

    .line 153
    :cond_5
    iget-wide v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->produced:J

    .line 154
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 159
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction.4;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 160
    return-void
.end method

###### Class rx.internal.operators.OperatorOnErrorResumeNextViaFunction.AnonymousClass4.AnonymousClass1 (rx.internal.operators.OperatorOnErrorResumeNextViaFunction$4$1)
.class Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;
.super Lrx/Subscriber;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->onError(Ljava/lang/Throwable;)V
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
.field final synthetic this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;)V
    .registers 2

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 127
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 123
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
    .line 118
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .registers 3
    .param p1, "producer"    # Lrx/Producer;

    .prologue
    .line 130
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;

    iget-object v0, v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4;->val$pa:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    .line 131
    return-void
.end method
