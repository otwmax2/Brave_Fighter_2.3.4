###### Class com.unity3d.ads.request.WebRequestThread (com.unity3d.ads.request.WebRequestThread)
.class public Lcom/unity3d/ads/request/WebRequestThread;
.super Ljava/lang/Thread;
.source "WebRequestThread.java"


# static fields
.field protected static final MSG_REQUEST:I = 0x1

.field private static _handler:Lcom/unity3d/ads/request/WebRequestHandler;

.field private static _ready:Z

.field private static final _readyLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/request/WebRequestThread;->_ready:Z

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unity3d/ads/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static cancel()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 56
    sget-object v0, Lcom/unity3d/ads/request/WebRequestThread;->_handler:Lcom/unity3d/ads/request/WebRequestHandler;

    if-eqz v0, :cond_f

    .line 57
    sget-object v0, Lcom/unity3d/ads/request/WebRequestThread;->_handler:Lcom/unity3d/ads/request/WebRequestHandler;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/request/WebRequestHandler;->removeMessages(I)V

    .line 58
    sget-object v0, Lcom/unity3d/ads/request/WebRequestThread;->_handler:Lcom/unity3d/ads/request/WebRequestHandler;

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/request/WebRequestHandler;->setCancelStatus(Z)V

    .line 60
    :cond_f
    return-void
.end method

.method private static init()V
    .registers 4

    .prologue
    .line 23
    new-instance v1, Lcom/unity3d/ads/request/WebRequestThread;

    invoke-direct {v1}, Lcom/unity3d/ads/request/WebRequestThread;-><init>()V

    .line 24
    .local v1, "thread":Lcom/unity3d/ads/request/WebRequestThread;
    const-string v2, "UnityAdsWebRequestThread"

    invoke-virtual {v1, v2}, Lcom/unity3d/ads/request/WebRequestThread;->setName(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequestThread;->start()V

    .line 27
    :goto_d
    sget-boolean v2, Lcom/unity3d/ads/request/WebRequestThread;->_ready:Z

    if-nez v2, :cond_25

    .line 29
    :try_start_11
    sget-object v3, Lcom/unity3d/ads/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_1e

    .line 30
    :try_start_14
    sget-object v2, Lcom/unity3d/ads/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 31
    monitor-exit v3

    goto :goto_d

    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v2
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1e} :catch_1e

    .line 32
    :catch_1e
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Couldn\'t synchronize thread"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_d

    .line 36
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_25
    return-void
.end method

