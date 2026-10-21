###### Class bolts.BoltsExecutors (bolts.BoltsExecutors)
.class final Lbolts/BoltsExecutors;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/BoltsExecutors$1;,
        Lbolts/BoltsExecutors$ImmediateExecutor;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lbolts/BoltsExecutors;


# instance fields
.field private final background:Ljava/util/concurrent/ExecutorService;

.field private final immediate:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lbolts/BoltsExecutors;

    invoke-direct {v0}, Lbolts/BoltsExecutors;-><init>()V

    sput-object v0, Lbolts/BoltsExecutors;->INSTANCE:Lbolts/BoltsExecutors;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lbolts/BoltsExecutors;->isAndroidRuntime()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lbolts/BoltsExecutors;->background:Ljava/util/concurrent/ExecutorService;

    .line 29
    new-instance v0, Lbolts/BoltsExecutors$ImmediateExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbolts/BoltsExecutors$ImmediateExecutor;-><init>(Lbolts/BoltsExecutors$1;)V

    iput-object v0, p0, Lbolts/BoltsExecutors;->immediate:Ljava/util/concurrent/Executor;

    .line 30
    return-void

    .line 26
    :cond_18
    invoke-static {}, Lbolts/AndroidExecutors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_d
.end method

.method public static background()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lbolts/BoltsExecutors;->INSTANCE:Lbolts/BoltsExecutors;

    iget-object v0, v0, Lbolts/BoltsExecutors;->background:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static immediate()Ljava/util/concurrent/Executor;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lbolts/BoltsExecutors;->INSTANCE:Lbolts/BoltsExecutors;

    iget-object v0, v0, Lbolts/BoltsExecutors;->immediate:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static isAndroidRuntime()Z
    .registers 3

    .prologue
    .line 15
    const-string v1, "java.runtime.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "javaRuntimeName":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 17
    const/4 v1, 0x0

    .line 19
    :goto_9
    return v1

    :cond_a
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_9
.end method

###### Class bolts.BoltsExecutors.AnonymousClass1 (bolts.BoltsExecutors$1)
.class synthetic Lbolts/BoltsExecutors$1;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/BoltsExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class bolts.BoltsExecutors.ImmediateExecutor (bolts.BoltsExecutors$ImmediateExecutor)
.class Lbolts/BoltsExecutors$ImmediateExecutor;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/BoltsExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateExecutor"
.end annotation


# static fields
.field private static final MAX_DEPTH:I = 0xf


# instance fields
.field private executionDepth:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    return-void
.end method

.method synthetic constructor <init>(Lbolts/BoltsExecutors$1;)V
    .registers 2
    .param p1, "x0"    # Lbolts/BoltsExecutors$1;

    .prologue
    .line 54
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;-><init>()V

    return-void
.end method

.method private decrementDepth()I
    .registers 5

    .prologue
    .line 79
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 80
    .local v1, "oldDepth":Ljava/lang/Integer;
    if-nez v1, :cond_f

    .line 81
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 83
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 84
    .local v0, "newDepth":I
    if-nez v0, :cond_1d

    .line 85
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 89
    :goto_1c
    return v0

    .line 87
    :cond_1d
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method private incrementDepth()I
    .registers 5

    .prologue
    .line 64
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 65
    .local v1, "oldDepth":Ljava/lang/Integer;
    if-nez v1, :cond_f

    .line 66
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 68
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 69
    .local v0, "newDepth":I
    iget-object v2, p0, Lbolts/BoltsExecutors$ImmediateExecutor;->executionDepth:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 70
    return v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 94
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->incrementDepth()I

    move-result v0

    .line 96
    .local v0, "depth":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_f

    .line 97
    :try_start_8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_17

    .line 102
    :goto_b
    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->decrementDepth()I

    .line 104
    return-void

    .line 99
    :cond_f
    :try_start_f
    invoke-static {}, Lbolts/BoltsExecutors;->background()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_17

    goto :goto_b

    .line 102
    :catchall_17
    move-exception v1

    invoke-direct {p0}, Lbolts/BoltsExecutors$ImmediateExecutor;->decrementDepth()I

    throw v1
.end method
