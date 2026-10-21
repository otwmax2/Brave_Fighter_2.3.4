###### Class com.facebook.appevents.AppEventQueue (com.facebook.appevents.AppEventQueue)
.class Lcom/facebook/appevents/AppEventQueue;
.super Ljava/lang/Object;
.source "AppEventQueue.java"


# static fields
.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0xf

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static volatile appEventCollection:Lcom/facebook/appevents/AppEventCollection;

.field private static final flushRunnable:Ljava/lang/Runnable;

.field private static scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private static final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/facebook/appevents/AppEventQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/facebook/appevents/AppEventCollection;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventCollection;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    new-instance v0, Lcom/facebook/appevents/AppEventQueue$1;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventQueue$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ScheduledFuture;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .registers 1
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 50
    sput-object p0, Lcom/facebook/appevents/AppEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$100()Lcom/facebook/appevents/AppEventCollection;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/AppEventCollection;
    .registers 1
    .param p0, "x0"    # Lcom/facebook/appevents/AppEventCollection;

    .prologue
    .line 50
    sput-object p0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->flushRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .registers 5
    .param p0, "x0"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "x1"    # Lcom/facebook/GraphRequest;
    .param p2, "x2"    # Lcom/facebook/GraphResponse;
    .param p3, "x3"    # Lcom/facebook/appevents/SessionEventsState;
    .param p4, "x4"    # Lcom/facebook/appevents/FlushStatistics;

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEventQueue;->handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    return-void
.end method

