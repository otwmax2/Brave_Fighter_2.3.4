###### Class com.ironsource.mediationsdk.logger.LogsSender (com.ironsource.mediationsdk.logger.LogsSender)
.class Lcom/ironsource/mediationsdk/logger/LogsSender;
.super Ljava/lang/Object;
.source "LogsSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final AUTHO_PASSWORD:Ljava/lang/String;

.field private final AUTHO_USERNAME:Ljava/lang/String;

.field private final LOG_URL:Ljava/lang/String;

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
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ironsource/mediationsdk/logger/ServerLogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ironsource/mediationsdk/logger/ServerLogEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "https://mobilelogs.supersonic.com"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/logger/LogsSender;->LOG_URL:Ljava/lang/String;

    .line 19
    const-string v0, "mobilelogs"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/logger/LogsSender;->AUTHO_USERNAME:Ljava/lang/String;

    .line 20
    const-string v0, "k@r@puz"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/logger/LogsSender;->AUTHO_PASSWORD:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/LogsSender;->mLogs:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method private getJSONToSend()Lorg/json/JSONObject;
    .registers 7

    .prologue
    .line 35
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v2, "logContent":Lorg/json/JSONObject;
    :try_start_5
    const-string v4, "general_properties"

    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 43
    .local v3, "logData":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/logger/LogsSender;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/logger/ServerLogEntry;

    .line 44
    .local v1, "log":Lcom/ironsource/mediationsdk/logger/ServerLogEntry;
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/ServerLogEntry;->toJSON()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_30} :catch_31

    goto :goto_1d

    .line 47
    .end local v1    # "log":Lcom/ironsource/mediationsdk/logger/ServerLogEntry;
    .end local v3    # "logData":Lorg/json/JSONArray;
    :catch_31
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 52
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_35
    return-object v2

    .line 46
    .restart local v3    # "logData":Lorg/json/JSONArray;
    :cond_36
    :try_start_36
    const-string v4, "log_data"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_3b} :catch_31

    goto :goto_35
.end method

.method private sendLogs(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "logContent"    # Lorg/json/JSONObject;

    .prologue
    .line 61
    const-string v0, "https://mobilelogs.supersonic.com"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobilelogs"

    const-string v3, "k@r@puz"

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/server/HttpFunctions;->getStringFromPostWithAutho(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 68
    return-void
.end method