.method public static declared-synchronized request(ILjava/lang/String;Lcom/unity3d/ads/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/request/IWebRequestListener;Lcom/unity3d/ads/request/WebRequestResultReceiver;)V
    .registers 16
    .param p0, "msgWhat"    # I
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestType"    # Lcom/unity3d/ads/request/WebRequest$RequestType;
    .param p4, "requestBody"    # Ljava/lang/String;
    .param p5, "connectTimeout"    # Ljava/lang/Integer;
    .param p6, "readTimeout"    # Ljava/lang/Integer;
    .param p7, "listener"    # Lcom/unity3d/ads/request/IWebRequestListener;
    .param p8, "receiver"    # Lcom/unity3d/ads/request/WebRequestResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/request/WebRequest$RequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/ads/request/IWebRequestListener;",
            "Lcom/unity3d/ads/request/WebRequestResultReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-class v5, Lcom/unity3d/ads/request/WebRequestThread;

    monitor-enter v5

    :try_start_3
    sget-boolean v4, Lcom/unity3d/ads/request/WebRequestThread;->_ready:Z

    if-nez v4, :cond_a

    .line 72
    invoke-static {}, Lcom/unity3d/ads/request/WebRequestThread;->init()V

    .line 75
    :cond_a
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x3

    if-ge v4, v6, :cond_1a

    .line 76
    :cond_13
    const-string v4, "Request is NULL or too short"

    invoke-interface {p7, p1, v4}, Lcom/unity3d/ads/request/IWebRequestListener;->onFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_7b

    .line 101
    :goto_18
    monitor-exit v5

    return-void

    .line 80
    :cond_1a
    :try_start_1a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v2, "params":Landroid/os/Bundle;
    const-string v4, "url"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "type"

    invoke-virtual {p2}, Lcom/unity3d/ads/request/WebRequest$RequestType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v4, "body"

    invoke-virtual {v2, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v4, "receiver"

    invoke-virtual {v2, v4, p8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    const-string v4, "connectTimeout"

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v4, "readTimeout"

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    if-eqz p3, :cond_7e

    .line 89
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_53
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 90
    .local v3, "s":Ljava/lang/String;
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 91
    .local v0, "h":[Ljava/lang/String;
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_1a .. :try_end_7a} :catchall_7b

    goto :goto_53

    .line 71
    .end local v0    # "h":[Ljava/lang/String;
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v3    # "s":Ljava/lang/String;
    :catchall_7b
    move-exception v4

    monitor-exit v5

    throw v4

    .line 95
    .restart local v2    # "params":Landroid/os/Bundle;
    :cond_7e
    :try_start_7e
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 96
    .local v1, "msg":Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->what:I

    .line 97
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 99
    sget-object v4, Lcom/unity3d/ads/request/WebRequestThread;->_handler:Lcom/unity3d/ads/request/WebRequestHandler;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/unity3d/ads/request/WebRequestHandler;->setCancelStatus(Z)V

    .line 100
    sget-object v4, Lcom/unity3d/ads/request/WebRequestThread;->_handler:Lcom/unity3d/ads/request/WebRequestHandler;

    invoke-virtual {v4, v1}, Lcom/unity3d/ads/request/WebRequestHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_93
    .catchall {:try_start_7e .. :try_end_93} :catchall_7b

    goto :goto_18
.end method

.method public static declared-synchronized request(Ljava/lang/String;Lcom/unity3d/ads/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/request/IWebRequestListener;)V
    .registers 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "requestType"    # Lcom/unity3d/ads/request/WebRequest$RequestType;
    .param p3, "connectTimeout"    # Ljava/lang/Integer;
    .param p4, "readTimeout"    # Ljava/lang/Integer;
    .param p5, "listener"    # Lcom/unity3d/ads/request/IWebRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/request/WebRequest$RequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/ads/request/IWebRequestListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-class v7, Lcom/unity3d/ads/request/WebRequestThread;

    monitor-enter v7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_a
    invoke-static/range {v0 .. v6}, Lcom/unity3d/ads/request/WebRequestThread;->request(Ljava/lang/String;Lcom/unity3d/ads/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/request/IWebRequestListener;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 64
    monitor-exit v7

    return-void

    .line 63
    :catchall_f
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized request(Ljava/lang/String;Lcom/unity3d/ads/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/request/IWebRequestListener;)V
    .registers 18
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "requestType"    # Lcom/unity3d/ads/request/WebRequest$RequestType;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p4, "connectTimeout"    # Ljava/lang/Integer;
    .param p5, "readTimeout"    # Ljava/lang/Integer;
    .param p6, "listener"    # Lcom/unity3d/ads/request/IWebRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/request/WebRequest$RequestType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/unity3d/ads/request/IWebRequestListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-class v10, Lcom/unity3d/ads/request/WebRequestThread;

    monitor-enter v10

    const/4 v1, 0x1

    :try_start_4
    new-instance v9, Lcom/unity3d/ads/request/WebRequestResultReceiver;

    sget-object v2, Lcom/unity3d/ads/request/WebRequestThread;->_handler:Lcom/unity3d/ads/request/WebRequestHandler;

    move-object/from16 v0, p6

    invoke-direct {v9, v2, v0}, Lcom/unity3d/ads/request/WebRequestResultReceiver;-><init>(Landroid/os/Handler;Lcom/unity3d/ads/request/IWebRequestListener;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v1 .. v9}, Lcom/unity3d/ads/request/WebRequestThread;->request(ILjava/lang/String;Lcom/unity3d/ads/request/WebRequest$RequestType;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/ads/request/IWebRequestListener;Lcom/unity3d/ads/request/WebRequestResultReceiver;)V
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1b

    .line 68
    monitor-exit v10

    return-void

    .line 67
    :catchall_1b
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method public static declared-synchronized resolve(Ljava/lang/String;Lcom/unity3d/ads/request/IResolveHostListener;)Z
    .registers 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/unity3d/ads/request/IResolveHostListener;

    .prologue
    .line 104
    const-class v1, Lcom/unity3d/ads/request/WebRequestThread;

    monitor-enter v1

    if-eqz p0, :cond_c

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_16

    .line 105
    :cond_c
    sget-object v0, Lcom/unity3d/ads/request/ResolveHostError;->INVALID_HOST:Lcom/unity3d/ads/request/ResolveHostError;

    const-string v2, "Host is NULL"

    invoke-interface {p1, p0, v0, v2}, Lcom/unity3d/ads/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/ads/request/ResolveHostError;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_25

    .line 106
    const/4 v0, 0x0

    .line 145
    :goto_14
    monitor-exit v1

    return v0

    .line 109
    :cond_16
    :try_start_16
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/unity3d/ads/request/WebRequestThread$1;

    invoke-direct {v2, p0, p1}, Lcom/unity3d/ads/request/WebRequestThread$1;-><init>(Ljava/lang/String;Lcom/unity3d/ads/request/IResolveHostListener;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_25

    .line 145
    const/4 v0, 0x1

    goto :goto_14

    .line 104
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 40
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 42
    sget-object v0, Lcom/unity3d/ads/request/WebRequestThread;->_handler:Lcom/unity3d/ads/request/WebRequestHandler;

    if-nez v0, :cond_e

    .line 43
    new-instance v0, Lcom/unity3d/ads/request/WebRequestHandler;

    invoke-direct {v0}, Lcom/unity3d/ads/request/WebRequestHandler;-><init>()V

    sput-object v0, Lcom/unity3d/ads/request/WebRequestThread;->_handler:Lcom/unity3d/ads/request/WebRequestHandler;

    .line 46
    :cond_e
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/request/WebRequestThread;->_ready:Z

    .line 48
    sget-object v1, Lcom/unity3d/ads/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_14
    sget-object v0, Lcom/unity3d/ads/request/WebRequestThread;->_readyLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 50
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 52
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 53
    return-void

    .line 50
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

###### Class com.unity3d.ads.request.WebRequestThread.AnonymousClass1 (com.unity3d.ads.request.WebRequestThread$1)
.class final Lcom/unity3d/ads/request/WebRequestThread$1;
.super Ljava/lang/Object;
.source "WebRequestThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/request/WebRequestThread;->resolve(Ljava/lang/String;Lcom/unity3d/ads/request/IResolveHostListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$listener:Lcom/unity3d/ads/request/IResolveHostListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/request/IResolveHostListener;)V
    .registers 3

    .prologue
    .line 109
    iput-object p1, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$listener:Lcom/unity3d/ads/request/IResolveHostListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 112
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 113
    .local v0, "cv":Landroid/os/ConditionVariable;
    const/4 v3, 0x0

    .line 115
    .local v3, "t":Ljava/lang/Thread;
    :try_start_6
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/unity3d/ads/request/WebRequestThread$1$1;

    invoke-direct {v5, p0, v0}, Lcom/unity3d/ads/request/WebRequestThread$1$1;-><init>(Lcom/unity3d/ads/request/WebRequestThread$1;Landroid/os/ConditionVariable;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_2d

    .line 129
    .end local v3    # "t":Ljava/lang/Thread;
    .local v4, "t":Ljava/lang/Thread;
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_41

    move-object v3, v4

    .line 136
    .end local v4    # "t":Ljava/lang/Thread;
    .restart local v3    # "t":Ljava/lang/Thread;
    :goto_14
    const-wide/16 v6, 0x4e20

    invoke-virtual {v0, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    .line 137
    .local v2, "success":Z
    if-nez v2, :cond_2c

    if-eqz v3, :cond_2c

    .line 138
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 139
    iget-object v5, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$listener:Lcom/unity3d/ads/request/IResolveHostListener;

    iget-object v6, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    sget-object v7, Lcom/unity3d/ads/request/ResolveHostError;->TIMEOUT:Lcom/unity3d/ads/request/ResolveHostError;

    const-string v8, "Timeout"

    invoke-interface {v5, v6, v7, v8}, Lcom/unity3d/ads/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/ads/request/ResolveHostError;Ljava/lang/String;)V

    .line 141
    :cond_2c
    return-void

    .line 131
    .end local v2    # "success":Z
    :catch_2d
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    :goto_2e
    const-string v5, "Exception while resolving host"

    invoke-static {v5, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 133
    iget-object v5, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$listener:Lcom/unity3d/ads/request/IResolveHostListener;

    iget-object v6, p0, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    sget-object v7, Lcom/unity3d/ads/request/ResolveHostError;->UNEXPECTED_EXCEPTION:Lcom/unity3d/ads/request/ResolveHostError;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/unity3d/ads/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/ads/request/ResolveHostError;Ljava/lang/String;)V

    goto :goto_14

    .line 131
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "t":Ljava/lang/Thread;
    .restart local v4    # "t":Ljava/lang/Thread;
    :catch_41
    move-exception v1

    move-object v3, v4

    .end local v4    # "t":Ljava/lang/Thread;
    .restart local v3    # "t":Ljava/lang/Thread;
    goto :goto_2e
.end method

###### Class com.unity3d.ads.request.WebRequestThread.AnonymousClass1.RunnableC01671 (com.unity3d.ads.request.WebRequestThread$1$1)
.class Lcom/unity3d/ads/request/WebRequestThread$1$1;
.super Ljava/lang/Object;
.source "WebRequestThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/request/WebRequestThread$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/request/WebRequestThread$1;Landroid/os/ConditionVariable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/unity3d/ads/request/WebRequestThread$1;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iput-object p2, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iget-object v3, v3, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 120
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "strAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iget-object v3, v3, Lcom/unity3d/ads/request/WebRequestThread$1;->val$listener:Lcom/unity3d/ads/request/IResolveHostListener;

    iget-object v4, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iget-object v4, v4, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/unity3d/ads/request/IResolveHostListener;->onResolve(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_17} :catch_1d

    .line 126
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "strAddress":Ljava/lang/String;
    :goto_17
    iget-object v3, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    .line 127
    return-void

    .line 122
    :catch_1d
    move-exception v1

    .line 123
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v3, "Unknown host"

    invoke-static {v3, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 124
    iget-object v3, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iget-object v3, v3, Lcom/unity3d/ads/request/WebRequestThread$1;->val$listener:Lcom/unity3d/ads/request/IResolveHostListener;

    iget-object v4, p0, Lcom/unity3d/ads/request/WebRequestThread$1$1;->this$0:Lcom/unity3d/ads/request/WebRequestThread$1;

    iget-object v4, v4, Lcom/unity3d/ads/request/WebRequestThread$1;->val$host:Ljava/lang/String;

    sget-object v5, Lcom/unity3d/ads/request/ResolveHostError;->UNKNOWN_HOST:Lcom/unity3d/ads/request/ResolveHostError;

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/unity3d/ads/request/IResolveHostListener;->onFailed(Ljava/lang/String;Lcom/unity3d/ads/request/ResolveHostError;Ljava/lang/String;)V

    goto :goto_17
.end method
