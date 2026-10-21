###### Class com.unity3d.ads.configuration.InitializeThread (com.unity3d.ads.configuration.InitializeThread)
.class public Lcom/unity3d/ads/configuration/InitializeThread;
.super Ljava/lang/Thread;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateComplete;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;,
        Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    }
.end annotation


# static fields
.field private static _thread:Lcom/unity3d/ads/configuration/InitializeThread;


# instance fields
.field private _state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

.field private _stopThread:Z


# direct methods
.method private constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V
    .registers 3
    .param p1, "state"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_stopThread:Z

    .line 40
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .line 41
    return-void
.end method

.method public static declared-synchronized initialize(Lcom/unity3d/ads/configuration/Configuration;)V
    .registers 4
    .param p0, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    .line 57
    const-class v1, Lcom/unity3d/ads/configuration/InitializeThread;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/unity3d/ads/configuration/InitializeThread;->_thread:Lcom/unity3d/ads/configuration/InitializeThread;

    if-nez v0, :cond_1f

    .line 58
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread;

    new-instance v2, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;

    invoke-direct {v2, p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    invoke-direct {v0, v2}, Lcom/unity3d/ads/configuration/InitializeThread;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V

    sput-object v0, Lcom/unity3d/ads/configuration/InitializeThread;->_thread:Lcom/unity3d/ads/configuration/InitializeThread;

    .line 59
    sget-object v0, Lcom/unity3d/ads/configuration/InitializeThread;->_thread:Lcom/unity3d/ads/configuration/InitializeThread;

    const-string v2, "UnityAdsInitializeThread"

    invoke-virtual {v0, v2}, Lcom/unity3d/ads/configuration/InitializeThread;->setName(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/unity3d/ads/configuration/InitializeThread;->_thread:Lcom/unity3d/ads/configuration/InitializeThread;

    invoke-virtual {v0}, Lcom/unity3d/ads/configuration/InitializeThread;->start()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    .line 62
    :cond_1f
    monitor-exit v1

    return-void

    .line 57
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public quit()V
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_stopThread:Z

    .line 54
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 45
    :goto_0
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    instance-of v0, v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateComplete;

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_stopThread:Z

    if-nez v0, :cond_17

    .line 46
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    invoke-virtual {v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;->execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    goto :goto_0

    .line 49
    :cond_17
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/configuration/InitializeThread;->_thread:Lcom/unity3d/ads/configuration/InitializeThread;

    .line 50
    return-void
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.AnonymousClass1 (com.unity3d.ads.configuration.InitializeThread$1)
.class synthetic Lcom/unity3d/ads/configuration/InitializeThread$1;
.super Ljava/lang/Object;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeState (com.unity3d.ads.configuration.InitializeThread$InitializeState)
.class abstract Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.super Ljava/lang/Object;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "InitializeState"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/unity3d/ads/configuration/InitializeThread$1;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateAdBlockerCheck (com.unity3d.ads.configuration.InitializeThread$InitializeStateAdBlockerCheck)
.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateAdBlockerCheck"
.end annotation


# instance fields
.field private _address:Ljava/net/InetAddress;

.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 149
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 150
    return-void
.end method

.method static synthetic access$102(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 2
    .param p0, "x0"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    return-object p1
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .registers 9

    .prologue
    .line 158
    const-string v5, "Unity Ads init: checking for ad blockers"

    invoke-static {v5}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 162
    :try_start_5
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v6}, Lcom/unity3d/ads/configuration/Configuration;->getConfigUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_13} :catch_4a

    move-result-object v0

    .line 167
    .local v0, "configHost":Ljava/lang/String;
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 168
    .local v1, "cv":Landroid/os/ConditionVariable;
    new-instance v5, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 179
    invoke-virtual {v5}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->start()V

    .line 182
    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v4

    .line 183
    .local v4, "success":Z
    if-eqz v4, :cond_53

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    if-eqz v5, :cond_53

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_address:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 184
    const-string v5, "Unity Ads init: halting init because Unity Ads config resolves to loopback address (due to ad blocker?)"

    invoke-static {v5}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v3

    .line 187
    .local v3, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    if-eqz v3, :cond_48

    .line 188
    new-instance v5, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;

    invoke-direct {v5, p0, v3}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Lcom/unity3d/ads/IUnityAdsListener;)V

    invoke-static {v5}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 195
    :cond_48
    const/4 v5, 0x0

    .line 198
    .end local v0    # "configHost":Ljava/lang/String;
    .end local v1    # "cv":Landroid/os/ConditionVariable;
    .end local v3    # "listener":Lcom/unity3d/ads/IUnityAdsListener;
    .end local v4    # "success":Z
    :goto_49
    return-object v5

    .line 163
    :catch_4a
    move-exception v2

    .line 164
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v5, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;

    iget-object v6, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v5, v6}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_49

    .line 198
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "configHost":Ljava/lang/String;
    .restart local v1    # "cv":Landroid/os/ConditionVariable;
    .restart local v4    # "success":Z
    :cond_53
    new-instance v5, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;

    iget-object v6, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v5, v6}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_49
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateAdBlockerCheck.AnonymousClass1 (com.unity3d.ads.configuration.InitializeThread$InitializeStateAdBlockerCheck$1)
.class Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;
.super Ljava/lang/Thread;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

