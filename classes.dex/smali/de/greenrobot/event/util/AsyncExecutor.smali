###### Class de.greenrobot.event.util.AsyncExecutor (de.greenrobot.event.util.AsyncExecutor)
.class public Lde/greenrobot/event/util/AsyncExecutor;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;,
        Lde/greenrobot/event/util/AsyncExecutor$Builder;
    }
.end annotation


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final failureEventConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private scope:Ljava/lang/Object;

.field private final threadPool:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 9
    .param p1, "threadPool"    # Ljava/util/concurrent/Executor;
    .param p2, "eventBus"    # Lde/greenrobot/event/EventBus;
    .param p4, "scope"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lde/greenrobot/event/EventBus;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p3, "failureEventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor;->threadPool:Ljava/util/concurrent/Executor;

    .line 99
    iput-object p2, p0, Lde/greenrobot/event/util/AsyncExecutor;->eventBus:Lde/greenrobot/event/EventBus;

    .line 100
    iput-object p4, p0, Lde/greenrobot/event/util/AsyncExecutor;->scope:Ljava/lang/Object;

    .line 102
    const/4 v1, 0x1

    :try_start_a
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v1, v2

    invoke-virtual {p3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lde/greenrobot/event/util/AsyncExecutor;->failureEventConstructor:Ljava/lang/reflect/Constructor;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_17} :catch_18

    .line 107
    return-void

    .line 103
    :catch_18
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failure event class must have a constructor with one parameter of type Throwable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class;Ljava/lang/Object;Lde/greenrobot/event/util/AsyncExecutor$1;)V
    .registers 6
    .param p1, "x0"    # Ljava/util/concurrent/Executor;
    .param p2, "x1"    # Lde/greenrobot/event/EventBus;
    .param p3, "x2"    # Ljava/lang/Class;
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # Lde/greenrobot/event/util/AsyncExecutor$1;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lde/greenrobot/event/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lde/greenrobot/event/util/AsyncExecutor;)Ljava/lang/reflect/Constructor;
    .registers 2
    .param p0, "x0"    # Lde/greenrobot/event/util/AsyncExecutor;

    .prologue
    .line 32
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor;->failureEventConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method static synthetic access$300(Lde/greenrobot/event/util/AsyncExecutor;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lde/greenrobot/event/util/AsyncExecutor;

    .prologue
    .line 32
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor;->scope:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lde/greenrobot/event/util/AsyncExecutor;)Lde/greenrobot/event/EventBus;
    .registers 2
    .param p0, "x0"    # Lde/greenrobot/event/util/AsyncExecutor;

    .prologue
    .line 32
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor;->eventBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method public static builder()Lde/greenrobot/event/util/AsyncExecutor$Builder;
    .registers 2

    .prologue
    .line 85
    new-instance v0, Lde/greenrobot/event/util/AsyncExecutor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/greenrobot/event/util/AsyncExecutor$Builder;-><init>(Lde/greenrobot/event/util/AsyncExecutor$1;)V

    return-object v0
.end method

