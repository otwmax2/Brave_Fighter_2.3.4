###### Class retrofit2.ExecutorCallAdapterFactory (retrofit2.ExecutorCallAdapterFactory)
.class final Lretrofit2/ExecutorCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "ExecutorCallAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;
    }
.end annotation


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 27
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 28
    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 29
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .registers 7
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lretrofit2/ExecutorCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lretrofit2/Call;

    if-eq v1, v2, :cond_a

    .line 34
    const/4 v1, 0x0

    .line 37
    :goto_9
    return-object v1

    .line 36
    :cond_a
    invoke-static {p1}, Lretrofit2/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 37
    .local v0, "responseType":Ljava/lang/reflect/Type;
    new-instance v1, Lretrofit2/ExecutorCallAdapterFactory$1;

    invoke-direct {v1, p0, v0}, Lretrofit2/ExecutorCallAdapterFactory$1;-><init>(Lretrofit2/ExecutorCallAdapterFactory;Ljava/lang/reflect/Type;)V

    goto :goto_9
.end method

###### Class retrofit2.ExecutorCallAdapterFactory.AnonymousClass1 (retrofit2.ExecutorCallAdapterFactory$1)
.class Lretrofit2/ExecutorCallAdapterFactory$1;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/ExecutorCallAdapterFactory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter",
        "<",
        "Ljava/lang/Object;",
        "Lretrofit2/Call",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/ExecutorCallAdapterFactory;

.field final synthetic val$responseType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lretrofit2/ExecutorCallAdapterFactory;Ljava/lang/reflect/Type;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit2/ExecutorCallAdapterFactory;

    .prologue
    .line 37
    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory;

    iput-object p2, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lretrofit2/ExecutorCallAdapterFactory$1;->adapt(Lretrofit2/Call;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public adapt(Lretrofit2/Call;)Lretrofit2/Call;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Object;>;"
    new-instance v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory;

    iget-object v1, v1, Lretrofit2/ExecutorCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V

    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method

###### Class retrofit2.ExecutorCallAdapterFactory.ExecutorCallbackCall (retrofit2.ExecutorCallAdapterFactory$ExecutorCallbackCall)
.class final Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ExecutorCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExecutorCallbackCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;

.field final delegate:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V
    .registers 3
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lretrofit2/Call",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    .local p2, "delegate":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 54
    iput-object p2, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    .line 55
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 93
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 94
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    invoke-virtual {p0}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->clone()Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lretrofit2/Call;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    new-instance v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v2}, Lretrofit2/Call;->clone()Lretrofit2/Call;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V

    return-object v0
.end method

.method public enqueue(Lretrofit2/Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    .local p1, "callback":Lretrofit2/Callback;, "Lretrofit2/Callback<TT;>;"
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_a
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    new-instance v1, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    invoke-direct {v1, p0, p1}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;-><init>(Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;Lretrofit2/Callback;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 82
    return-void
.end method

.method public execute()Lretrofit2/Response;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 97
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isExecuted()Z
    .registers 2

    .prologue
    .line 85
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isExecuted()Z

    move-result v0

    return v0
.end method

.method public request()Lokhttp3/Request;
    .registers 2

    .prologue
    .line 106
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

###### Class retrofit2.ExecutorCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1 (retrofit2.ExecutorCallAdapterFactory$ExecutorCallbackCall$1)
.class Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->enqueue(Lretrofit2/Callback;)V
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
.field final synthetic this$0:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

.field final synthetic val$callback:Lretrofit2/Callback;


# direct methods
.method constructor <init>(Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;Lretrofit2/Callback;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    .prologue
    .line 60
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;"
    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iput-object p2, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 5
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
    .line 75
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;

    invoke-direct {v1, p0, p2}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;-><init>(Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 5
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
    .line 62
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;

    invoke-direct {v1, p0, p2}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;-><init>(Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Response;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

###### Class retrofit2.ExecutorCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1.RunnableC01741 (retrofit2.ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1)
.class Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

.field final synthetic val$response:Lretrofit2/Response;


# direct methods
.method constructor <init>(Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Response;)V
    .registers 3
    .param p1, "this$1"    # Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    .prologue
    .line 62
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;"
    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iput-object p2, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->val$response:Lretrofit2/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 64
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;"
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 66
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v1, v1, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 70
    :goto_1e
    return-void

    .line 68
    :cond_1f
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v1, v1, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v2, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->val$response:Lretrofit2/Response;

    invoke-interface {v0, v1, v2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    goto :goto_1e
.end method

###### Class retrofit2.ExecutorCallAdapterFactory.ExecutorCallbackCall.AnonymousClass1.AnonymousClass2 (retrofit2.ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2)
.class Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "this$1"    # Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    .prologue
    .line 75
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;"
    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iput-object p2, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 77
    .local p0, "this":Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;, "Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;"
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v1, v1, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v2, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$2;->val$t:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method
