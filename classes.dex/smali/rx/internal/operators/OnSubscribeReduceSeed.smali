###### Class rx.internal.operators.OnSubscribeReduceSeed (rx.internal.operators.OnSubscribeReduceSeed)
.class public final Lrx/internal/operators/OnSubscribeReduceSeed;
.super Ljava/lang/Object;
.source "OnSubscribeReduceSeed.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final reducer:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field

.field final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Ljava/lang/Object;Lrx/functions/Func2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;TR;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduceSeed;, "Lrx/internal/operators/OnSubscribeReduceSeed<TT;TR;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TR;"
    .local p3, "reducer":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->source:Lrx/Observable;

    .line 34
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->initialValue:Ljava/lang/Object;

    .line 35
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->reducer:Lrx/functions/Func2;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduceSeed;, "Lrx/internal/operators/OnSubscribeReduceSeed<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeReduceSeed;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduceSeed;, "Lrx/internal/operators/OnSubscribeReduceSeed<TT;TR;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->initialValue:Ljava/lang/Object;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->reducer:Lrx/functions/Func2;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;-><init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/functions/Func2;)V

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduceSeed;->source:Lrx/Observable;

    invoke-virtual {v0, v1}, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;->subscribeTo(Lrx/Observable;)V

    .line 41
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeReduceSeed.ReduceSeedSubscriber (rx.internal.operators.OnSubscribeReduceSeed$ReduceSeedSubscriber)
.class final Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;
.super Lrx/internal/operators/DeferredScalarSubscriber;
.source "OnSubscribeReduceSeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeReduceSeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceSeedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/DeferredScalarSubscriber",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field final reducer:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/functions/Func2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;TR;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;, "Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber<TT;TR;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TR;"
    .local p3, "reducer":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/DeferredScalarSubscriber;-><init>(Lrx/Subscriber;)V

    .line 49
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;->value:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;->hasValue:Z

    .line 51
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;->reducer:Lrx/functions/Func2;

    .line 52
    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;, "Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;->reducer:Lrx/functions/Func2;

    iget-object v2, p0, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;->value:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;->value:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    .line 63
    :goto_a
    return-void

    .line 58
    :catch_b
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;->unsubscribe()V

    .line 61
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduceSeed$ReduceSeedSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_a
.end method
