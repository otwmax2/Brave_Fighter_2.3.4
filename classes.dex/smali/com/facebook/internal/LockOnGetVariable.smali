###### Class com.facebook.internal.LockOnGetVariable (com.facebook.internal.LockOnGetVariable)
.class public Lcom/facebook/internal/LockOnGetVariable;
.super Ljava/lang/Object;
.source "LockOnGetVariable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private initLatch:Ljava/util/concurrent/CountDownLatch;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/facebook/internal/LockOnGetVariable;, "Lcom/facebook/internal/LockOnGetVariable<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/internal/LockOnGetVariable;->value:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/facebook/internal/LockOnGetVariable;, "Lcom/facebook/internal/LockOnGetVariable<TT;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 39
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/internal/LockOnGetVariable$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/internal/LockOnGetVariable$1;-><init>(Lcom/facebook/internal/LockOnGetVariable;Ljava/util/concurrent/Callable;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/facebook/internal/LockOnGetVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/LockOnGetVariable;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/internal/LockOnGetVariable;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/facebook/internal/LockOnGetVariable;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/LockOnGetVariable;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private waitOnInit()V
    .registers 2

    .prologue
    .line 59
    .local p0, "this":Lcom/facebook/internal/LockOnGetVariable;, "Lcom/facebook/internal/LockOnGetVariable<TT;>;"
    iget-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_5

    .line 68
    :goto_4
    return-void

    .line 64
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 65
    :catch_b
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/facebook/internal/LockOnGetVariable;, "Lcom/facebook/internal/LockOnGetVariable<TT;>;"
    invoke-direct {p0}, Lcom/facebook/internal/LockOnGetVariable;->waitOnInit()V

    .line 55
    iget-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->value:Ljava/lang/Object;

    return-object v0
.end method

###### Class com.facebook.internal.LockOnGetVariable.AnonymousClass1 (com.facebook.internal.LockOnGetVariable$1)
.class Lcom/facebook/internal/LockOnGetVariable$1;
.super Ljava/lang/Object;
.source "LockOnGetVariable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/LockOnGetVariable;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/facebook/internal/LockOnGetVariable;Ljava/util/concurrent/Callable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/internal/LockOnGetVariable;

    .prologue
    .line 40
    .local p0, "this":Lcom/facebook/internal/LockOnGetVariable$1;, "Lcom/facebook/internal/LockOnGetVariable$1;"
    iput-object p1, p0, Lcom/facebook/internal/LockOnGetVariable$1;->this$0:Lcom/facebook/internal/LockOnGetVariable;

    iput-object p2, p0, Lcom/facebook/internal/LockOnGetVariable$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/facebook/internal/LockOnGetVariable$1;, "Lcom/facebook/internal/LockOnGetVariable$1;"
    invoke-virtual {p0}, Lcom/facebook/internal/LockOnGetVariable$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/facebook/internal/LockOnGetVariable$1;, "Lcom/facebook/internal/LockOnGetVariable$1;"
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/LockOnGetVariable$1;->this$0:Lcom/facebook/internal/LockOnGetVariable;

    iget-object v1, p0, Lcom/facebook/internal/LockOnGetVariable$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/internal/LockOnGetVariable;->access$002(Lcom/facebook/internal/LockOnGetVariable;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_16

    .line 46
    iget-object v0, p0, Lcom/facebook/internal/LockOnGetVariable$1;->this$0:Lcom/facebook/internal/LockOnGetVariable;

    invoke-static {v0}, Lcom/facebook/internal/LockOnGetVariable;->access$100(Lcom/facebook/internal/LockOnGetVariable;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 46
    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/facebook/internal/LockOnGetVariable$1;->this$0:Lcom/facebook/internal/LockOnGetVariable;

    invoke-static {v1}, Lcom/facebook/internal/LockOnGetVariable;->access$100(Lcom/facebook/internal/LockOnGetVariable;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
