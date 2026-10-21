###### Class com.unity3d.ads.log.DeviceLog (com.unity3d.ads.log.DeviceLog)
.class public Lcom/unity3d/ads/log/DeviceLog;
.super Ljava/lang/Object;
.source "DeviceLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;
    }
.end annotation


# static fields
.field private static FORCE_DEBUG_LOG:Z = false

.field public static final LOGLEVEL_DEBUG:I = 0x8

.field private static final LOGLEVEL_ERROR:I = 0x1

.field public static final LOGLEVEL_INFO:I = 0x4

.field private static final LOGLEVEL_WARNING:I = 0x2

.field private static LOG_DEBUG:Z

.field private static LOG_ERROR:Z

.field private static LOG_INFO:Z

.field private static LOG_WARNING:Z

.field private static final _deviceLogLevel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;",
            "Lcom/unity3d/ads/log/DeviceLogLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 11
    sput-boolean v5, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 12
    sput-boolean v5, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 13
    sput-boolean v5, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 14
    sput-boolean v5, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    .line 15
    const/4 v1, 0x0

    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->FORCE_DEBUG_LOG:Z

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    .line 29
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_53

    .line 30
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v2, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    new-instance v3, Lcom/unity3d/ads/log/DeviceLogLevel;

    const-string v4, "i"

    invoke-direct {v3, v4}, Lcom/unity3d/ads/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v2, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    new-instance v3, Lcom/unity3d/ads/log/DeviceLogLevel;

    const-string v4, "d"

    invoke-direct {v3, v4}, Lcom/unity3d/ads/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v2, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    new-instance v3, Lcom/unity3d/ads/log/DeviceLogLevel;

    const-string v4, "w"

    invoke-direct {v3, v4}, Lcom/unity3d/ads/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    sget-object v2, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    new-instance v3, Lcom/unity3d/ads/log/DeviceLogLevel;

    const-string v4, "e"

    invoke-direct {v3, v4}, Lcom/unity3d/ads/log/DeviceLogLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_53
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/UnityAdsForceDebugMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "forceDebugMode":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 38
    sput-boolean v5, Lcom/unity3d/ads/log/DeviceLog;->FORCE_DEBUG_LOG:Z

    .line 40
    :cond_62
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static checkMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 173
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 174
    :cond_8
    const-string v0, "DO NOT USE EMPTY MESSAGES, use DeviceLog.entered() instead"

    .line 180
    .local v0, "finalMessage":Ljava/lang/String;
    :goto_a
    return-object v0

    .line 177
    .end local v0    # "finalMessage":Ljava/lang/String;
    :cond_b
    move-object v0, p0

    .restart local v0    # "finalMessage":Ljava/lang/String;
    goto :goto_a
.end method