.method public static add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .registers 4
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvent"    # Lcom/facebook/appevents/AppEvent;

    .prologue
    .line 97
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/appevents/AppEventQueue$4;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method private static buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;
    .registers 14
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;
    .param p2, "limitEventUsage"    # Z
    .param p3, "flushState"    # Lcom/facebook/appevents/FlushStatistics;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "applicationId":Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 201
    .local v1, "fetchedAppSettings":Lcom/facebook/internal/FetchedAppSettings;
    const-string v7, "%s/activities"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v9

    .line 203
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 201
    invoke-static {v6, v7, v6, v6}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 207
    .local v3, "postRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v5

    .line 208
    .local v5, "requestParameters":Landroid/os/Bundle;
    if-nez v5, :cond_24

    .line 209
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 211
    .restart local v5    # "requestParameters":Landroid/os/Bundle;
    :cond_24
    const-string v7, "access_token"

    invoke-virtual {p0}, Lcom/facebook/appevents/AccessTokenAppIdPair;->getAccessTokenString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getPushNotificationsRegistrationId()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "pushNotificationsRegistrationId":Ljava/lang/String;
    if-eqz v4, :cond_38

    .line 215
    const-string v7, "device_token"

    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_38
    invoke-virtual {v3, v5}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 220
    if-nez v1, :cond_3f

    move-object v3, v6

    .line 248
    .end local v3    # "postRequest":Lcom/facebook/GraphRequest;
    :goto_3e
    return-object v3

    .line 226
    .restart local v3    # "postRequest":Lcom/facebook/GraphRequest;
    :cond_3f
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 227
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v8

    .line 224
    invoke-virtual {p1, v3, v7, v8, p2}, Lcom/facebook/appevents/SessionEventsState;->populateRequest(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I

    move-result v2

    .line 230
    .local v2, "numEvents":I
    if-nez v2, :cond_4f

    move-object v3, v6

    .line 231
    goto :goto_3e

    .line 234
    :cond_4f
    iget v6, p3, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    add-int/2addr v6, v2

    iput v6, p3, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    .line 236
    new-instance v6, Lcom/facebook/appevents/AppEventQueue$5;

    invoke-direct {v6, p0, v3, p1, p3}, Lcom/facebook/appevents/AppEventQueue$5;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    invoke-virtual {v3, v6}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    goto :goto_3e
.end method

.method public static flush(Lcom/facebook/appevents/FlushReason;)V
    .registers 3
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;

    .prologue
    .line 86
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$3;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventQueue$3;-><init>(Lcom/facebook/appevents/FlushReason;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method static flushAndWait(Lcom/facebook/appevents/FlushReason;)V
    .registers 8
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;

    .prologue
    .line 127
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v4

    .line 129
    .local v4, "result":Lcom/facebook/appevents/PersistedEvents;
    sget-object v5, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v5, v4}, Lcom/facebook/appevents/AppEventCollection;->addPersistedEvents(Lcom/facebook/appevents/PersistedEvents;)V

    .line 134
    :try_start_9
    sget-object v5, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-static {p0, v5}, Lcom/facebook/appevents/AppEventQueue;->sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_32

    move-result-object v2

    .line 142
    .local v2, "flushResults":Lcom/facebook/appevents/FlushStatistics;
    if-eqz v2, :cond_31

    .line 143
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v6, v2, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v5, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v6, v2, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 150
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 153
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "flushResults":Lcom/facebook/appevents/FlushStatistics;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_31
    :goto_31
    return-void

    .line 137
    :catch_32
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string v6, "Caught unexpected exception while flushing app events: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method public static getKeySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/appevents/AccessTokenAppIdPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->appEventCollection:Lcom/facebook/appevents/AppEventCollection;

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .registers 20
    .param p0, "accessTokenAppId"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .param p2, "response"    # Lcom/facebook/GraphResponse;
    .param p3, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;
    .param p4, "flushState"    # Lcom/facebook/appevents/FlushStatistics;

    .prologue
    .line 257
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 258
    .local v2, "error":Lcom/facebook/FacebookRequestError;
    const-string v8, "Success"

    .line 260
    .local v8, "resultDescription":Ljava/lang/String;
    sget-object v5, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    .line 262
    .local v5, "flushResult":Lcom/facebook/appevents/FlushResult;
    if-eqz v2, :cond_16

    .line 263
    const/4 v1, -0x1

    .line 264
    .local v1, "NO_CONNECTIVITY_ERROR_CODE":I
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_76

    .line 265
    const-string v8, "Failed: No Connectivity"

    .line 266
    sget-object v5, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    .line 275
    .end local v1    # "NO_CONNECTIVITY_ERROR_CODE":I
    :cond_16
    :goto_16
    sget-object v9, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {v9}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 280
    .local v3, "eventsJsonString":Ljava/lang/String;
    :try_start_24
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 281
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_2d} :catch_90

    move-result-object v7

    .line 286
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .local v7, "prettyPrintedEvents":Ljava/lang/String;
    :goto_2e
    sget-object v9, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v10, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string v11, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphRequest;->getGraphObject()Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    const/4 v13, 0x2

    aput-object v7, v12, v13

    .line 286
    invoke-static {v9, v10, v11, v12}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    .end local v3    # "eventsJsonString":Ljava/lang/String;
    .end local v7    # "prettyPrintedEvents":Ljava/lang/String;
    :cond_4b
    if-eqz v2, :cond_94

    const/4 v9, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/facebook/appevents/SessionEventsState;->clearInFlightAndStats(Z)V

    .line 295
    sget-object v9, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-ne v5, v9, :cond_65

    .line 301
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    new-instance v10, Lcom/facebook/appevents/AppEventQueue$6;

    move-object/from16 v0, p3

    invoke-direct {v10, p0, v0}, Lcom/facebook/appevents/AppEventQueue$6;-><init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 309
    :cond_65
    sget-object v9, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    if-eq v5, v9, :cond_75

    .line 311
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    sget-object v10, Lcom/facebook/appevents/FlushResult;->NO_CONNECTIVITY:Lcom/facebook/appevents/FlushResult;

    if-eq v9, v10, :cond_75

    .line 312
    move-object/from16 v0, p4

    iput-object v5, v0, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    .line 315
    :cond_75
    return-void

    .line 268
    .restart local v1    # "NO_CONNECTIVITY_ERROR_CODE":I
    :cond_76
    const-string v9, "Failed:\n  Response: %s\n  Error %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 269
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 270
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 268
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 271
    sget-object v5, Lcom/facebook/appevents/FlushResult;->SERVER_ERROR:Lcom/facebook/appevents/FlushResult;

    goto :goto_16

    .line 282
    .end local v1    # "NO_CONNECTIVITY_ERROR_CODE":I
    .restart local v3    # "eventsJsonString":Ljava/lang/String;
    :catch_90
    move-exception v4

    .line 283
    .local v4, "exc":Lorg/json/JSONException;
    const-string v7, "<Can\'t encode events for debug logging>"

    .restart local v7    # "prettyPrintedEvents":Ljava/lang/String;
    goto :goto_2e

    .line 293
    .end local v3    # "eventsJsonString":Ljava/lang/String;
    .end local v4    # "exc":Lorg/json/JSONException;
    .end local v7    # "prettyPrintedEvents":Ljava/lang/String;
    :cond_94
    const/4 v9, 0x0

    goto :goto_4e
