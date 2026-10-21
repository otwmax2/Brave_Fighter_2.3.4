###### Class rx.internal.operators.OperatorDelayWithSelector (rx.internal.operators.OperatorDelayWithSelector)
.class public final Lrx/internal/operators/OperatorDelayWithSelector;
.super Ljava/lang/Object;
.source "OperatorDelayWithSelector.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final itemDelay:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector;, "Lrx/internal/operators/OperatorDelayWithSelector<TT;TV;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "itemDelay":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/internal/operators/OperatorDelayWithSelector;->source:Lrx/Observable;

    .line 39
    iput-object p2, p0, Lrx/internal/operators/OperatorDelayWithSelector;->itemDelay:Lrx/functions/Func1;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector;, "Lrx/internal/operators/OperatorDelayWithSelector<TT;TV;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDelayWithSelector;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .registers 6
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
    .line 44
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector;, "Lrx/internal/operators/OperatorDelayWithSelector<TT;TV;>;"
    .local p1, "_child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/observers/SerializedSubscriber;

    invoke-direct {v0, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    .line 45
    .local v0, "child":Lrx/observers/SerializedSubscriber;, "Lrx/observers/SerializedSubscriber<TT;>;"
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v1

    .line 47
    .local v1, "delayedEmissions":Lrx/subjects/PublishSubject;, "Lrx/subjects/PublishSubject<Lrx/Observable<TT;>;>;"
    invoke-static {v1}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0}, Lrx/observers/Subscribers;->from(Lrx/Observer;)Lrx/Subscriber;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 49
    new-instance v2, Lrx/internal/operators/OperatorDelayWithSelector$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lrx/internal/operators/OperatorDelayWithSelector$1;-><init>(Lrx/internal/operators/OperatorDelayWithSelector;Lrx/Subscriber;Lrx/subjects/PublishSubject;Lrx/observers/SerializedSubscriber;)V

    return-object v2
.end method

###### Class rx.internal.operators.OperatorDelayWithSelector.AnonymousClass1 (rx.internal.operators.OperatorDelayWithSelector$1)
.class Lrx/internal/operators/OperatorDelayWithSelector$1;
.super Lrx/Subscriber;
.source "OperatorDelayWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDelayWithSelector;->call(Lrx/Subscriber;)Lrx/Subscriber;
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
.field final synthetic this$0:Lrx/internal/operators/OperatorDelayWithSelector;

.field final synthetic val$child:Lrx/observers/SerializedSubscriber;

.field final synthetic val$delayedEmissions:Lrx/subjects/PublishSubject;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDelayWithSelector;Lrx/Subscriber;Lrx/subjects/PublishSubject;Lrx/observers/SerializedSubscriber;)V
    .registers 5

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector$1;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->this$0:Lrx/internal/operators/OperatorDelayWithSelector;

    iput-object p3, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->val$delayedEmissions:Lrx/subjects/PublishSubject;

    iput-object p4, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->val$child:Lrx/observers/SerializedSubscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector$1;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->val$delayedEmissions:Lrx/subjects/PublishSubject;

    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->onCompleted()V

    .line 54
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector$1;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->val$child:Lrx/observers/SerializedSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector$1;, "Lrx/internal/operators/OperatorDelayWithSelector.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->val$delayedEmissions:Lrx/subjects/PublishSubject;

    iget-object v1, p0, Lrx/internal/operators/OperatorDelayWithSelector$1;->this$0:Lrx/internal/operators/OperatorDelayWithSelector;

    iget-object v1, v1, Lrx/internal/operators/OperatorDelayWithSelector;->itemDelay:Lrx/functions/Func1;

    invoke-interface {v1, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lrx/Observable;->defaultIfEmpty(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    new-instance v3, Lrx/internal/operators/OperatorDelayWithSelector$1$1;

    invoke-direct {v3, p0, p1}, Lrx/internal/operators/OperatorDelayWithSelector$1$1;-><init>(Lrx/internal/operators/OperatorDelayWithSelector$1;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    .line 75
    :goto_22
    return-void

    .line 72
    :catch_23
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_22
.end method

###### Class rx.internal.operators.OperatorDelayWithSelector.AnonymousClass1.C01891 (rx.internal.operators.OperatorDelayWithSelector$1$1)
.class Lrx/internal/operators/OperatorDelayWithSelector$1$1;
.super Ljava/lang/Object;
.source "OperatorDelayWithSelector.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDelayWithSelector$1;->onNext(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<TV;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorDelayWithSelector$1;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDelayWithSelector$1;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector$1$1;, "Lrx/internal/operators/OperatorDelayWithSelector$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDelayWithSelector$1$1;->this$1:Lrx/internal/operators/OperatorDelayWithSelector$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorDelayWithSelector$1$1;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/internal/operators/OperatorDelayWithSelector$1$1;, "Lrx/internal/operators/OperatorDelayWithSelector$1.1;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDelayWithSelector$1$1;->val$t:Ljava/lang/Object;

    return-object v0
.end method
