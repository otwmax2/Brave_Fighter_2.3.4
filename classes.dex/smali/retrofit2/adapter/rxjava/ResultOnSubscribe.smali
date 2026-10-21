###### Class retrofit2.adapter.rxjava.ResultOnSubscribe (retrofit2.adapter.rxjava.ResultOnSubscribe)
.class final Lretrofit2/adapter/rxjava/ResultOnSubscribe;
.super Ljava/lang/Object;
.source "ResultOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lretrofit2/adapter/rxjava/Result",
        "<TT;>;>;"
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
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe<TT;>;"
    .local p1, "upstream":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<Lretrofit2/Response<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe;->upstream:Lrx/Observable$OnSubscribe;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 25
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/ResultOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lretrofit2/adapter/rxjava/Result",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lretrofit2/adapter/rxjava/Result<TT;>;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe;->upstream:Lrx/Observable$OnSubscribe;

    new-instance v1, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;-><init>(Lrx/Subscriber;)V

    invoke-interface {v0, v1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

###### Class retrofit2.adapter.rxjava.ResultOnSubscribe.ResultSubscriber (retrofit2.adapter.rxjava.ResultOnSubscribe$ResultSubscriber)
.class Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;
.super Lrx/Subscriber;
.source "ResultOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/ResultOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultSubscriber"
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
            "<-",
            "Lretrofit2/adapter/rxjava/Result",
            "<TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lretrofit2/adapter/rxjava/Result",
            "<TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber<TR;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lretrofit2/adapter/rxjava/Result<TR;>;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 41
    iput-object p1, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    .line 42
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 65
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber<TR;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 66
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber<TR;>;"
    :try_start_0
    iget-object v3, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    invoke-static {p1}, Lretrofit2/adapter/rxjava/Result;->error(Ljava/lang/Throwable;)Lretrofit2/adapter/rxjava/Result;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_f

    .line 61
    iget-object v3, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V

    .line 62
    :goto_e
    return-void

    .line 51
    :catch_f
    move-exception v2

    .line 53
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_10
    iget-object v3, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v3, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_e

    .line 54
    :catch_16
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

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v0, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 57
    .local v0, "composite":Lrx/exceptions/CompositeException;
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 36
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber<TR;>;"
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->onNext(Lretrofit2/Response;)V

    return-void
.end method

.method public onNext(Lretrofit2/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;, "Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber<TR;>;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TR;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/ResultOnSubscribe$ResultSubscriber;->subscriber:Lrx/Subscriber;

    invoke-static {p1}, Lretrofit2/adapter/rxjava/Result;->response(Lretrofit2/Response;)Lretrofit2/adapter/rxjava/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