.end method

.method public static persistToDisk()V
    .registers 2

    .prologue
    .line 75
    sget-object v0, Lcom/facebook/appevents/AppEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/AppEventQueue$2;

    invoke-direct {v1}, Lcom/facebook/appevents/AppEventQueue$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method private static sendEventsToServer(Lcom/facebook/appevents/FlushReason;Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/FlushStatistics;
    .registers 14
    .param p0, "reason"    # Lcom/facebook/appevents/FlushReason;
    .param p1, "appEventCollection"    # Lcom/facebook/appevents/AppEventCollection;

    .prologue
    .line 158
    new-instance v2, Lcom/facebook/appevents/FlushStatistics;

    invoke-direct {v2}, Lcom/facebook/appevents/FlushStatistics;-><init>()V

    .line 160
    .local v2, "flushResults":Lcom/facebook/appevents/FlushStatistics;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 161
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v3

    .line 163
    .local v3, "limitEventUsage":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v5, "requestsToExecute":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/GraphRequest;>;"
    invoke-virtual {p1}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 167
    .local v0, "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    invoke-virtual {p1, v0}, Lcom/facebook/appevents/AppEventCollection;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v7

    .line 165
    invoke-static {v0, v7, v3, v2}, Lcom/facebook/appevents/AppEventQueue;->buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;

    move-result-object v4

    .line 170
    .local v4, "request":Lcom/facebook/GraphRequest;
    if-eqz v4, :cond_1a

    .line 171
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 175
    .end local v0    # "accessTokenAppId":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v4    # "request":Lcom/facebook/GraphRequest;
    :cond_34
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6a

    .line 176
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v7, Lcom/facebook/appevents/AppEventQueue;->TAG:Ljava/lang/String;

    const-string v8, "Flushing %d events due to %s."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v2, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    .line 177
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 178
    invoke-virtual {p0}, Lcom/facebook/appevents/FlushReason;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 176
    invoke-static {v6, v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/GraphRequest;

    .line 183
    .restart local v4    # "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v4}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    goto :goto_5a

    .line 188
    .end local v4    # "request":Lcom/facebook/GraphRequest;
    :cond_6a
    const/4 v2, 0x0

    .end local v2    # "flushResults":Lcom/facebook/appevents/FlushStatistics;
    :cond_6b
    return-object v2
.end method

###### Class com.facebook.appevents.AppEventQueue.AnonymousClass1 (com.facebook.appevents.AppEventQueue$1)
.class final Lcom/facebook/appevents/AppEventQueue$1;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->access$002(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 67
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_11

    .line 69
    sget-object v0, Lcom/facebook/appevents/FlushReason;->TIMER:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->flushAndWait(Lcom/facebook/appevents/FlushReason;)V

    .line 71
    :cond_11
    return-void
.end method

###### Class com.facebook.appevents.AppEventQueue.AnonymousClass2 (com.facebook.appevents.AppEventQueue$2)
.class final Lcom/facebook/appevents/AppEventQueue$2;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventQueue;->persistToDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 78
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$100()Lcom/facebook/appevents/AppEventCollection;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventStore;->persistEvents(Lcom/facebook/appevents/AppEventCollection;)V

    .line 79
    new-instance v0, Lcom/facebook/appevents/AppEventCollection;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventCollection;-><init>()V

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->access$102(Lcom/facebook/appevents/AppEventCollection;)Lcom/facebook/appevents/AppEventCollection;

    .line 80
    return-void
.end method

###### Class com.facebook.appevents.AppEventQueue.AnonymousClass3 (com.facebook.appevents.AppEventQueue$3)
.class final Lcom/facebook/appevents/AppEventQueue$3;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventQueue;->flush(Lcom/facebook/appevents/FlushReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$reason:Lcom/facebook/appevents/FlushReason;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/FlushReason;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$3;->val$reason:Lcom/facebook/appevents/FlushReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/appevents/AppEventQueue$3;->val$reason:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->flushAndWait(Lcom/facebook/appevents/FlushReason;)V

    .line 90
    return-void
.end method

###### Class com.facebook.appevents.AppEventQueue.AnonymousClass4 (com.facebook.appevents.AppEventQueue$4)
.class final Lcom/facebook/appevents/AppEventQueue$4;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventQueue;->add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field final synthetic val$appEvent:Lcom/facebook/appevents/AppEvent;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .registers 3

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$appEvent:Lcom/facebook/appevents/AppEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 100
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$100()Lcom/facebook/appevents/AppEventCollection;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$appEvent:Lcom/facebook/appevents/AppEvent;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/appevents/AppEventCollection;->addEvent(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    .line 102
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_25

    .line 104
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$100()Lcom/facebook/appevents/AppEventCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEventCollection;->getEventCount()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_25

    .line 106
    sget-object v0, Lcom/facebook/appevents/FlushReason;->EVENT_THRESHOLD:Lcom/facebook/appevents/FlushReason;

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->flushAndWait(Lcom/facebook/appevents/FlushReason;)V

    .line 114
    :cond_24
    :goto_24
    return-void

    .line 107
    :cond_25
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$000()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-nez v0, :cond_24

    .line 108
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$300()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$200()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 108
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventQueue;->access$002(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_24
.end method

###### Class com.facebook.appevents.AppEventQueue.AnonymousClass5 (com.facebook.appevents.AppEventQueue$5)
.class final Lcom/facebook/appevents/AppEventQueue$5;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventQueue;->buildRequestForSession(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;ZLcom/facebook/appevents/FlushStatistics;)Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field final synthetic val$appEvents:Lcom/facebook/appevents/SessionEventsState;

.field final synthetic val$flushState:Lcom/facebook/appevents/FlushStatistics;

.field final synthetic val$postRequest:Lcom/facebook/GraphRequest;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
    .registers 5

    .prologue
    .line 236
    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$postRequest:Lcom/facebook/GraphRequest;

    iput-object p3, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$appEvents:Lcom/facebook/appevents/SessionEventsState;

    iput-object p4, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$flushState:Lcom/facebook/appevents/FlushStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 6
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$postRequest:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$appEvents:Lcom/facebook/appevents/SessionEventsState;

    iget-object v3, p0, Lcom/facebook/appevents/AppEventQueue$5;->val$flushState:Lcom/facebook/appevents/FlushStatistics;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/appevents/AppEventQueue;->access$400(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V

    .line 245
    return-void
.end method

###### Class com.facebook.appevents.AppEventQueue.AnonymousClass6 (com.facebook.appevents.AppEventQueue$6)
.class final Lcom/facebook/appevents/AppEventQueue$6;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventQueue;->handleResponse(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/GraphRequest;Lcom/facebook/GraphResponse;Lcom/facebook/appevents/SessionEventsState;Lcom/facebook/appevents/FlushStatistics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field final synthetic val$appEvents:Lcom/facebook/appevents/SessionEventsState;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V
    .registers 3

    .prologue
    .line 301
    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$6;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventQueue$6;->val$appEvents:Lcom/facebook/appevents/SessionEventsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/facebook/appevents/AppEventQueue$6;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v1, p0, Lcom/facebook/appevents/AppEventQueue$6;->val$appEvents:Lcom/facebook/appevents/SessionEventsState;

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventStore;->persistEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V

    .line 305
    return-void
.end method
