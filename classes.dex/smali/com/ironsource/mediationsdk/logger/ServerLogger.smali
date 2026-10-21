###### Class com.ironsource.mediationsdk.logger.ServerLogger (com.ironsource.mediationsdk.logger.ServerLogger)
.class public Lcom/ironsource/mediationsdk/logger/ServerLogger;
.super Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.source "ServerLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "server"


# instance fields
.field private final SERVER_LOGS_SIZE_LIMIT:I

.field private mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/logger/ServerLogEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    const-string v0, "server"

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;)V

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->SERVER_LOGS_SIZE_LIMIT:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "debugLevel"    # I

    .prologue
    .line 27
    const-string v0, "server"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;I)V

    .line 16
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->SERVER_LOGS_SIZE_LIMIT:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/logger/ServerLogger;)V
    .registers 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/logger/ServerLogger;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/ServerLogger;->send()V

    return-void
.end method

.method private declared-synchronized addLogEntry(Lcom/ironsource/mediationsdk/logger/ServerLogEntry;)V
    .registers 8
    .param p1, "entry"    # Lcom/ironsource/mediationsdk/logger/ServerLogEntry;

    .prologue
    .line 39
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/ServerLogger;->shouldSendLogs()Z

    move-result v3

    .line 42
    .local v3, "shouldSendLogs":Z
    if-eqz v3, :cond_11

    .line 43
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/ServerLogger;->send()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_42

    .line 63
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 45
    :cond_11
    :try_start_11
    iget-object v4, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_42

    move-result v4

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_f

    .line 48
    :try_start_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, "newerLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/logger/ServerLogEntry;>;"
    const/16 v1, 0x1f4

    .local v1, "i":I
    :goto_22
    iget-object v4, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_36

    .line 52
    iget-object v4, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 55
    :cond_36
    iput-object v2, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_38} :catch_39
    .catchall {:try_start_1b .. :try_end_38} :catchall_42

    goto :goto_f

    .line 57
    .end local v1    # "i":I
    .end local v2    # "newerLog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/logger/ServerLogEntry;>;"
    :catch_39
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_42

    goto :goto_f

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "shouldSendLogs":Z
    :catchall_42
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private getTimestamp()Ljava/lang/String;
    .registers 4

    .prologue
    .line 94
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "dateFormat":Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 96
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private send()V
    .registers 3

    .prologue
    .line 84
    new-instance v0, Lcom/ironsource/mediationsdk/logger/LogsSender;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/logger/LogsSender;-><init>(Ljava/util/ArrayList;)V

    const-string v1, "LogsSender"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->createAndStartWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method private shouldSendLogs()Z
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/logger/ServerLogEntry;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/ServerLogEntry;->getLogLevel()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public declared-synchronized log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .registers 6
    .param p1, "tag"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ironsource/mediationsdk/logger/ServerLogEntry;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/ServerLogger;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/ironsource/mediationsdk/logger/ServerLogEntry;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/logger/ServerLogger;->addLogEntry(Lcom/ironsource/mediationsdk/logger/ServerLogEntry;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 104
    monitor-exit p0

    return-void

    .line 103
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "tag"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "logMessage":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1a

    .line 113
    const-string v1, ":stacktrace["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_1a
    new-instance v1, Lcom/ironsource/mediationsdk/logger/ServerLogEntry;

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/ServerLogger;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/ServerLogEntry;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/logger/ServerLogger;->addLogEntry(Lcom/ironsource/mediationsdk/logger/ServerLogEntry;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 118
    monitor-exit p0

    return-void

    .line 110
    .end local v0    # "logMessage":Ljava/lang/StringBuilder;
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

###### Class com.ironsource.mediationsdk.logger.ServerLogger.SendingCalc (com.ironsource.mediationsdk.logger.ServerLogger$SendingCalc)
.class Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;
.super Ljava/lang/Object;
.source "ServerLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/logger/ServerLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendingCalc"
.end annotation


# instance fields
.field private DEFAULT_DEBUG_LEVEL:I

.field private DEFAULT_SIZE:I

.field private DEFAULT_TIME:I

.field final synthetic this$0:Lcom/ironsource/mediationsdk/logger/ServerLogger;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/logger/ServerLogger;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 134
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->this$0:Lcom/ironsource/mediationsdk/logger/ServerLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->DEFAULT_SIZE:I

    .line 131
    iput v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->DEFAULT_TIME:I

    .line 132
    const/4 v0, 0x3

    iput v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->DEFAULT_DEBUG_LEVEL:I

    .line 135
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->initDefaults()V

    .line 136
    return-void
.end method

.method private calc(I)Z
    .registers 4
    .param p1, "event"    # I

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->error(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 159
    :cond_7
    :goto_7
    return v0

    .line 154
    :cond_8
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->size()Z

    move-result v1

    if-nez v1, :cond_7

    .line 156
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->time()Z

    move-result v1

    if-nez v1, :cond_7

    .line 159
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private error(I)Z
    .registers 3
    .param p1, "event"    # I

    .prologue
    .line 170
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private initDefaults()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method

.method private size()Z
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method private time()Z
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public notifyEvent(I)V
    .registers 3
    .param p1, "event"    # I

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->calc(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/ServerLogger$SendingCalc;->this$0:Lcom/ironsource/mediationsdk/logger/ServerLogger;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/logger/ServerLogger;->access$000(Lcom/ironsource/mediationsdk/logger/ServerLogger;)V

    .line 149
    :cond_b
    return-void
.end method
