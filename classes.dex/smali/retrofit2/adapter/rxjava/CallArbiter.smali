###### Class retrofit2.adapter.rxjava.CallArbiter (retrofit2.adapter.rxjava.CallArbiter)
.class final Lretrofit2/adapter/rxjava/CallArbiter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CallArbiter.java"

# interfaces
.implements Lrx/Subscription;
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Subscription;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final STATE_HAS_RESPONSE:I = 0x2

.field private static final STATE_REQUESTED:I = 0x1

.field private static final STATE_TERMINATED:I = 0x3

.field private static final STATE_WAITING:I


# instance fields
.field private final call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile response:Lretrofit2/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lretrofit2/Response",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-",
            "Lretrofit2/Response",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lretrofit2/Response<TT;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 42
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->call:Lretrofit2/Call;

    .line 43
    iput-object p2, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Lrx/Subscriber;

    .line 44
    return-void
.end method

.method private deliverResponse(Lretrofit2/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_b

    .line 115
    iget-object v3, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_11

    .line 129
    :cond_b
    :try_start_b
    iget-object v3, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Lrx/Subscriber;

    invoke-virtual {v3}, Lrx/Subscriber;->onCompleted()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_39

    .line 134
    :goto_10
    return-void

    .line 117
    :catch_11
    move-exception v2

    .line 118
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 120
    :try_start_15
    iget-object v3, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Lrx/Subscriber;

    invoke-virtual {v3, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_10

    .line 121
    :catch_1b
    move-exception v1

    .line 122
    .local v1, "inner":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 123
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v0, v3}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 124
    .local v0, "composite":Lrx/exceptions/CompositeException;
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 130
    .end local v0    # "composite":Lrx/exceptions/CompositeException;
    .end local v1    # "inner":Ljava/lang/Throwable;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_39
    move-exception v2

    .line 131
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 132
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_10
.end method


# virtual methods
.method emitError(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 137
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lretrofit2/adapter/rxjava/CallArbiter;->set(I)V

    .line 139
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_f

    .line 141
    :try_start_a
    iget-object v2, p0, Lretrofit2/adapter/rxjava/CallArbiter;->subscriber:Lrx/Subscriber;

    invoke-virtual {v2, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_10

    .line 148
    :cond_f
    :goto_f
    return-void

    .line 142
    :catch_10
    move-exception v1

    .line 143
    .local v1, "inner":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 144
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 145
    .local v0, "composite":Lrx/exceptions/CompositeException;
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v2

    invoke-virtual {v2}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method emitResponse(Lretrofit2/Response;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    .local p1, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->get()I

    move-result v0

    .line 87
    .local v0, "state":I
    packed-switch v0, :pswitch_data_3e

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :pswitch_20
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->response:Lretrofit2/Response;

    .line 90
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lretrofit2/adapter/rxjava/CallArbiter;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :goto_2a
    return-void

    .line 96
    :pswitch_2b
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lretrofit2/adapter/rxjava/CallArbiter;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lretrofit2/adapter/rxjava/CallArbiter;->deliverResponse(Lretrofit2/Response;)V

    goto :goto_2a

    .line 104
    :pswitch_37
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 87
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_2b
        :pswitch_37
        :pswitch_37
    .end packed-switch
.end method

.method public isUnsubscribed()Z
    .registers 2

    .prologue
    .line 51
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public request(J)V
    .registers 8
    .param p1, "amount"    # J

    .prologue
    .line 55
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_7

    .line 76
    :goto_6
    :pswitch_6
    return-void

    .line 59
    :cond_7
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->get()I

    move-result v0

    .line 60
    .local v0, "state":I
    packed-switch v0, :pswitch_data_3e

    .line 79
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :pswitch_27
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lretrofit2/adapter/rxjava/CallArbiter;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    .line 68
    :pswitch_30
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lretrofit2/adapter/rxjava/CallArbiter;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 69
    iget-object v1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->response:Lretrofit2/Response;

    invoke-direct {p0, v1}, Lretrofit2/adapter/rxjava/CallArbiter;->deliverResponse(Lretrofit2/Response;)V

    goto :goto_6

    .line 60
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_27
        :pswitch_6
        :pswitch_30
        :pswitch_6
    .end packed-switch
.end method

.method public unsubscribe()V
    .registers 2

    .prologue
    .line 47
    .local p0, "this":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 48
    return-void
.end method