.method private static createLogEntry(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/ads/log/DeviceLogEntry;
    .registers 10
    .param p0, "level"    # Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 190
    .local v5, "stack":[Ljava/lang/StackTraceElement;
    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->getLogLevel(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;)Lcom/unity3d/ads/log/DeviceLogLevel;

    move-result-object v3

    .line 191
    .local v3, "logLevel":Lcom/unity3d/ads/log/DeviceLogLevel;
    const/4 v2, 0x0

    .line 193
    .local v2, "logEntry":Lcom/unity3d/ads/log/DeviceLogEntry;
    if-eqz v3, :cond_46

    .line 195
    const/4 v4, 0x0

    .line 197
    .local v4, "markedIndex":Z
    const/4 v0, 0x0

    .local v0, "callerIndex":I
    :goto_11
    array-length v6, v5

    if-ge v0, v6, :cond_39

    .line 198
    aget-object v1, v5, v0

    .line 199
    .local v1, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/unity3d/ads/log/DeviceLog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 200
    const/4 v4, 0x1

    .line 202
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/unity3d/ads/log/DeviceLog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    if-eqz v4, :cond_47

    .line 207
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    :cond_39
    const/4 v1, 0x0

    .line 209
    .restart local v1    # "e":Ljava/lang/StackTraceElement;
    array-length v6, v5

    if-ge v0, v6, :cond_3f

    .line 210
    aget-object v1, v5, v0

    .line 213
    :cond_3f
    if-eqz v1, :cond_46

    .line 214
    new-instance v2, Lcom/unity3d/ads/log/DeviceLogEntry;

    .end local v2    # "logEntry":Lcom/unity3d/ads/log/DeviceLogEntry;
    invoke-direct {v2, v3, p1, v1}, Lcom/unity3d/ads/log/DeviceLogEntry;-><init>(Lcom/unity3d/ads/log/DeviceLogLevel;Ljava/lang/String;Ljava/lang/StackTraceElement;)V

    .line 218
    .end local v0    # "callerIndex":I
    .end local v1    # "e":Ljava/lang/StackTraceElement;
    .end local v4    # "markedIndex":Z
    .restart local v2    # "logEntry":Lcom/unity3d/ads/log/DeviceLogEntry;
    :cond_46
    return-object v2

    .line 197
    .restart local v0    # "callerIndex":I
    .restart local v1    # "e":Ljava/lang/StackTraceElement;
    .restart local v4    # "markedIndex":Z
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public static debug(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    const/16 v0, 0xc00

    .line 89
    .local v0, "maxDebugMsgLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_20

    .line 90
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7800

    if-ge v1, v2, :cond_1f

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 100
    :cond_1f
    :goto_1f
    return-void

    .line 99
    :cond_20
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unity3d/ads/log/DeviceLog;->write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 104
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static entered()V
    .registers 1

    .prologue
    .line 74
    const-string v0, "ENTERED METHOD"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/log/DeviceLog;->write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 137
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 121
    const-string v0, ""

    .line 122
    .local v0, "finalMessage":Ljava/lang/String;
    if-eqz p0, :cond_15

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_15
    if-eqz p1, :cond_32

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_32
    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_59
    sget-object v1, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {v1, v0}, Lcom/unity3d/ads/log/DeviceLog;->write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private static getLogLevel(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;)Lcom/unity3d/ads/log/DeviceLogLevel;
    .registers 2
    .param p0, "logLevel"    # Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    .prologue
    .line 184
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog;->_deviceLogLevel:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/log/DeviceLogLevel;

    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/log/DeviceLog;->write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 83
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static setLogLevel(I)V
    .registers 4
    .param p0, "newLevel"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    const/16 v0, 0x8

    if-lt p0, v0, :cond_f

    .line 44
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 45
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 46
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 47
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    .line 69
    :goto_e
    return-void

    .line 48
    :cond_f
    const/4 v0, 0x4

    if-lt p0, v0, :cond_1b

    .line 49
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 50
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 51
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 52
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_e

    .line 53
    :cond_1b
    const/4 v0, 0x2

    if-lt p0, v0, :cond_27

    .line 54
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 55
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 56
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 57
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_e

    .line 58
    :cond_27
    if-lt p0, v1, :cond_32

    .line 59
    sput-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 60
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 61
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 62
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_e

    .line 64
    :cond_32
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 65
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 66
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 67
    sput-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    goto :goto_e
.end method

.method public static warning(Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/ads/log/DeviceLog;->checkMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/log/DeviceLog;->write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 113
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->warning(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private static write(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V
    .registers 6
    .param p0, "level"    # Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v1, 0x1

    .line 143
    .local v1, "logThisMessage":Z
    sget-object v2, Lcom/unity3d/ads/log/DeviceLog$1;->$SwitchMap$com$unity3d$ads$log$DeviceLog$UnityAdsLogLevel:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_28

    .line 160
    :goto_c
    sget-boolean v2, Lcom/unity3d/ads/log/DeviceLog;->FORCE_DEBUG_LOG:Z

    if-eqz v2, :cond_11

    .line 161
    const/4 v1, 0x1

    .line 164
    :cond_11
    if-eqz v1, :cond_1a

    .line 165
    invoke-static {p0, p1}, Lcom/unity3d/ads/log/DeviceLog;->createLogEntry(Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/ads/log/DeviceLogEntry;

    move-result-object v0

    .line 166
    .local v0, "logEntry":Lcom/unity3d/ads/log/DeviceLogEntry;
    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->writeToLog(Lcom/unity3d/ads/log/DeviceLogEntry;)V

    .line 168
    .end local v0    # "logEntry":Lcom/unity3d/ads/log/DeviceLogEntry;
    :cond_1a
    return-void

    .line 145
    :pswitch_1b
    sget-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_INFO:Z

    .line 146
    goto :goto_c

    .line 148
    :pswitch_1e
    sget-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_DEBUG:Z

    .line 149
    goto :goto_c

    .line 151
    :pswitch_21
    sget-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_WARNING:Z

    .line 152
    goto :goto_c

    .line 154
    :pswitch_24
    sget-boolean v1, Lcom/unity3d/ads/log/DeviceLog;->LOG_ERROR:Z

    .line 155
    goto :goto_c

    .line 143
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method

.method private static writeToLog(Lcom/unity3d/ads/log/DeviceLogEntry;)V
    .registers 8
    .param p0, "logEntry"    # Lcom/unity3d/ads/log/DeviceLogEntry;

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "receivingMethod":Ljava/lang/reflect/Method;
    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Lcom/unity3d/ads/log/DeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/log/DeviceLogLevel;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 226
    :try_start_9
    const-class v2, Landroid/util/Log;

    invoke-virtual {p0}, Lcom/unity3d/ads/log/DeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/log/DeviceLogLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/ads/log/DeviceLogLevel;->getReceivingMethodName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_40

    move-result-object v1

    .line 232
    :goto_24
    if-eqz v1, :cond_3f

    .line 234
    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_28
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/log/DeviceLogEntry;->getLogLevel()Lcom/unity3d/ads/log/DeviceLogLevel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unity3d/ads/log/DeviceLogLevel;->getLogTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/unity3d/ads/log/DeviceLogEntry;->getParsedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3f} :catch_49

    .line 241
    :cond_3f
    :goto_3f
    return-void

    .line 228
    :catch_40
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UnityAds"

    const-string v3, "Writing to log failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_49
    move-exception v0

    .line 237
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "UnityAds"

    const-string v3, "Writing to log failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

###### Class com.unity3d.ads.log.DeviceLog.AnonymousClass1 (com.unity3d.ads.log.DeviceLog$1)
.class synthetic Lcom/unity3d/ads/log/DeviceLog$1;
.super Ljava/lang/Object;
.source "DeviceLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/log/DeviceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$unity3d$ads$log$DeviceLog$UnityAdsLogLevel:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 143
    invoke-static {}, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->values()[Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/unity3d/ads/log/DeviceLog$1;->$SwitchMap$com$unity3d$ads$log$DeviceLog$UnityAdsLogLevel:[I

    :try_start_9
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$1;->$SwitchMap$com$unity3d$ads$log$DeviceLog$UnityAdsLogLevel:[I

    sget-object v1, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-virtual {v1}, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$1;->$SwitchMap$com$unity3d$ads$log$DeviceLog$UnityAdsLogLevel:[I

    sget-object v1, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-virtual {v1}, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$1;->$SwitchMap$com$unity3d$ads$log$DeviceLog$UnityAdsLogLevel:[I

    sget-object v1, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-virtual {v1}, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$1;->$SwitchMap$com$unity3d$ads$log$DeviceLog$UnityAdsLogLevel:[I

    sget-object v1, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-virtual {v1}, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method

###### Class com.unity3d.ads.log.DeviceLog.UnityAdsLogLevel (com.unity3d.ads.log.DeviceLog$UnityAdsLogLevel)
.class public final enum Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;
.super Ljava/lang/Enum;
.source "DeviceLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/log/DeviceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnityAdsLogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

.field public static final enum DEBUG:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

.field public static final enum ERROR:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

.field public static final enum INFO:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

.field public static final enum WARNING:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    new-instance v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    new-instance v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    new-instance v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    sget-object v1, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->$VALUES:[Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->$VALUES:[Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    invoke-virtual {v0}, [Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/log/DeviceLog$UnityAdsLogLevel;

    return-object v0
.end method
