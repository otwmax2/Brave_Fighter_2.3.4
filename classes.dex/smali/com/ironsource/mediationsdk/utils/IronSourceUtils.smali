###### Class com.ironsource.mediationsdk.utils.IronSourceUtils (com.ironsource.mediationsdk.utils.IronSourceUtils)
.class public Lcom/ironsource/mediationsdk/utils/IronSourceUtils;
.super Ljava/lang/Object;
.source "IronSourceUtils.java"


# static fields
.field private static final ADAPTER_VERSION_KEY:Ljava/lang/String; = "providerAdapterVersion"

.field private static final DEFAULT_IS_EVENTS_FORMATTER_TYPE:Ljava/lang/String; = "default_is_events_formatter_type"

.field private static final DEFAULT_IS_EVENTS_URL:Ljava/lang/String; = "default_is_events_url"

.field private static final DEFAULT_IS_OPT_OUT_EVENTS:Ljava/lang/String; = "default_is_opt_out_events"

.field private static final DEFAULT_RV_EVENTS_FORMATTER_TYPE:Ljava/lang/String; = "default_rv_events_formatter_type"

.field private static final DEFAULT_RV_EVENTS_URL:Ljava/lang/String; = "default_rv_events_url"

.field private static final DEFAULT_RV_OPT_OUT_EVENTS:Ljava/lang/String; = "default_rv_opt_out_events"

.field private static final GENERAL_PROPERTIES:Ljava/lang/String; = "general_properties"

.field public static final KEY:Ljava/lang/String; = "C38FB23A402222A0C17D34A92F971D1F"

.field private static final LAST_RESPONSE:Ljava/lang/String; = "last_response"

.field private static final NETWORK_INSTANCE_KEY:Ljava/lang/String; = "networkInstance"

.field private static final PROVIDER_KEY:Ljava/lang/String; = "provider"

.field private static final PROVIDER_PRIORITY:Ljava/lang/String; = "providerPriority"

.field private static final SDK_VERSION:Ljava/lang/String; = "6.7.9.1"

.field private static final SDK_VERSION_KEY:Ljava/lang/String; = "providerSDKVersion"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "Mediation_Shared_Preferences"

.field private static final SUB_PROVIDER_ID_KEY:Ljava/lang/String; = "spId"

.field private static mAbt:Ljava/lang/String;

