###### Class rx.internal.operators.OnSubscribeReduce (rx.internal.operators.OnSubscribeReduce)
.class public final Lrx/internal/operators/OnSubscribeReduce;
.super Ljava/lang/Object;
.source "OnSubscribeReduce.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;
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
.field final reducer:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TT;TT;TT;>;"
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
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func2",
            "<TT;TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce;, "Lrx/internal/operators/OnSubscribeReduce<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "reducer":Lrx/functions/Func2;, "Lrx/functions/Func2<TT;TT;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduce;->source:Lrx/Observable;

    .line 35
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeReduce;->reducer:Lrx/functions/Func2;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce;, "Lrx/internal/operators/OnSubscribeReduce<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeReduce;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce;, "Lrx/internal/operators/OnSubscribeReduce<TT;>;"
    .local p1, "t":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce;->reducer:Lrx/functions/Func2;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/Func2;)V

    .line 41
    .local v0, "parent":Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 42
    new-instance v1, Lrx/internal/operators/OnSubscribeReduce$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OnSubscribeReduce$1;-><init>(Lrx/internal/operators/OnSubscribeReduce;Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 48
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce;->source:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 49
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeReduce.AnonymousClass1 (rx.internal.operators.OnSubscribeReduce$1)
.class Lrx/internal/operators/OnSubscribeReduce$1;
.super Ljava/lang/Object;
.source "OnSubscribeReduce.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeReduce;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeReduce;

.field final synthetic val$parent:Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeReduce;Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;)V
    .registers 3

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$1;, "Lrx/internal/operators/OnSubscribeReduce.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduce$1;->this$0:Lrx/internal/operators/OnSubscribeReduce;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeReduce$1;->val$parent:Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$1;, "Lrx/internal/operators/OnSubscribeReduce.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$1;->val$parent:Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->downstreamRequest(J)V

    .line 46
    return-void
.end method

###### Class rx.internal.operators.OnSubscribeReduce.ReduceSubscriber (rx.internal.operators.OnSubscribeReduce$ReduceSubscriber)
.class final Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeReduce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeReduce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReduceSubscriber"
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


# static fields
.field static final EMPTY:Ljava/lang/Object;


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final reducer:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TT;TT;TT;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/functions/Func2",
            "<TT;TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "reducer":Lrx/functions/Func2;, "Lrx/functions/Func2<TT;TT;TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 65
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    .line 66
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->reducer:Lrx/functions/Func2;

    .line 67
    sget-object v0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    .line 68
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->request(J)V

    .line 69
    return-void
.end method


# virtual methods
.method downstreamRequest(J)V
    .registers 8
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    const-wide/16 v2, 0x0

    .line 118
    cmp-long v0, p1, v2

    if-gez v0, :cond_1f

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1f
    cmp-long v0, p1, v2

    if-eqz v0, :cond_2b

    .line 122
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->request(J)V

    .line 124
    :cond_2b
    return-void
.end method

.method public onCompleted()V
    .registers 4

    .prologue
    .line 104
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->done:Z

    if-eqz v1, :cond_5

    .line 115
    :goto_4
    return-void

    .line 107
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->done:Z

    .line 108
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    .line 109
    .local v0, "o":Ljava/lang/Object;
    sget-object v1, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_19

    .line 110
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    goto :goto_4

    .line 113
    :cond_19
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    iget-boolean v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->done:Z

    if-nez v0, :cond_d

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->done:Z

    .line 95
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 99
    :goto_c
    return-void

    .line 97
    :cond_d
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->done:Z

    if-eqz v2, :cond_5

    .line 89
    :goto_4
    return-void

    .line 77
    :cond_5
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    .line 78
    .local v1, "o":Ljava/lang/Object;
    sget-object v2, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->EMPTY:Ljava/lang/Object;

    if-ne v1, v2, :cond_e

    .line 79
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;

    goto :goto_4

    .line 82
    :cond_e
    :try_start_e
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->reducer:Lrx/functions/Func2;

    invoke-interface {v2, v1, p1}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->value:Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_4

    .line 83
    :catch_17
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 85
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->unsubscribe()V

    .line 86
    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_4
.end method
