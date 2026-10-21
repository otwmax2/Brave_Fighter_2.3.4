###### Class com.ironsource.mediationsdk.events.SuperLooper (com.ironsource.mediationsdk.events.SuperLooper)
.class public Lcom/ironsource/mediationsdk/events/SuperLooper;
.super Ljava/lang/Thread;
.source "SuperLooper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/ironsource/mediationsdk/events/SuperLooper;


# instance fields
.field private mSdkThread:Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    new-instance v0, Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;-><init>(Lcom/ironsource/mediationsdk/events/SuperLooper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    .line 18
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;->start()V

    .line 19
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;->prepareHandler()V

    .line 20
    return-void
.end method

.method public static declared-synchronized getLooper()Lcom/ironsource/mediationsdk/events/SuperLooper;
    .registers 2

    .prologue
    .line 23
    const-class v1, Lcom/ironsource/mediationsdk/events/SuperLooper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ironsource/mediationsdk/events/SuperLooper;->mInstance:Lcom/ironsource/mediationsdk/events/SuperLooper;

    if-nez v0, :cond_e

    .line 24
    new-instance v0, Lcom/ironsource/mediationsdk/events/SuperLooper;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/events/SuperLooper;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/events/SuperLooper;->mInstance:Lcom/ironsource/mediationsdk/events/SuperLooper;

    .line 27
    :cond_e
    sget-object v0, Lcom/ironsource/mediationsdk/events/SuperLooper;->mInstance:Lcom/ironsource/mediationsdk/events/SuperLooper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized post(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v1, :cond_7

    .line 40
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 35
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/SuperLooper;->mSdkThread:Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 37
    .local v0, "callbackHandler":Landroid/os/Handler;
    if-eqz v0, :cond_5

    .line 38
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    goto :goto_5

    .line 31
    .end local v0    # "callbackHandler":Landroid/os/Handler;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

###### Class com.ironsource.mediationsdk.events.SuperLooper.SupersonicSdkThread (com.ironsource.mediationsdk.events.SuperLooper$SupersonicSdkThread)
.class Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;
.super Landroid/os/HandlerThread;
.source "SuperLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/events/SuperLooper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupersonicSdkThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/ironsource/mediationsdk/events/SuperLooper;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/SuperLooper;Ljava/lang/String;)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;->this$0:Lcom/ironsource/mediationsdk/events/SuperLooper;

    .line 46
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/ironsource/mediationsdk/logger/ThreadExceptionHandler;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/logger/ThreadExceptionHandler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 50
    return-void
.end method


# virtual methods
.method getCallbackHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method prepareHandler()V
    .registers 3

    .prologue
    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/SuperLooper$SupersonicSdkThread;->mHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method
