###### Class com.ironsource.mediationsdk.server.Server (com.ironsource.mediationsdk.server.Server)
.class public Lcom/ironsource/mediationsdk/server/Server;
.super Ljava/lang/Object;
.source "Server.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;ZI)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 12
    invoke-static {p0, p1, p2}, Lcom/ironsource/mediationsdk/server/Server;->callRequestURL(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static callAsyncRequestURL(Ljava/lang/String;ZI)V
    .registers 6
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "hit"    # Z
    .param p2, "placementId"    # I

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ironsource/mediationsdk/server/Server$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/mediationsdk/server/Server$1;-><init>(Ljava/lang/String;ZI)V

    const-string v2, "callAsyncRequestURL"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 42
    .local v0, "asyncRequestURL":Ljava/lang/Thread;
    new-instance v1, Lcom/ironsource/mediationsdk/logger/ThreadExceptionHandler;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/logger/ThreadExceptionHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    return-void
.end method

.method private static callRequestURL(Ljava/lang/String;ZI)V
    .registers 12
    .param p0, "requestUrl"    # Ljava/lang/String;
    .param p1, "hit"    # Z
    .param p2, "placementId"    # I

    .prologue
    .line 16
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ironsource/mediationsdk/server/ServerURL;->getRequestURL(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    .line 17
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lcom/ironsource/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, "json":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callRequestURL(reqUrl:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "hit:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_40} :catch_41

    .line 31
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "url":Ljava/lang/String;
    :goto_40
    return-void

    .line 21
    :catch_41
    move-exception v1

    .line 22
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "callRequestURL(reqUrl:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-nez p0, :cond_89

    .line 24
    const-string v5, "null"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :goto_50
    const-string v5, ", hit:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_40

    .line 26
    :cond_89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50
.end method

###### Class com.ironsource.mediationsdk.server.Server.AnonymousClass1 (com.ironsource.mediationsdk.server.Server$1)
.class final Lcom/ironsource/mediationsdk/server/Server$1;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/server/Server;->callAsyncRequestURL(Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hit:Z

.field final synthetic val$placementId:I

.field final synthetic val$requestUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZI)V
    .registers 4

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ironsource/mediationsdk/server/Server$1;->val$requestUrl:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/server/Server$1;->val$hit:Z

    iput p3, p0, Lcom/ironsource/mediationsdk/server/Server$1;->val$placementId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ironsource/mediationsdk/server/Server$1;->val$requestUrl:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/server/Server$1;->val$hit:Z

    iget v2, p0, Lcom/ironsource/mediationsdk/server/Server$1;->val$placementId:I

    invoke-static {v0, v1, v2}, Lcom/ironsource/mediationsdk/server/Server;->access$000(Ljava/lang/String;ZI)V

    .line 39
    return-void
.end method
