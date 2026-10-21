###### Class retrofit2.adapter.rxjava.CallExecuteOnSubscribe (retrofit2.adapter.rxjava.CallExecuteOnSubscribe)
.class final Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;
.super Ljava/lang/Object;
.source "CallExecuteOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lretrofit2/Response",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final originalCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;, "Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe<TT;>;"
    .local p1, "originalCall":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;->originalCall:Lretrofit2/Call;

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 24
    .local p0, "this":Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;, "Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lretrofit2/Response",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;, "Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lretrofit2/Response<TT;>;>;"
    iget-object v4, p0, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;->originalCall:Lretrofit2/Call;

    invoke-interface {v4}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v1

    .line 34
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    new-instance v0, Lretrofit2/adapter/rxjava/CallArbiter;

    invoke-direct {v0, v1, p1}, Lretrofit2/adapter/rxjava/CallArbiter;-><init>(Lretrofit2/Call;Lrx/Subscriber;)V

    .line 35
    .local v0, "arbiter":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 36
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 40
    :try_start_11
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_19

    move-result-object v2

    .line 46
    .local v2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    invoke-virtual {v0, v2}, Lretrofit2/adapter/rxjava/CallArbiter;->emitResponse(Lretrofit2/Response;)V

    .line 47
    .end local v2    # "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :goto_18
    return-void

    .line 41
    :catch_19
    move-exception v3

    .line 42
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {v0, v3}, Lretrofit2/adapter/rxjava/CallArbiter;->emitError(Ljava/lang/Throwable;)V

    goto :goto_18
.end method
