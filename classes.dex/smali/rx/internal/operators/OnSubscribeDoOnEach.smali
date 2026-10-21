###### Class rx.internal.operators.OnSubscribeDoOnEach (rx.internal.operators.OnSubscribeDoOnEach)
.class public Lrx/internal/operators/OnSubscribeDoOnEach;
.super Ljava/lang/Object;
.source "OnSubscribeDoOnEach.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final doOnEachObserver:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OnSubscribeDoOnEach;, "Lrx/internal/operators/OnSubscribeDoOnEach<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "doOnEachObserver":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDoOnEach;->source:Lrx/Observable;

    .line 36
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeDoOnEach;->doOnEachObserver:Lrx/Observer;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OnSubscribeDoOnEach;, "Lrx/internal/operators/OnSubscribeDoOnEach<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeDoOnEach;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OnSubscribeDoOnEach;, "Lrx/internal/operators/OnSubscribeDoOnEach<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDoOnEach;->source:Lrx/Observable;

    new-instance v1, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeDoOnEach;->doOnEachObserver:Lrx/Observer;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;-><init>(Lrx/Subscriber;Lrx/Observer;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 42
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeDoOnEach.DoOnEachSubscriber (rx.internal.operators.OnSubscribeDoOnEach$DoOnEachSubscriber)
.class final Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeDoOnEach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeDoOnEach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoOnEachSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final doOnEachObserver:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private done:Z

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "doOnEachObserver":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 53
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lrx/Subscriber;

    .line 54
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lrx/Observer;

    .line 55
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v1, :cond_5

    .line 71
    :goto_4
    return-void

    .line 63
    :cond_5
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v1}, Lrx/Observer;->onCompleted()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_13

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    .line 70
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_4

    .line 64
    :catch_13
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    const/4 v5, 0x1

    .line 75
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v1, :cond_9

    .line 76
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 88
    :goto_8
    return-void

    .line 79
    :cond_9
    iput-boolean v5, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    .line 81
    :try_start_b
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_16

    .line 87
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 82
    :catch_16
    move-exception v0

    .line 83
    .local v0, "e2":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lrx/Subscriber;

    new-instance v2, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;, "Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->done:Z

    if-eqz v1, :cond_5

    .line 102
    :goto_4
    return-void

    .line 96
    :cond_5
    :try_start_5
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->doOnEachObserver:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_10

    .line 101
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDoOnEach$DoOnEachSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_4

    .line 97
    :catch_10
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_4
.end method
