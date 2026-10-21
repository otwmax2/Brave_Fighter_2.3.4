###### Class retrofit2.adapter.rxjava.CallEnqueueOnSubscribe (retrofit2.adapter.rxjava.CallEnqueueOnSubscribe)
.class final Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;
.super Ljava/lang/Object;
.source "CallEnqueueOnSubscribe.java"

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
    .line 28
    .local p0, "this":Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;, "Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe<TT;>;"
    .local p1, "originalCall":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;->originalCall:Lretrofit2/Call;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 25
    .local p0, "this":Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;, "Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
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
    .line 34
    .local p0, "this":Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;, "Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lretrofit2/Response<TT;>;>;"
    iget-object v2, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;->originalCall:Lretrofit2/Call;

    invoke-interface {v2}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v1

    .line 35
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    new-instance v0, Lretrofit2/adapter/rxjava/CallArbiter;

    invoke-direct {v0, v1, p1}, Lretrofit2/adapter/rxjava/CallArbiter;-><init>(Lretrofit2/Call;Lrx/Subscriber;)V

    .line 36
    .local v0, "arbiter":Lretrofit2/adapter/rxjava/CallArbiter;, "Lretrofit2/adapter/rxjava/CallArbiter<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 37
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 39
    new-instance v2, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;

    invoke-direct {v2, p0, v0}, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;-><init>(Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;Lretrofit2/adapter/rxjava/CallArbiter;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 49
    return-void
.end method

###### Class retrofit2.adapter.rxjava.CallEnqueueOnSubscribe.AnonymousClass1 (retrofit2.adapter.rxjava.CallEnqueueOnSubscribe$1)
.class Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;
.super Ljava/lang/Object;
.source "CallEnqueueOnSubscribe.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;

.field final synthetic val$arbiter:Lretrofit2/adapter/rxjava/CallArbiter;


# direct methods
.method constructor <init>(Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;Lretrofit2/adapter/rxjava/CallArbiter;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;

    .prologue
    .line 39
    .local p0, "this":Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;, "Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;"
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;->this$0:Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;

    iput-object p2, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;->val$arbiter:Lretrofit2/adapter/rxjava/CallArbiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 4
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;, "Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-static {p2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 46
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;->val$arbiter:Lretrofit2/adapter/rxjava/CallArbiter;

    invoke-virtual {v0, p2}, Lretrofit2/adapter/rxjava/CallArbiter;->emitError(Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Lretrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;, "Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe$1;->val$arbiter:Lretrofit2/adapter/rxjava/CallArbiter;

    invoke-virtual {v0, p2}, Lretrofit2/adapter/rxjava/CallArbiter;->emitResponse(Lretrofit2/Response;)V

    .line 42
    return-void
.end method