.field private static serr:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->serr:I

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mAbt:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAndStartWorker(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 165
    .local v0, "worker":Ljava/lang/Thread;
    new-instance v1, Lcom/ironsource/mediationsdk/logger/ThreadExceptionHandler;

    invoke-direct {v1}, Lcom/ironsource/mediationsdk/logger/ThreadExceptionHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    return-void
.end method

.method public static getAbt()Ljava/lang/String;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mAbt:Ljava/lang/String;

    return-object v0
.end method

.method public static getBase64Auth(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "loginUsername"    # Ljava/lang/String;
    .param p1, "loginPass"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "source":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 447
    const-string v1, "Mediation_Shared_Preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 448
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 120
    const-string v3, "WIFI"

    .line 121
    .local v3, "CONNECTION_WIFI":Ljava/lang/String;
    const-string v0, "MOBILE"

    .line 123
    .local v0, "CONNECTION_MOBILE":Ljava/lang/String;
    const-string v2, "wifi"

    .line 124
    .local v2, "CONNECTION_TYPE_WIFI":Ljava/lang/String;
    const-string v1, "cellular"

    .line 125
    .local v1, "CONNECTION_TYPE_CELLULAR":Ljava/lang/String;
    if-nez p0, :cond_d

    .line 126
    const-string v6, "cellular"

    .line 145
    :goto_c
    return-object v6

    .line 129
    :cond_d
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 130
    .local v4, "cm":Landroid/net/ConnectivityManager;
    if-nez v4, :cond_1a

    .line 131
    const-string v6, "cellular"

    goto :goto_c

    .line 134
    :cond_1a
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 136
    .local v5, "info":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_44

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 137
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MOBILE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 138
    const-string v6, "cellular"

    goto :goto_c

    .line 140
    :cond_35
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIFI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 141
    const-string v6, "wifi"

    goto :goto_c

    .line 145
    :cond_44
    const-string v6, "cellular"

    goto :goto_c
.end method

.method public static getCurrentTimestamp()I
    .registers 4

    .prologue
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static declared-synchronized getDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "defaultFormatterType"    # Ljava/lang/String;

    .prologue
    .line 254
    const-class v4, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;

    monitor-enter v4

    move-object v1, p2

    .line 257
    .local v1, "formatterType":Ljava/lang/String;
    :try_start_4
    const-string v3, "Mediation_Shared_Preferences"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 258
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultFormatterTypeByEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_15
    .catchall {:try_start_4 .. :try_end_12} :catchall_43

    move-result-object v1

    .line 263
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :goto_13
    monitor-exit v4

    return-object v1

    .line 259
    :catch_15
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    :try_start_16
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IronSourceUtils:getDefaultEventsFormatterType(eventType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", defaultFormatterType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_43

    goto :goto_13

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_43
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "defaultEventsURL"    # Ljava/lang/String;

    .prologue
    .line 267
    const-class v4, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;

    monitor-enter v4

    move-object v2, p2

    .line 270
    .local v2, "serverUrl":Ljava/lang/String;
    :try_start_4
    const-string v3, "Mediation_Shared_Preferences"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 271
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsUrlByEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_15
    .catchall {:try_start_4 .. :try_end_12} :catchall_43

    move-result-object v2

    .line 276
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_13
    monitor-exit v4

    return-object v2

    .line 272
    :catch_15
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    :try_start_16
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IronSourceUtils:getDefaultEventsURL(eventType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", defaultEventsURL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_16 .. :try_end_42} :catchall_43

    goto :goto_13

    .line 267
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_43
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static getDefaultEventsUrlByEventType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "eventType"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v0, "IS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 183
    const-string v0, "default_is_events_url"

    .line 187
    :goto_a
    return-object v0

    .line 184
    :cond_b
    const-string v0, "RV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 185
    const-string v0, "default_rv_events_url"

    goto :goto_a

    .line 187
    :cond_16
    const-string v0, ""

    goto :goto_a
.end method

.method private static getDefaultFormatterTypeByEventType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "eventType"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, "IS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 203
    const-string v0, "default_is_events_formatter_type"

    .line 207
    :goto_a
    return-object v0

    .line 204
    :cond_b
    const-string v0, "RV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 205
    const-string v0, "default_rv_events_formatter_type"

    goto :goto_a

    .line 207
    :cond_16
    const-string v0, ""

    goto :goto_a
.end method

.method public static declared-synchronized getDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;)[I
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 280
    const-class v8, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;

    monitor-enter v8

    const/4 v2, 0x0

    .line 283
    .local v2, "optOutEvents":[I
    :try_start_4
    const-string v7, "Mediation_Shared_Preferences"

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 284
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultOptOutEventsByEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v4, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "optOutEventsString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 286
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .local v6, "stringTokenizer":Ljava/util/StringTokenizer;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_26
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_61

    .line 290
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_3c
    .catchall {:try_start_4 .. :try_end_3b} :catchall_7a

    goto :goto_26

    .line 299
    .end local v3    # "optOutEventsString":Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "stringTokenizer":Ljava/util/StringTokenizer;
    :catch_3c
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3d
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v7

    sget-object v9, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IronSourceUtils:getDefaultOptOutEvents(eventType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_3d .. :try_end_5f} :catchall_7a

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5f
    monitor-exit v8

    return-object v2

    .line 293
    .restart local v3    # "optOutEventsString":Ljava/lang/String;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "stringTokenizer":Ljava/util/StringTokenizer;
    :cond_61
    :try_start_61
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v2, v7, [I

    .line 294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_68
    array-length v7, v2

    if-ge v1, v7, :cond_5f

    .line 295
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v1
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_77} :catch_3c
    .catchall {:try_start_61 .. :try_end_77} :catchall_7a

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 280
    .end local v1    # "i":I
    .end local v3    # "optOutEventsString":Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "stringTokenizer":Ljava/util/StringTokenizer;
    :catchall_7a
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private static getDefaultOptOutEventsByEventType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "eventType"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v0, "IS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 193
    const-string v0, "default_is_opt_out_events"

    .line 197
    :goto_a
    return-object v0

    .line 194
    :cond_b
    const-string v0, "RV"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 195
    const-string v0, "default_rv_opt_out_events"

    goto :goto_a

    .line 197
    :cond_16
    const-string v0, ""

    goto :goto_a
.end method

.method public static declared-synchronized getGeneralProperties(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    const-class v5, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;

    monitor-enter v5

    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_26

    .line 358
    .local v2, "result":Lorg/json/JSONObject;
    if-nez p0, :cond_d

    move-object v3, v2

    .line 369
    .end local v2    # "result":Lorg/json/JSONObject;
    .local v3, "result":Ljava/lang/Object;
    :goto_b
    monitor-exit v5

    return-object v3

    .line 361
    .end local v3    # "result":Ljava/lang/Object;
    .restart local v2    # "result":Lorg/json/JSONObject;
    :cond_d
    :try_start_d
    const-string v4, "Mediation_Shared_Preferences"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 362
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "general_properties"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_26

    move-result-object v0

    .line 365
    .local v0, "generalPropertiesString":Ljava/lang/String;
    :try_start_1e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_23} :catch_29
    .catchall {:try_start_1e .. :try_end_23} :catchall_26

    .end local v2    # "result":Lorg/json/JSONObject;
    .local v3, "result":Lorg/json/JSONObject;
    move-object v2, v3

    .end local v3    # "result":Lorg/json/JSONObject;
    .restart local v2    # "result":Lorg/json/JSONObject;
    :goto_24
    move-object v3, v2

    .line 369
    .local v3, "result":Ljava/lang/Object;
    goto :goto_b

    .line 356
    .end local v0    # "generalPropertiesString":Ljava/lang/String;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "result":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/lang/Object;
    :catchall_26
    move-exception v4

    monitor-exit v5

    throw v4

    .line 366
    .restart local v0    # "generalPropertiesString":Ljava/lang/String;
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    .restart local v2    # "result":Lorg/json/JSONObject;
    :catch_29
    move-exception v4

    goto :goto_24
.end method

.method static getIntFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 459
    const-string v1, "Mediation_Shared_Preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLastResponse(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    const-string v1, "Mediation_Shared_Preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 330
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "last_response"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getLongFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 471
    const-string v1, "Mediation_Shared_Preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 472
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 69
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 70
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 71
    .local v3, "messageDigest":[B
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 72
    .local v4, "number":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "hashtext":Ljava/lang/String;
    :goto_1a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ge v5, v6, :cond_46

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_36

    move-result-object v1

    goto :goto_1a

    .line 78
    .end local v1    # "hashtext":Ljava/lang/String;
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "messageDigest":[B
    .end local v4    # "number":Ljava/math/BigInteger;
    :catch_36
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Throwable;
    if-nez p0, :cond_47

    .line 80
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v7, "getMD5(input:null)"

    invoke-virtual {v5, v6, v7, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :goto_44
    const-string v1, ""

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_46
    return-object v1

    .line 82
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_47
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMD5(input:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44
.end method

.method public static getMediationAdditionalData(Z)Lorg/json/JSONObject;
    .registers 4
    .param p0, "isDemandOnlyMode"    # Z

    .prologue
    .line 415
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 418
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz p0, :cond_e

    .line 419
    :try_start_7
    const-string v1, "networkInstance"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    :cond_e
    const-string v1, "provider"

    const-string v2, "Mediation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_15} :catch_16

    .line 424
    :goto_15
    return-object v0

    .line 421
    :catch_16
    move-exception v1

    goto :goto_15
.end method

.method public static getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;
    .registers 8
    .param p0, "smash"    # Lcom/ironsource/mediationsdk/AbstractSmash;
    .param p1, "isDemandOnlyMode"    # Z

    .prologue
    .line 397
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 400
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz p1, :cond_e

    .line 401
    :try_start_7
    const-string v2, "networkInstance"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    :cond_e
    const-string v2, "spId"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getSubProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string v2, "provider"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string v2, "providerSDKVersion"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v2, "providerAdapterVersion"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v2, "providerPriority"

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getProviderPriority()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_43} :catch_44

    .line 411
    :goto_43
    return-object v0

    .line 407
    :catch_44
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IronSourceUtils:getProviderAdditionalData(adapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 154
    const-string v0, "6.7.9.1"

    return-object v0
.end method

.method private static getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 90
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 91
    .local v0, "digest":[B
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 92
    .local v3, "number":Ljava/math/BigInteger;
    const-string v4, "%064x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v4

    .line 98
    .end local v0    # "digest":[B
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "number":Ljava/math/BigInteger;
    :goto_20
    return-object v4

    .line 93
    :catch_21
    move-exception v1

    .line 94
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    if-nez p0, :cond_32

    .line 95
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v6, "getSHA256(input:null)"

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :goto_2f
    const-string v4, ""

    goto :goto_20

    .line 97
    :cond_32
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSHA256(input:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f
.end method

.method public static getSerr()I
    .registers 1

    .prologue
    .line 56
    sget v0, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->serr:I

    return v0
.end method

.method static getStringFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 435
    const-string v1, "Mediation_Shared_Preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 436
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeStamp()J
    .registers 2

    .prologue
    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTransId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "strToTransId"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 380
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 381
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-nez v0, :cond_10

    .line 382
    const/4 v2, 0x0

    .line 384
    :goto_f
    return v2

    :cond_10
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_f
.end method

.method public static mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 6
    .param p0, "mainJson"    # Lorg/json/JSONObject;
    .param p1, "secondaryJson"    # Lorg/json/JSONObject;

    .prologue
    .line 482
    if-nez p0, :cond_b

    if-nez p1, :cond_b

    .line 483
    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    .end local p1    # "secondaryJson":Lorg/json/JSONObject;
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    move-object p0, p1

    .line 499
    :cond_a
    :goto_a
    return-object p0

    .line 484
    .restart local p1    # "secondaryJson":Lorg/json/JSONObject;
    :cond_b
    if-nez p0, :cond_f

    move-object p0, p1

    .line 485
    goto :goto_a

    .line 486
    :cond_f
    if-eqz p1, :cond_a

    .line 489
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 490
    .local v1, "it":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 491
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 492
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 493
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_2e} :catch_2f

    goto :goto_15

    .line 495
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local p1    # "secondaryJson":Lorg/json/JSONObject;
    :catch_2f
    move-exception v0

    .line 496
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a
.end method

.method static saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 440
    const-string v2, "Mediation_Shared_Preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 441
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 442
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 443
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 444
    return-void
.end method

.method public static declared-synchronized saveDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "formatterType"    # Ljava/lang/String;

    .prologue
    .line 244
    const-class v4, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;

    monitor-enter v4

    :try_start_3
    const-string v3, "Mediation_Shared_Preferences"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 245
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 246
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultFormatterTypeByEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_1a
    .catchall {:try_start_3 .. :try_end_18} :catchall_48

    .line 251
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :goto_18
    monitor-exit v4

    return-void

    .line 248
    :catch_1a
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1b
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IronSourceUtils:saveDefaultEventsFormatterType(eventType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", formatterType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_1b .. :try_end_47} :catchall_48

    goto :goto_18

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_48
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized saveDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventsUrl"    # Ljava/lang/String;

    .prologue
    .line 213
    const-class v4, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;

    monitor-enter v4

    :try_start_3
    const-string v3, "Mediation_Shared_Preferences"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 214
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 215
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsUrlByEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_1a
    .catchall {:try_start_3 .. :try_end_18} :catchall_48

    .line 220
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :goto_18
    monitor-exit v4

    return-void

    .line 217
    :catch_1a
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1b
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IronSourceUtils:saveDefaultEventsURL(eventType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", eventsUrl:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_1b .. :try_end_47} :catchall_48

    goto :goto_18

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_48
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized saveDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;[I)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "optOutEvents"    # [I

    .prologue
    .line 224
    const-class v7, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;

    monitor-enter v7

    :try_start_3
    const-string v6, "Mediation_Shared_Preferences"

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 225
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 227
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .line 228
    .local v3, "optOutEventsString":Ljava/lang/String;
    if-eqz p2, :cond_2c

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v5, "str":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v6, p2

    if-ge v2, v6, :cond_28

    .line 231
    aget v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 233
    :cond_28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    .end local v2    # "i":I
    .end local v5    # "str":Ljava/lang/StringBuilder;
    :cond_2c
    invoke-static {p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultOptOutEventsByEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_36} :catch_38
    .catchall {:try_start_3 .. :try_end_36} :catchall_66

    .line 240
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "optOutEventsString":Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :goto_36
    monitor-exit v7

    return-void

    .line 237
    :catch_38
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    :try_start_39
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v6

    sget-object v8, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IronSourceUtils:saveDefaultOptOutEvents(eventType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", optOutEvents:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_65
    .catchall {:try_start_39 .. :try_end_65} :catchall_66

    goto :goto_36

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_66
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method static declared-synchronized saveGeneralProperties(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "properties"    # Lorg/json/JSONObject;

    .prologue
    .line 340
    const-class v3, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;

    monitor-enter v3

    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    .line 347
    :cond_7
    :goto_7
    monitor-exit v3

    return-void

    .line 343
    :cond_9
    :try_start_9
    const-string v2, "Mediation_Shared_Preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "general_properties"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_21

    goto :goto_7

    .line 340
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static saveIntToSharedPrefs(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 452
    const-string v2, "Mediation_Shared_Preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 453
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 454
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 455
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 456
    return-void
.end method

.method public static declared-synchronized saveLastResponse(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 314
    const-class v3, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;

    monitor-enter v3

    :try_start_3
    const-string v2, "Mediation_Shared_Preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 315
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 316
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_response"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 319
    monitor-exit v3

    return-void

    .line 314
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static saveLongToSharedPrefs(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 464
    const-string v2, "Mediation_Shared_Preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 465
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 466
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    return-void
.end method

.method static saveStringToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 428
    const-string v2, "Mediation_Shared_Preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 429
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 431
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 432
    return-void
.end method

.method static setABT(Ljava/lang/String;)V
    .registers 1
    .param p0, "abt"    # Ljava/lang/String;

    .prologue
    .line 60
    sput-object p0, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mAbt:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private static setSerr(I)V
    .registers 1
    .param p0, "value"    # I

    .prologue
    .line 52
    sput p0, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->serr:I

    .line 53
    return-void
.end method
