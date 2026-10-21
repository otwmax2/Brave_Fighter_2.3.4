###### Class bolts.Task (bolts.Task)
.class public Lbolts/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/Task$TaskCompletionSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private cancelled:Z

.field private complete:Z

.field private continuations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbolts/Continuation",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Exception;

.field private final lock:Ljava/lang/Object;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    invoke-static {}, Lbolts/BoltsExecutors;->background()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 38
    invoke-static {}, Lbolts/BoltsExecutors;->immediate()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 43
    invoke-static {}, Lbolts/AndroidExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 52
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbolts/Task;->continuations:Ljava/util/List;

    .line 54
    return-void
.end method

.method static synthetic access$100(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p0, "x0"    # Lbolts/Task$TaskCompletionSource;
    .param p1, "x1"    # Lbolts/Continuation;
    .param p2, "x2"    # Lbolts/Task;
    .param p3, "x3"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lbolts/Task;->completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$200(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p0, "x0"    # Lbolts/Task$TaskCompletionSource;
    .param p1, "x1"    # Lbolts/Continuation;
    .param p2, "x2"    # Lbolts/Task;
    .param p3, "x3"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 27
    invoke-static {p0, p1, p2, p3}, Lbolts/Task;->completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$300(Lbolts/Task;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lbolts/Task;

    .prologue
    .line 27
    iget-object v0, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lbolts/Task;)Z
    .registers 2
    .param p0, "x0"    # Lbolts/Task;

    .prologue
    .line 27
    iget-boolean v0, p0, Lbolts/Task;->complete:Z

    return v0
.end method

.method static synthetic access$402(Lbolts/Task;Z)Z
    .registers 2
    .param p0, "x0"    # Lbolts/Task;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lbolts/Task;->complete:Z

    return p1
.end method

.method static synthetic access$502(Lbolts/Task;Z)Z
    .registers 2
    .param p0, "x0"    # Lbolts/Task;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lbolts/Task;->cancelled:Z

    return p1
.end method

.method static synthetic access$600(Lbolts/Task;)V
    .registers 1
    .param p0, "x0"    # Lbolts/Task;

    .prologue
    .line 27
    invoke-direct {p0}, Lbolts/Task;->runContinuations()V

    return-void
.end method

.method static synthetic access$702(Lbolts/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lbolts/Task;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 27
    iput-object p1, p0, Lbolts/Task;->result:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lbolts/Task;Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 2
    .param p0, "x0"    # Lbolts/Task;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 27
    iput-object p1, p0, Lbolts/Task;->error:Ljava/lang/Exception;

    return-object p1
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 191
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    new-instance v1, Lbolts/Task$2;

    invoke-direct {v1, v0, p0}, Lbolts/Task$2;-><init>(Lbolts/Task$TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static cancelled()Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 147
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 148
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method private static completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TTContinuationResult;>.TaskCompletionSource;",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Lbolts/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTContinuationResult;>.TaskCompletionSource;"
    .local p1, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;Lbolts/Task<TTContinuationResult;>;>;"
    .local p2, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    new-instance v0, Lbolts/Task$10;

    invoke-direct {v0, p1, p2, p0}, Lbolts/Task$10;-><init>(Lbolts/Continuation;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method

.method private static completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TTContinuationResult;>.TaskCompletionSource;",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Lbolts/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTContinuationResult;>.TaskCompletionSource;"
    .local p1, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;TTContinuationResult;>;"
    .local p2, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    new-instance v0, Lbolts/Task$9;

    invoke-direct {v0, p1, p2, p0}, Lbolts/Task$9;-><init>(Lbolts/Continuation;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method public static create()Lbolts/Task$TaskCompletionSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/Task",
            "<TTResult;>.TaskCompletionSource;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lbolts/Task;

    invoke-direct {v0}, Lbolts/Task;-><init>()V

    .line 64
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    new-instance v1, Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lbolts/Task$TaskCompletionSource;-><init>(Lbolts/Task;Lbolts/Task$1;)V

    return-object v1
.end method

.method public static forError(Ljava/lang/Exception;)Lbolts/Task;
    .registers 3
    .param p0, "error"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 138
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    invoke-virtual {v0, p0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 139
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static forResult(Ljava/lang/Object;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "value":Ljava/lang/Object;, "TTResult;"
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    .line 129
    .local v0, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    invoke-virtual {v0, p0}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method private runContinuations()V
    .registers 6

    .prologue
    .line 503
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v4, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 504
    :try_start_3
    iget-object v3, p0, Lbolts/Task;->continuations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Continuation;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    .line 506
    .local v0, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;*>;"
    :try_start_15
    invoke-interface {v0, p0}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_18} :catch_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1e
    .catchall {:try_start_15 .. :try_end_18} :catchall_1b

    goto :goto_9

    .line 507
    :catch_19
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1a
    throw v1

    .line 514
    .end local v0    # "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;*>;"
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_1b
    move-exception v3

    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1b

    throw v3

    .line 509
    .restart local v0    # "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;*>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :catch_1e
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1f
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 513
    .end local v0    # "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;*>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_25
    const/4 v3, 0x0

    iput-object v3, p0, Lbolts/Task;->continuations:Ljava/util/List;

    .line 514
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_1b

    .line 515
    return-void
.end method

.method public static whenAll(Ljava/util/Collection;)Lbolts/Task;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lbolts/Task",
            "<*>;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Lbolts/Task<*>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 259
    :goto_b
    return-object v0

    .line 219
    :cond_c
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v5

    .line 220
    .local v5, "allFinished":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Void;>.TaskCompletionSource;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v2, "errors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 222
    .local v1, "errorLock":Ljava/lang/Object;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 223
    .local v4, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 225
    .local v3, "isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbolts/Task;

    .line 227
    .local v8, "task":Lbolts/Task;, "Lbolts/Task<*>;"
    move-object v7, v8

    .line 228
    .local v7, "t":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    new-instance v0, Lbolts/Task$3;

    invoke-direct/range {v0 .. v5}, Lbolts/Task$3;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v7, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_2d

    .line 259
    .end local v7    # "t":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    .end local v8    # "task":Lbolts/Task;, "Lbolts/Task<*>;"
    :cond_43
    invoke-virtual {v5}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public cast()Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOut:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/Task",
            "<TTOut;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    move-object v0, p0

    .line 158
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<TTOut;>;"
    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<Ljava/lang/Void;>;>;"
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0}, Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 10
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<Ljava/lang/Void;>;>;"
    new-instance v5, Lbolts/Capture;

    invoke-direct {v5}, Lbolts/Capture;-><init>()V

    .line 279
    .local v5, "predicateContinuation":Lbolts/Capture;, "Lbolts/Capture<Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<Ljava/lang/Void;>;>;>;"
    new-instance v0, Lbolts/Task$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lbolts/Task$4;-><init>(Lbolts/Task;Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/Capture;)V

    invoke-virtual {v5, v0}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 289
    invoke-virtual {p0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    invoke-virtual {v5}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Continuation;

    invoke-virtual {v1, v0, p3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lbolts/Continuation;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    .local p1, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    .local p1, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;TTContinuationResult;>;"
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v1

    .line 301
    .local v1, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTContinuationResult;>.TaskCompletionSource;"
    iget-object v3, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 302
    :try_start_7
    invoke-virtual {p0}, Lbolts/Task;->isCompleted()Z

    move-result v0

    .line 303
    .local v0, "completed":Z
    if-nez v0, :cond_17

    .line 304
    iget-object v2, p0, Lbolts/Task;->continuations:Ljava/util/List;

    new-instance v4, Lbolts/Task$5;

    invoke-direct {v4, p0, v1, p1, p2}, Lbolts/Task$5;-><init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_22

    .line 313
    if-eqz v0, :cond_1d

    .line 314
    invoke-static {v1, p1, p0, p2}, Lbolts/Task;->completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    .line 316
    :cond_1d
    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 312
    .end local v0    # "completed":Z
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public continueWithTask(Lbolts/Continuation;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    .local p1, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;Lbolts/Task<TTContinuationResult;>;>;"
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 8
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    .local p1, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;Lbolts/Task<TTContinuationResult;>;>;"
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v1

    .line 336
    .local v1, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTContinuationResult;>.TaskCompletionSource;"
    iget-object v3, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 337
    :try_start_7
    invoke-virtual {p0}, Lbolts/Task;->isCompleted()Z

    move-result v0

    .line 338
    .local v0, "completed":Z
    if-nez v0, :cond_17

    .line 339
    iget-object v2, p0, Lbolts/Task;->continuations:Ljava/util/List;

    new-instance v4, Lbolts/Task$6;

    invoke-direct {v4, p0, v1, p1, p2}, Lbolts/Task$6;-><init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_17
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_22

    .line 348
    if-eqz v0, :cond_1d

    .line 349
    invoke-static {v1, p1, p0, p2}, Lbolts/Task;->completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    .line 351
    :cond_1d
    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 347
    .end local v0    # "completed":Z
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public getError()Ljava/lang/Exception;
    .registers 3

    .prologue
    .line 108
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_3
    iget-object v0, p0, Lbolts/Task;->error:Ljava/lang/Exception;

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_3
    iget-object v0, p0, Lbolts/Task;->result:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isCancelled()Z
    .registers 3

    .prologue
    .line 81
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_3
    iget-boolean v0, p0, Lbolts/Task;->cancelled:Z

    monitor-exit v1

    return v0

    .line 83
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isCompleted()Z
    .registers 3

    .prologue
    .line 72
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_3
    iget-boolean v0, p0, Lbolts/Task;->complete:Z

    monitor-exit v1

    return v0

    .line 74
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isFaulted()Z
    .registers 3

    .prologue
    .line 90
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_3
    iget-object v0, p0, Lbolts/Task;->error:Ljava/lang/Exception;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 92
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public makeVoid()Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    new-instance v0, Lbolts/Task$1;

    invoke-direct {v0, p0}, Lbolts/Task$1;-><init>(Lbolts/Task;)V

    invoke-virtual {p0, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lbolts/Continuation;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    .local p1, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    .local p1, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;TTContinuationResult;>;"
    new-instance v0, Lbolts/Task$7;

    invoke-direct {v0, p0, p1}, Lbolts/Task$7;-><init>(Lbolts/Task;Lbolts/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lbolts/Continuation;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    .local p1, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;Lbolts/Task<TTContinuationResult;>;>;"
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 4
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    .local p1, "continuation":Lbolts/Continuation;, "Lbolts/Continuation<TTResult;Lbolts/Task<TTContinuationResult;>;>;"
    new-instance v0, Lbolts/Task$8;

    invoke-direct {v0, p0, p1}, Lbolts/Task$8;-><init>(Lbolts/Task;Lbolts/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public waitForCompletion()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_3
    invoke-virtual {p0}, Lbolts/Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_e

    .line 119
    iget-object v0, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 121
    :cond_e
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

###### Class bolts.Task.AnonymousClass1 (bolts.Task$1)
.class Lbolts/Task$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->makeVoid()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;


# direct methods
.method constructor <init>(Lbolts/Task;)V
    .registers 2

    .prologue
    .line 165
    .local p0, "this":Lbolts/Task$1;, "Lbolts/Task.1;"
    iput-object p1, p0, Lbolts/Task$1;->this$0:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lbolts/Task$1;, "Lbolts/Task.1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 169
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 174
    :goto_a
    return-object v0

    .line 171
    :cond_b
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 172
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    goto :goto_a

    .line 174
    :cond_1a
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lbolts/Task$1;, "Lbolts/Task.1;"
    invoke-virtual {p0, p1}, Lbolts/Task$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

###### Class bolts.Task.AnonymousClass10 (bolts.Task$10)
.class final Lbolts/Task$10;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$task:Lbolts/Task;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Continuation;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)V
    .registers 4

    .prologue
    .line 473
    iput-object p1, p0, Lbolts/Task$10;->val$continuation:Lbolts/Continuation;

    iput-object p2, p0, Lbolts/Task$10;->val$task:Lbolts/Task;

    iput-object p3, p0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 477
    :try_start_0
    iget-object v2, p0, Lbolts/Task$10;->val$continuation:Lbolts/Continuation;

    iget-object v3, p0, Lbolts/Task$10;->val$task:Lbolts/Task;

    invoke-interface {v2, v3}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;

    .line 478
    .local v1, "result":Lbolts/Task;, "Lbolts/Task<TTContinuationResult;>;"
    if-nez v1, :cond_13

    .line 479
    iget-object v2, p0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 498
    .end local v1    # "result":Lbolts/Task;, "Lbolts/Task<TTContinuationResult;>;"
    :goto_12
    return-void

    .line 481
    .restart local v1    # "result":Lbolts/Task;, "Lbolts/Task<TTContinuationResult;>;"
    :cond_13
    new-instance v2, Lbolts/Task$10$1;

    invoke-direct {v2, p0}, Lbolts/Task$10$1;-><init>(Lbolts/Task$10;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_12

    .line 495
    .end local v1    # "result":Lbolts/Task;, "Lbolts/Task<TTContinuationResult;>;"
    :catch_1c
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_12
.end method

###### Class bolts.Task.AnonymousClass10.AnonymousClass1 (bolts.Task$10$1)
.class Lbolts/Task$10$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task$10;


# direct methods
.method constructor <init>(Lbolts/Task$10;)V
    .registers 2

    .prologue
    .line 481
    iput-object p1, p0, Lbolts/Task$10$1;->this$0:Lbolts/Task$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0, p1}, Lbolts/Task$10$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTContinuationResult;>;"
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 485
    iget-object v0, p0, Lbolts/Task$10$1;->this$0:Lbolts/Task$10;

    iget-object v0, v0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    .line 491
    :goto_d
    const/4 v0, 0x0

    return-object v0

    .line 486
    :cond_f
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 487
    iget-object v0, p0, Lbolts/Task$10$1;->this$0:Lbolts/Task$10;

    iget-object v0, v0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_d

    .line 489
    :cond_21
    iget-object v0, p0, Lbolts/Task$10$1;->this$0:Lbolts/Task$10;

    iget-object v0, v0, Lbolts/Task$10;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_d
.end method

###### Class bolts.Task.AnonymousClass2 (bolts.Task$2)
.class final Lbolts/Task$2;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Task$TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .registers 3

    .prologue
    .line 191
    iput-object p1, p0, Lbolts/Task$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p2, p0, Lbolts/Task$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lbolts/Task$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v2, p0, Lbolts/Task$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 199
    :goto_b
    return-void

    .line 196
    :catch_c
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lbolts/Task$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_b
.end method

###### Class bolts.Task.AnonymousClass3 (bolts.Task$3)
.class final Lbolts/Task$3;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allFinished:Lbolts/Task$TaskCompletionSource;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$errorLock:Ljava/lang/Object;

.field final synthetic val$errors:Ljava/util/ArrayList;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lbolts/Task$TaskCompletionSource;)V
    .registers 6

    .prologue
    .line 228
    iput-object p1, p0, Lbolts/Task$3;->val$errorLock:Ljava/lang/Object;

    iput-object p2, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    iput-object p3, p0, Lbolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lbolts/Task$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lbolts/Task$3;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 231
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 232
    iget-object v1, p0, Lbolts/Task$3;->val$errorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_b
    iget-object v0, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_47

    .line 237
    :cond_15
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 238
    iget-object v0, p0, Lbolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 241
    :cond_20
    iget-object v0, p0, Lbolts/Task$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_46

    .line 242
    iget-object v0, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_57

    .line 243
    iget-object v0, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_4a

    .line 244
    iget-object v1, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    iget-object v0, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 254
    :cond_46
    :goto_46
    return-object v4

    .line 234
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    .line 246
    :cond_4a
    iget-object v0, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    new-instance v1, Lbolts/AggregateException;

    iget-object v2, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lbolts/AggregateException;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_46

    .line 248
    :cond_57
    iget-object v0, p0, Lbolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 249
    iget-object v0, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    goto :goto_46

    .line 251
    :cond_65
    iget-object v0, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0, v4}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_46
.end method

###### Class bolts.Task.AnonymousClass4 (bolts.Task$4)
.class Lbolts/Task$4;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$predicate:Ljava/util/concurrent/Callable;

.field final synthetic val$predicateContinuation:Lbolts/Capture;


# direct methods
.method constructor <init>(Lbolts/Task;Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/Capture;)V
    .registers 6

    .prologue
    .line 279
    .local p0, "this":Lbolts/Task$4;, "Lbolts/Task.4;"
    iput-object p1, p0, Lbolts/Task$4;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$4;->val$predicate:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lbolts/Task$4;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lbolts/Task$4;->val$predicateContinuation:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lbolts/Task$4;, "Lbolts/Task.4;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lbolts/Task$4;->val$predicate:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 283
    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    iget-object v1, p0, Lbolts/Task$4;->val$continuation:Lbolts/Continuation;

    iget-object v2, p0, Lbolts/Task$4;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    iget-object v0, p0, Lbolts/Task$4;->val$predicateContinuation:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Continuation;

    iget-object v2, p0, Lbolts/Task$4;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 286
    :goto_29
    return-object v0

    :cond_2a
    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    goto :goto_29
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "this":Lbolts/Task$4;, "Lbolts/Task.4;"
    invoke-virtual {p0, p1}, Lbolts/Task$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

###### Class bolts.Task.AnonymousClass5 (bolts.Task$5)
.class Lbolts/Task$5;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;)V
    .registers 5

    .prologue
    .line 304
    .local p0, "this":Lbolts/Task$5;, "Lbolts/Task.5;"
    iput-object p1, p0, Lbolts/Task$5;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$5;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$5;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$5;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lbolts/Task$5;, "Lbolts/Task.5;"
    invoke-virtual {p0, p1}, Lbolts/Task$5;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lbolts/Task$5;, "Lbolts/Task.5;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v0, p0, Lbolts/Task$5;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v1, p0, Lbolts/Task$5;->val$continuation:Lbolts/Continuation;

    iget-object v2, p0, Lbolts/Task$5;->val$executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lbolts/Task;->access$100(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

###### Class bolts.Task.AnonymousClass6 (bolts.Task$6)
.class Lbolts/Task$6;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;)V
    .registers 5

    .prologue
    .line 339
    .local p0, "this":Lbolts/Task$6;, "Lbolts/Task.6;"
    iput-object p1, p0, Lbolts/Task$6;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$6;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$6;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lbolts/Task$6;, "Lbolts/Task.6;"
    invoke-virtual {p0, p1}, Lbolts/Task$6;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lbolts/Task$6;, "Lbolts/Task.6;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v0, p0, Lbolts/Task$6;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v1, p0, Lbolts/Task$6;->val$continuation:Lbolts/Continuation;

    iget-object v2, p0, Lbolts/Task$6;->val$executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lbolts/Task;->access$200(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    .line 343
    const/4 v0, 0x0

    return-object v0
.end method

###### Class bolts.Task.AnonymousClass7 (bolts.Task$7)
.class Lbolts/Task$7;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Lbolts/Task",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/Continuation;)V
    .registers 3

    .prologue
    .line 369
    .local p0, "this":Lbolts/Task$7;, "Lbolts/Task.7;"
    iput-object p1, p0, Lbolts/Task$7;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$7;->val$continuation:Lbolts/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lbolts/Task$7;, "Lbolts/Task.7;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 373
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    .line 377
    :goto_e
    return-object v0

    .line 374
    :cond_f
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 375
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    goto :goto_e

    .line 377
    :cond_1a
    iget-object v0, p0, Lbolts/Task$7;->val$continuation:Lbolts/Continuation;

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_e
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lbolts/Task$7;, "Lbolts/Task.7;"
    invoke-virtual {p0, p1}, Lbolts/Task$7;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

###### Class bolts.Task.AnonymousClass8 (bolts.Task$8)
.class Lbolts/Task$8;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Lbolts/Task",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/Continuation;)V
    .registers 3

    .prologue
    .line 398
    .local p0, "this":Lbolts/Task$8;, "Lbolts/Task.8;"
    iput-object p1, p0, Lbolts/Task$8;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$8;->val$continuation:Lbolts/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 401
    .local p0, "this":Lbolts/Task$8;, "Lbolts/Task.8;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 402
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    .line 406
    :goto_e
    return-object v0

    .line 403
    :cond_f
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 404
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    goto :goto_e

    .line 406
    :cond_1a
    iget-object v0, p0, Lbolts/Task$8;->val$continuation:Lbolts/Continuation;

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_e
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lbolts/Task$8;, "Lbolts/Task.8;"
    invoke-virtual {p0, p1}, Lbolts/Task$8;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

###### Class bolts.Task.AnonymousClass9 (bolts.Task$9)
.class final Lbolts/Task$9;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$task:Lbolts/Task;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Continuation;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)V
    .registers 4

    .prologue
    .line 440
    iput-object p1, p0, Lbolts/Task$9;->val$continuation:Lbolts/Continuation;

    iput-object p2, p0, Lbolts/Task$9;->val$task:Lbolts/Task;

    iput-object p3, p0, Lbolts/Task$9;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 444
    :try_start_0
    iget-object v2, p0, Lbolts/Task$9;->val$continuation:Lbolts/Continuation;

    iget-object v3, p0, Lbolts/Task$9;->val$task:Lbolts/Task;

    invoke-interface {v2, v3}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    .line 445
    .local v1, "result":Ljava/lang/Object;, "TTContinuationResult;"
    iget-object v2, p0, Lbolts/Task$9;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 449
    .end local v1    # "result":Ljava/lang/Object;, "TTContinuationResult;"
    :goto_d
    return-void

    .line 446
    :catch_e
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbolts/Task$9;->val$tcs:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v2, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_d
.end method

###### Class bolts.Task.TaskCompletionSource (bolts.Task$TaskCompletionSource)
.class public Lbolts/Task$TaskCompletionSource;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskCompletionSource"
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;


# direct methods
.method private constructor <init>(Lbolts/Task;)V
    .registers 2

    .prologue
    .line 524
    .local p0, "this":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    iput-object p1, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    return-void
.end method

.method synthetic constructor <init>(Lbolts/Task;Lbolts/Task$1;)V
    .registers 3
    .param p1, "x0"    # Lbolts/Task;
    .param p2, "x1"    # Lbolts/Task$1;

    .prologue
    .line 523
    .local p0, "this":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    invoke-direct {p0, p1}, Lbolts/Task$TaskCompletionSource;-><init>(Lbolts/Task;)V

    return-void
.end method


# virtual methods
.method public getTask()Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    iget-object v0, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    return-object v0
.end method

.method public setCancelled()V
    .registers 3

    .prologue
    .line 586
    .local p0, "this":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    invoke-virtual {p0}, Lbolts/Task$TaskCompletionSource;->trySetCancelled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot cancel a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_e
    return-void
.end method

.method public setError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 604
    .local p0, "this":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    invoke-virtual {p0, p1}, Lbolts/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 605
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the error on a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_e
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    invoke-virtual {p0, p1}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 596
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set the result of a completed task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_e
    return-void
.end method

.method public trySetCancelled()Z
    .registers 5

    .prologue
    .local p0, "this":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    const/4 v0, 0x1

    .line 538
    iget-object v1, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v1}, Lbolts/Task;->access$300(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 539
    :try_start_8
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->access$400(Lbolts/Task;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 540
    const/4 v0, 0x0

    monitor-exit v1

    .line 546
    :goto_12
    return v0

    .line 542
    :cond_13
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/Task;->access$402(Lbolts/Task;Z)Z

    .line 543
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/Task;->access$502(Lbolts/Task;Z)Z

    .line 544
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->access$300(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 545
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->access$600(Lbolts/Task;)V

    .line 546
    monitor-exit v1

    goto :goto_12

    .line 547
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public trySetError(Ljava/lang/Exception;)Z
    .registers 6
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .local p0, "this":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    const/4 v0, 0x1

    .line 570
    iget-object v1, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v1}, Lbolts/Task;->access$300(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 571
    :try_start_8
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->access$400(Lbolts/Task;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 572
    const/4 v0, 0x0

    monitor-exit v1

    .line 578
    :goto_12
    return v0

    .line 574
    :cond_13
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/Task;->access$402(Lbolts/Task;Z)Z

    .line 575
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v2, p1}, Lbolts/Task;->access$802(Lbolts/Task;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 576
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->access$300(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 577
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->access$600(Lbolts/Task;)V

    .line 578
    monitor-exit v1

    goto :goto_12

    .line 579
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TTResult;>.TaskCompletionSource;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    const/4 v0, 0x1

    .line 554
    iget-object v1, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v1}, Lbolts/Task;->access$300(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 555
    :try_start_8
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->access$400(Lbolts/Task;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 556
    const/4 v0, 0x0

    monitor-exit v1

    .line 562
    :goto_12
    return v0

    .line 558
    :cond_13
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lbolts/Task;->access$402(Lbolts/Task;Z)Z

    .line 559
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v2, p1}, Lbolts/Task;->access$702(Lbolts/Task;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->access$300(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 561
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    invoke-static {v2}, Lbolts/Task;->access$600(Lbolts/Task;)V

    .line 562
    monitor-exit v1

    goto :goto_12

    .line 563
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw v0
.end method
