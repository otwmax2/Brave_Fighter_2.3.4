###### Class retrofit2.adapter.rxjava.RxJavaCallAdapter (retrofit2.adapter.rxjava.RxJavaCallAdapter)
.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapter;
.super Ljava/lang/Object;
.source "RxJavaCallAdapter.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava/RxJavaCallAdapter$CompletableHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter",
        "<TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final isAsync:Z

.field private final isBody:Z

.field private final isCompletable:Z

.field private final isResult:Z

.field private final isSingle:Z

.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lrx/Scheduler;ZZZZZ)V
    .registers 8
    .param p1, "responseType"    # Ljava/lang/reflect/Type;
    .param p2, "scheduler"    # Lrx/Scheduler;
    .param p3, "isAsync"    # Z
    .param p4, "isResult"    # Z
    .param p5, "isBody"    # Z
    .param p6, "isSingle"    # Z
    .param p7, "isCompletable"    # Z

    .prologue
    .line 36
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapter;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapter<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->responseType:Ljava/lang/reflect/Type;

    .line 38
    iput-object p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->scheduler:Lrx/Scheduler;

    .line 39
    iput-boolean p3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isAsync:Z

    .line 40
    iput-boolean p4, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isResult:Z

    .line 41
    iput-boolean p5, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isBody:Z

    .line 42
    iput-boolean p6, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isSingle:Z

    .line 43
    iput-boolean p7, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isCompletable:Z

    .line 44
    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapter;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapter<TR;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    iget-boolean v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isAsync:Z

    if-eqz v3, :cond_29

    .line 52
    new-instance v0, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava/CallEnqueueOnSubscribe;-><init>(Lretrofit2/Call;)V

    .line 56
    .local v0, "callFunc":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<Lretrofit2/Response<TR;>;>;"
    :goto_9
    iget-boolean v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isResult:Z

    if-eqz v3, :cond_2f

    .line 57
    new-instance v1, Lretrofit2/adapter/rxjava/ResultOnSubscribe;

    invoke-direct {v1, v0}, Lretrofit2/adapter/rxjava/ResultOnSubscribe;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 63
    .local v1, "func":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<*>;"
    :goto_12
    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v2

    .line 65
    .local v2, "observable":Lrx/Observable;, "Lrx/Observable<*>;"
    iget-object v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->scheduler:Lrx/Scheduler;

    if-eqz v3, :cond_20

    .line 66
    iget-object v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->scheduler:Lrx/Scheduler;

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    .line 69
    :cond_20
    iget-boolean v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isSingle:Z

    if-eqz v3, :cond_3b

    .line 70
    invoke-virtual {v2}, Lrx/Observable;->toSingle()Lrx/Single;

    move-result-object v2

    .line 75
    .end local v2    # "observable":Lrx/Observable;, "Lrx/Observable<*>;"
    :cond_28
    :goto_28
    return-object v2

    .line 53
    .end local v0    # "callFunc":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<Lretrofit2/Response<TR;>;>;"
    .end local v1    # "func":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<*>;"
    :cond_29
    new-instance v0, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava/CallExecuteOnSubscribe;-><init>(Lretrofit2/Call;)V

    goto :goto_9

    .line 58
    .restart local v0    # "callFunc":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<Lretrofit2/Response<TR;>;>;"
    :cond_2f
    iget-boolean v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isBody:Z

    if-eqz v3, :cond_39

    .line 59
    new-instance v1, Lretrofit2/adapter/rxjava/BodyOnSubscribe;

    invoke-direct {v1, v0}, Lretrofit2/adapter/rxjava/BodyOnSubscribe;-><init>(Lrx/Observable$OnSubscribe;)V

    .restart local v1    # "func":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<*>;"
    goto :goto_12

    .line 61
    .end local v1    # "func":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<*>;"
    :cond_39
    move-object v1, v0

    .restart local v1    # "func":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<*>;"
    goto :goto_12

    .line 72
    .restart local v2    # "observable":Lrx/Observable;, "Lrx/Observable<*>;"
    :cond_3b
    iget-boolean v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->isCompletable:Z

    if-eqz v3, :cond_28

    .line 73
    invoke-static {v2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapter$CompletableHelper;->toCompletable(Lrx/Observable;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_28
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 47
    .local p0, "this":Lretrofit2/adapter/rxjava/RxJavaCallAdapter;, "Lretrofit2/adapter/rxjava/RxJavaCallAdapter<TR;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method

###### Class retrofit2.adapter.rxjava.RxJavaCallAdapter.CompletableHelper (retrofit2.adapter.rxjava.RxJavaCallAdapter$CompletableHelper)
.class final Lretrofit2/adapter/rxjava/RxJavaCallAdapter$CompletableHelper;
.super Ljava/lang/Object;
.source "RxJavaCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava/RxJavaCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompletableHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toCompletable(Lrx/Observable;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "observable":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-virtual {p0}, Lrx/Observable;->toCompletable()Lrx/Completable;

    move-result-object v0

    return-object v0
.end method
