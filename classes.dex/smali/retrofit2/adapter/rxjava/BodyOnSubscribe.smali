###### Class retrofit2.adapter.rxjava.BodyOnSubscribe (retrofit2.adapter.rxjava.BodyOnSubscribe)
.class final Lretrofit2/adapter/rxjava/BodyOnSubscribe;
.super Ljava/lang/Object;
.source "BodyOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;
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
.field private final upstream:Lrx/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$OnSubscribe",
            "<",
            "Lretrofit2/Response",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Observable$OnSubscribe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<",
            "Lretrofit2/Response",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe<TT;>;"
    .local p1, "upstream":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<Lretrofit2/Response<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe;->upstream:Lrx/Observable$OnSubscribe;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 25
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/BodyOnSubscribe;->call(Lrx/Subscriber;)V

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
    .line 33
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe;->upstream:Lrx/Observable$OnSubscribe;

    new-instance v1, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;-><init>(Lrx/Subscriber;)V

    invoke-interface {v0, v1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

###### Class retrofit2.adapter.rxjava.BodyOnSubscribe.BodySubscriber (retrofit2.adapter.rxjava.BodyOnSubscribe$BodySubscriber)
.class Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;
.super Lrx/Subscriber;
.source "BodyOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/BodyOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BodySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lretrofit2/Response",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private subscriberTerminated:Z


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber<TR;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 43
    iput-object p1, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriber:Lrx/Subscriber;

    .line 44
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 76
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber<TR;>;"
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriberTerminated:Z

    if-nez v0, :cond_9

    .line 77
    iget-object v0, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 79
    :cond_9
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber<TR;>;"
    iget-boolean v1, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriberTerminated:Z

    if-nez v1, :cond_a

    .line 64
    iget-object v1, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 73
    :goto_9
    return-void

    .line 67
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This should never happen! Report as a Retrofit bug with the full stacktrace."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 70
    .local v0, "broken":Ljava/lang/Throwable;
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 71
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 36
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber<TR;>;"
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;, "Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber<TR;>;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TR;>;"
    const/4 v5, 0x1

    .line 47
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 48
    iget-object v3, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 60
    :goto_10
    return-void

    .line 50
    :cond_11
    iput-boolean v5, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriberTerminated:Z

    .line 51
    new-instance v2, Lretrofit2/adapter/rxjava/HttpException;

    invoke-direct {v2, p1}, Lretrofit2/adapter/rxjava/HttpException;-><init>(Lretrofit2/Response;)V

    .line 53
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_18
    iget-object v3, p0, Lretrofit2/adapter/rxjava/BodyOnSubscribe$BodySubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v3, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_1e

    goto :goto_10

    .line 54
    :catch_1e
    move-exception v1

    .line 55
    .local v1, "inner":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 56
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    aput-object v1, v3, v5

    invoke-direct {v0, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 57
    .local v0, "composite":Lrx/exceptions/CompositeException;
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_10
.end method