.method public static create()Lde/greenrobot/event/util/AsyncExecutor;
    .registers 2

    .prologue
    .line 89
    new-instance v0, Lde/greenrobot/event/util/AsyncExecutor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lde/greenrobot/event/util/AsyncExecutor$Builder;-><init>(Lde/greenrobot/event/util/AsyncExecutor$1;)V

    invoke-virtual {v0}, Lde/greenrobot/event/util/AsyncExecutor$Builder;->build()Lde/greenrobot/event/util/AsyncExecutor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;)V
    .registers 4
    .param p1, "runnable"    # Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;

    .prologue
    .line 111
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor;->threadPool:Ljava/util/concurrent/Executor;

    new-instance v1, Lde/greenrobot/event/util/AsyncExecutor$1;

    invoke-direct {v1, p0, p1}, Lde/greenrobot/event/util/AsyncExecutor$1;-><init>(Lde/greenrobot/event/util/AsyncExecutor;Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

###### Class de.greenrobot.event.util.AsyncExecutor.AnonymousClass1 (de.greenrobot.event.util.AsyncExecutor$1)
.class Lde/greenrobot/event/util/AsyncExecutor$1;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/greenrobot/event/util/AsyncExecutor;->execute(Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/greenrobot/event/util/AsyncExecutor;

.field final synthetic val$runnable:Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;


# direct methods
.method constructor <init>(Lde/greenrobot/event/util/AsyncExecutor;Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;)V
    .registers 3

    .prologue
    .line 111
    iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;

    iput-object p2, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->val$runnable:Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 115
    :try_start_0
    iget-object v3, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->val$runnable:Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;

    invoke-interface {v3}, Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 129
    :goto_5
    return-void

    .line 116
    :catch_6
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v3, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;

    invoke-static {v3}, Lde/greenrobot/event/util/AsyncExecutor;->access$200(Lde/greenrobot/event/util/AsyncExecutor;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_31

    move-result-object v2

    .line 124
    .local v2, "event":Ljava/lang/Object;
    instance-of v3, v2, Lde/greenrobot/event/util/HasExecutionScope;

    if-eqz v3, :cond_27

    move-object v3, v2

    .line 125
    check-cast v3, Lde/greenrobot/event/util/HasExecutionScope;

    iget-object v4, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;

    invoke-static {v4}, Lde/greenrobot/event/util/AsyncExecutor;->access$300(Lde/greenrobot/event/util/AsyncExecutor;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lde/greenrobot/event/util/HasExecutionScope;->setExecutionScope(Ljava/lang/Object;)V

    .line 127
    :cond_27
    iget-object v3, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;

    invoke-static {v3}, Lde/greenrobot/event/util/AsyncExecutor;->access$400(Lde/greenrobot/event/util/AsyncExecutor;)Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_5

    .line 120
    .end local v2    # "event":Ljava/lang/Object;
    :catch_31
    move-exception v1

    .line 121
    .local v1, "e1":Ljava/lang/Exception;
    sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    const-string v4, "Original exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not create failure event"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

###### Class de.greenrobot.event.util.AsyncExecutor.Builder (de.greenrobot.event.util.AsyncExecutor$Builder)
.class public Lde/greenrobot/event/util/AsyncExecutor$Builder;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/AsyncExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private eventBus:Lde/greenrobot/event/EventBus;

.field private failureEventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lde/greenrobot/event/util/AsyncExecutor$1;)V
    .registers 2
    .param p1, "x0"    # Lde/greenrobot/event/util/AsyncExecutor$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lde/greenrobot/event/util/AsyncExecutor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lde/greenrobot/event/util/AsyncExecutor;
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/greenrobot/event/util/AsyncExecutor$Builder;->buildForScope(Ljava/lang/Object;)Lde/greenrobot/event/util/AsyncExecutor;

    move-result-object v0

    return-object v0
.end method

.method public buildForActivityScope(Landroid/app/Activity;)Lde/greenrobot/event/util/AsyncExecutor;
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/greenrobot/event/util/AsyncExecutor$Builder;->buildForScope(Ljava/lang/Object;)Lde/greenrobot/event/util/AsyncExecutor;

    move-result-object v0

    return-object v0
.end method

.method public buildForScope(Ljava/lang/Object;)Lde/greenrobot/event/util/AsyncExecutor;
    .registers 8
    .param p1, "executionContext"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->eventBus:Lde/greenrobot/event/EventBus;

    if-nez v0, :cond_a

    .line 67
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->eventBus:Lde/greenrobot/event/EventBus;

    .line 69
    :cond_a
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_14

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    .line 72
    :cond_14
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    if-nez v0, :cond_1c

    .line 73
    const-class v0, Lde/greenrobot/event/util/ThrowableFailureEvent;

    iput-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    .line 75
    :cond_1c
    new-instance v0, Lde/greenrobot/event/util/AsyncExecutor;

    iget-object v1, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v3, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lde/greenrobot/event/EventBus;Ljava/lang/Class;Ljava/lang/Object;Lde/greenrobot/event/util/AsyncExecutor$1;)V

    return-object v0
.end method

.method public eventBus(Lde/greenrobot/event/EventBus;)Lde/greenrobot/event/util/AsyncExecutor$Builder;
    .registers 2
    .param p1, "eventBus"    # Lde/greenrobot/event/EventBus;

    .prologue
    .line 53
    iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->eventBus:Lde/greenrobot/event/EventBus;

    .line 54
    return-object p0
.end method

.method public failureEventType(Ljava/lang/Class;)Lde/greenrobot/event/util/AsyncExecutor$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lde/greenrobot/event/util/AsyncExecutor$Builder;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "failureEventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    .line 49
    return-object p0
.end method

.method public threadPool(Ljava/util/concurrent/Executor;)Lde/greenrobot/event/util/AsyncExecutor$Builder;
    .registers 2
    .param p1, "threadPool"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 43
    iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    .line 44
    return-object p0
.end method

###### Class de.greenrobot.event.util.AsyncExecutor.RunnableEx (de.greenrobot.event.util.AsyncExecutor$RunnableEx)
.class public interface abstract Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/AsyncExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RunnableEx"
.end annotation


# virtual methods
.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
