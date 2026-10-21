###### Class com.ironsource.mediationsdk.logger.PublisherLogger (com.ironsource.mediationsdk.logger.PublisherLogger)
.class public Lcom/ironsource/mediationsdk/logger/PublisherLogger;
.super Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.source "PublisherLogger.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "publisher"


# instance fields
.field private mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 16
    const-string v0, "publisher"

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/logger/LogListener;I)V
    .registers 4
    .param p1, "logListener"    # Lcom/ironsource/mediationsdk/logger/LogListener;
    .param p2, "debugLevel"    # I

    .prologue
    .line 21
    const-string v0, "publisher"

    invoke-direct {p0, v0, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    .registers 5
    .param p1, "tag"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    .line 28
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/LogListener;->onLog(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 29
    :cond_c
    monitor-exit p0

    return-void

    .line 27
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "tag"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    if-eqz p3, :cond_a

    .line 34
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 36
    :cond_a
    return-void
.end method

.method public setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/mediationsdk/logger/LogListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/PublisherLogger;->mLogListener:Lcom/ironsource/mediationsdk/logger/LogListener;

    .line 41
    return-void
.end method