.field final synthetic val$configHost:Ljava/lang/String;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .registers 4
    .param p1, "this$0"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->val$configHost:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

    iget-object v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->val$configHost:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->access$102(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 173
    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 178
    :goto_10
    return-void

    .line 174
    :catch_11
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get address. Host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->val$configHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 176
    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_10
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateAdBlockerCheck.AnonymousClass2 (com.unity3d.ads.configuration.InitializeThread$InitializeStateAdBlockerCheck$2)
.class Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;
.super Ljava/lang/Object;
.source "InitializeThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;->execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

.field final synthetic val$listener:Lcom/unity3d/ads/IUnityAdsListener;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;Lcom/unity3d/ads/IUnityAdsListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;->this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck$2;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v2, "Unity Ads config server resolves to loopback address (due to ad blocker?)"

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 192
    return-void
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateComplete (com.unity3d.ads.configuration.InitializeThread$InitializeStateComplete)
.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateComplete;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateComplete"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateConfig (com.unity3d.ads.configuration.InitializeThread$InitializeStateConfig)
.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateConfig"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;

.field private _maxRetries:I

.field private _retries:I

.field private _retryDelay:I


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    .line 204
    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_maxRetries:I

    .line 205
    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    .line 209
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 210
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .registers 4

    .prologue
    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unity Ads init: load configuration from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 217
    :try_start_1a
    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v1}, Lcom/unity3d/ads/configuration/Configuration;->makeRequest()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_27

    .line 228
    new-instance v1, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;

    iget-object v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v1, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    :goto_26
    return-object v1

    .line 218
    :catch_27
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    iget v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_maxRetries:I

    if-ge v1, v2, :cond_42

    .line 220
    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    .line 221
    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    .line 222
    new-instance v1, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;

    iget v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    invoke-direct {v1, p0, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;I)V

    goto :goto_26

    .line 225
    :cond_42
    new-instance v1, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;

    invoke-direct {v1, v0, p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;-><init>(Ljava/lang/Exception;Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V

    goto :goto_26
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateCreate (com.unity3d.ads.configuration.InitializeThread$InitializeStateCreate)
.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateCreate"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;

.field private _webViewData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;Ljava/lang/String;)V
    .registers 4
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;
    .param p2, "webViewData"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 335
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 336
    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    .line 337
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .registers 8

    .prologue
    .line 349
    const-string v3, "Unity Ads init: creating webapp"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 352
    .local v0, "configuration":Lcom/unity3d/ads/configuration/Configuration;
    iget-object v3, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/unity3d/ads/configuration/Configuration;->setWebViewData(Ljava/lang/String;)V

    .line 356
    :try_start_c
    invoke-static {v0}, Lcom/unity3d/ads/webview/WebViewApp;->create(Lcom/unity3d/ads/configuration/Configuration;)Z
    :try_end_f
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_c .. :try_end_f} :catch_18

    move-result v1

    .line 363
    .local v1, "createSuccessFull":Z
    if-eqz v1, :cond_26

    .line 364
    new-instance v3, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateComplete;

    invoke-direct {v3}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateComplete;-><init>()V

    .line 368
    .end local v1    # "createSuccessFull":Z
    :goto_17
    return-object v3

    .line 358
    :catch_18
    move-exception v2

    .line 359
    .local v2, "e":Ljava/lang/IllegalThreadStateException;
    const-string v3, "Illegal Thread"

    invoke-static {v3, v2}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 360
    new-instance v3, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v4, "create webapp"

    invoke-direct {v3, v4, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_17

    .line 367
    .end local v2    # "e":Ljava/lang/IllegalThreadStateException;
    .restart local v1    # "createSuccessFull":Z
    :cond_26
    const-string v3, "Unity Ads WebApp creation failed!"

    invoke-static {v3}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 368
    new-instance v3, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v4, "create webapp"

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Creation of WebApp failed!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_17
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method

.method public getWebData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;->_webViewData:Ljava/lang/String;

    return-object v0
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateError (com.unity3d.ads.configuration.InitializeThread$InitializeStateError)
.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateError"
.end annotation


# instance fields
.field _exception:Ljava/lang/Exception;

.field _state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 385
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;->_state:Ljava/lang/String;

    .line 386
    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;->_exception:Ljava/lang/Exception;

    .line 387
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .registers 5

    .prologue
    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity Ads init: halting init in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;->_state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;->_exception:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    .line 394
    .local v0, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init failed in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;->_state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 396
    new-instance v2, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError$1;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;Lcom/unity3d/ads/IUnityAdsListener;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 403
    :cond_4f
    const/4 v2, 0x0

    return-object v2
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateError.AnonymousClass1 (com.unity3d.ads.configuration.InitializeThread$InitializeStateError$1)
.class Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError$1;
.super Ljava/lang/Object;
.source "InitializeThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;->execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

.field final synthetic val$listener:Lcom/unity3d/ads/IUnityAdsListener;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;Lcom/unity3d/ads/IUnityAdsListener;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError$1;->this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError$1;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    iput-object p3, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 399
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError$1;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    iget-object v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError$1;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 400
    return-void
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateLoadCache (com.unity3d.ads.configuration.InitializeThread$InitializeStateLoadCache)
.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateLoadCache"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 236
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 237
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .registers 7

    .prologue
    .line 245
    const-string v4, "Unity Ads init: check if webapp can be loaded from local cache"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 250
    :try_start_5
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getLocalWebViewFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/unity3d/ads/misc/Utilities;->readFileBytes(Ljava/io/File;)[B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_38

    move-result-object v1

    .line 256
    .local v1, "localWebViewData":[B
    invoke-static {v1}, Lcom/unity3d/ads/misc/Utilities;->Sha256([B)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "localWebViewHash":Ljava/lang/String;
    if-eqz v2, :cond_64

    iget-object v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v4}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 262
    :try_start_24
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2b} :catch_5b

    .line 267
    .local v3, "webViewDataString":Ljava/lang/String;
    const-string v4, "Unity Ads init: webapp loaded from local cache"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 268
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v4, v5, v3}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;-><init>(Lcom/unity3d/ads/configuration/Configuration;Ljava/lang/String;)V

    .line 271
    .end local v1    # "localWebViewData":[B
    .end local v2    # "localWebViewHash":Ljava/lang/String;
    .end local v3    # "webViewDataString":Ljava/lang/String;
    :goto_37
    return-object v4

    .line 251
    :catch_38
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unity Ads init: webapp not found in local cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 253
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v4, v5}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_37

    .line 263
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "localWebViewData":[B
    .restart local v2    # "localWebViewHash":Ljava/lang/String;
    :catch_5b
    move-exception v0

    .line 264
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v5, "load cache"

    invoke-direct {v4, v5, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_37

    .line 271
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_64
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v4, v5}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_37
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateLoadWeb (com.unity3d.ads.configuration.InitializeThread$InitializeStateLoadWeb)
.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateLoadWeb"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;

.field private _maxRetries:I

.field private _retries:I

.field private _retryDelay:I


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    .line 278
    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_maxRetries:I

    .line 279
    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    .line 282
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 283
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .registers 9

    .prologue
    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unity Ads init: loading webapp from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v5}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 296
    :try_start_1c
    new-instance v1, Lcom/unity3d/ads/request/WebRequest;

    iget-object v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v4}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Lcom/unity3d/ads/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2a
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_2a} :catch_4f

    .line 306
    .local v1, "request":Lcom/unity3d/ads/request/WebRequest;
    :try_start_2a
    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequest;->makeRequest()Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_5d

    move-result-object v2

    .line 317
    .local v2, "webViewData":Ljava/lang/String;
    iget-object v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v4}, Lcom/unity3d/ads/configuration/Configuration;->getWebViewHash()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "webViewHash":Ljava/lang/String;
    if-eqz v3, :cond_7e

    invoke-static {v2}, Lcom/unity3d/ads/misc/Utilities;->Sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 319
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v5, "load web"

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Invalid webViewHash"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 326
    .end local v1    # "request":Lcom/unity3d/ads/request/WebRequest;
    .end local v2    # "webViewData":Ljava/lang/String;
    .end local v3    # "webViewHash":Ljava/lang/String;
    :goto_4e
    return-object v4

    .line 298
    :catch_4f
    move-exception v0

    .line 299
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v4, "Malformed URL"

    invoke-static {v4, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 300
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v5, "make webrequest"

    invoke-direct {v4, v5, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4e

    .line 307
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "request":Lcom/unity3d/ads/request/WebRequest;
    :catch_5d
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    iget v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    iget v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_maxRetries:I

    if-ge v4, v5, :cond_78

    .line 309
    iget v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    .line 310
    iget v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retries:I

    .line 311
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;

    iget v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_retryDelay:I

    invoke-direct {v4, p0, v5}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;I)V

    goto :goto_4e

    .line 314
    :cond_78
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;

    invoke-direct {v4, v0, p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;-><init>(Ljava/lang/Exception;Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V

    goto :goto_4e

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "webViewData":Ljava/lang/String;
    .restart local v3    # "webViewHash":Ljava/lang/String;
    :cond_7e
    if-eqz v3, :cond_8c

    .line 323
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getLocalWebViewFile()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/unity3d/ads/misc/Utilities;->writeFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 326
    :cond_8c
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v4, v5, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateCreate;-><init>(Lcom/unity3d/ads/configuration/Configuration;Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public getConfiguration()Lcom/unity3d/ads/configuration/Configuration;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadWeb;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-object v0
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateNetworkError (com.unity3d.ads.configuration.InitializeThread$InitializeStateNetworkError)
.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;
.source "InitializeThread.java"

# interfaces
.implements Lcom/unity3d/ads/connectivity/IConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateNetworkError"
.end annotation


# static fields
.field protected static final CONNECTED_EVENT_THRESHOLD_MS:I = 0x2710

.field protected static final MAX_CONNECTED_EVENTS:I = 0x1f4

.field private static _lastConnectedEventTimeMs:J

.field private static _receivedConnectedEvents:I


# instance fields
.field private _conditionVariable:Landroid/os/ConditionVariable;

.field private _erroredState:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 410
    const/4 v0, 0x0

    sput v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_receivedConnectedEvents:I

    .line 411
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_lastConnectedEventTimeMs:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "erroredState"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .prologue
    .line 417
    const-string v0, "network error"

    invoke-direct {p0, v0, p1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 418
    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_erroredState:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .line 419
    return-void
.end method

.method private shouldHandleConnectedEvent()Z
    .registers 5

    .prologue
    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_lastConnectedEventTimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_15

    sget v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_receivedConnectedEvents:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_15

    .line 462
    const/4 v0, 0x1

    .line 465
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .registers 5

    .prologue
    .line 423
    const-string v0, "Unity Ads init: network error, waiting for connection events"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 425
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_conditionVariable:Landroid/os/ConditionVariable;

    .line 426
    invoke-static {p0}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->addListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V

    .line 428
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_conditionVariable:Landroid/os/ConditionVariable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 429
    invoke-static {p0}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->removeListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V

    .line 430
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_erroredState:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .line 434
    :goto_1f
    return-object v0

    .line 433
    :cond_20
    invoke-static {p0}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->removeListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V

    .line 434
    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v1, "network error"

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "No connected events within the timeout!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1f
.end method

.method public onConnected()V
    .registers 3

    .prologue
    .line 440
    sget v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_receivedConnectedEvents:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_receivedConnectedEvents:I

    .line 442
    const-string v0, "Unity Ads init got connected event"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 443
    invoke-direct {p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->shouldHandleConnectedEvent()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 444
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 447
    :cond_16
    sget v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_receivedConnectedEvents:I

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1f

    .line 448
    invoke-static {p0}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->removeListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V

    .line 451
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;->_lastConnectedEventTimeMs:J

    .line 452
    return-void
.end method

.method public onDisconnected()V
    .registers 2

    .prologue
    .line 456
    const-string v0, "Unity Ads init got disconnected event"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 457
    return-void
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateReset (com.unity3d.ads.configuration.InitializeThread$InitializeStateReset)
.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateReset"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Lcom/unity3d/ads/configuration/Configuration;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 74
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    .line 75
    return-void
.end method

.method private unregisterLifecycleCallbacks()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/unity3d/ads/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/ads/lifecycle/LifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 135
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 136
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/unity3d/ads/api/Lifecycle;->getLifecycleListener()Lcom/unity3d/ads/lifecycle/LifecycleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 139
    :cond_17
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unity3d/ads/api/Lifecycle;->setLifecycleListener(Lcom/unity3d/ads/lifecycle/LifecycleListener;)V

    .line 141
    :cond_1b
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 79
    const-string v4, "Unity Ads init: starting init"

    invoke-static {v4}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 81
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    .line 82
    .local v2, "cv":Landroid/os/ConditionVariable;
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    .line 83
    .local v1, "currentApp":Lcom/unity3d/ads/webview/WebViewApp;
    const/4 v3, 0x1

    .line 85
    .local v3, "success":Z
    if-eqz v1, :cond_3d

    .line 86
    invoke-virtual {v1, v6}, Lcom/unity3d/ads/webview/WebViewApp;->setWebAppLoaded(Z)V

    .line 87
    invoke-virtual {v1, v6}, Lcom/unity3d/ads/webview/WebViewApp;->setWebAppInitialized(Z)V

    .line 89
    invoke-virtual {v1}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 90
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;Lcom/unity3d/ads/webview/WebViewApp;Landroid/os/ConditionVariable;)V

    invoke-static {v4}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v3

    .line 102
    :cond_2c
    if-nez v3, :cond_3d

    .line 103
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v5, "reset webapp"

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Reset failed on opening ConditionVariable"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 129
    :goto_3c
    return-object v4

    .line 107
    :cond_3d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xd

    if-le v4, v5, :cond_46

    .line 108
    invoke-direct {p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;->unregisterLifecycleCallbacks()V

    .line 111
    :cond_46
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/unity3d/ads/properties/SdkProperties;->setCacheDirectory(Lcom/unity3d/ads/cache/CacheDirectory;)V

    .line 112
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 113
    .local v0, "cacheDir":Ljava/io/File;
    if-nez v0, :cond_5f

    .line 114
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;

    const-string v5, "reset webapp"

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Cache directory is NULL"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3c

    .line 117
    :cond_5f
    invoke-static {v6}, Lcom/unity3d/ads/properties/SdkProperties;->setInitialized(Z)V

    .line 118
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->reset()V

    .line 119
    invoke-static {}, Lcom/unity3d/ads/broadcast/BroadcastMonitor;->removeAllBroadcastListeners()V

    .line 120
    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->cancel()V

    .line 121
    invoke-static {}, Lcom/unity3d/ads/request/WebRequestThread;->cancel()V

    .line 122
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->stopAll()V

    .line 124
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/device/StorageManager;->init(Landroid/content/Context;)Z

    .line 125
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/ads/device/AdvertisingId;->init(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/unity3d/ads/device/VolumeChange;->clearAllListeners()V

    .line 128
    iget-object v4, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getConfigUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/unity3d/ads/configuration/Configuration;->setConfigUrl(Ljava/lang/String;)V

    .line 129
    new-instance v4, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;

    iget-object v5, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v4, v5}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateAdBlockerCheck;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    goto :goto_3c
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateReset.AnonymousClass1 (com.unity3d.ads.configuration.InitializeThread$InitializeStateReset$1)
.class Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;
.super Ljava/lang/Object;
.source "InitializeThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;->execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;

.field final synthetic val$currentApp:Lcom/unity3d/ads/webview/WebViewApp;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;Lcom/unity3d/ads/webview/WebViewApp;Landroid/os/ConditionVariable;)V
    .registers 4
    .param p1, "this$0"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->this$0:Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset;

    iput-object p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->val$currentApp:Lcom/unity3d/ads/webview/WebViewApp;

    iput-object p3, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->val$currentApp:Lcom/unity3d/ads/webview/WebViewApp;

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->getWebView()Lcom/unity3d/ads/webview/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebView;->destroy()V

    .line 94
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->val$currentApp:Lcom/unity3d/ads/webview/WebViewApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/ads/webview/WebViewApp;->setWebView(Lcom/unity3d/ads/webview/WebView;)V

    .line 95
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateReset$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 96
    return-void
.end method

###### Class com.unity3d.ads.configuration.InitializeThread.InitializeStateRetry (com.unity3d.ads.configuration.InitializeThread$InitializeStateRetry)
.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateRetry"
.end annotation


# instance fields
.field _delay:I

.field _state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;I)V
    .registers 4
    .param p1, "state"    # Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .param p2, "delay"    # I

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    .line 474
    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    .line 475
    iput p2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    .line 476
    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .registers 7

    .prologue
    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unity Ads init: retrying in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 482
    :try_start_1e
    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_delay:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_27} :catch_2a

    .line 487
    :goto_27
    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;->_state:Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;

    return-object v1

    .line 483
    :catch_2a
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Init retry interrupted"

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_27
.end method
